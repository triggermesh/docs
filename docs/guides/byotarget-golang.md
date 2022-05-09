# Writing an Event Target using Golang

This tutorial provides instructions to build a Target in Golang, implement it as a Knative Service, and then utilize it within a Triggermesh Bridge.

## Creating a Target

Triggermesh exposes a repo [poc-adapters](https://github.com/triggermesh/poc-adapters) that makes it easy to bootstrap a new Golang Target. This repo contains POC Adapters that are still a WIP/under development. This repo makes it easy to focus on only the Adapter code without the added compliexity of the rest of the Triggermesh project. We will be using this repo as the starting point for our tutorial.


1. Clone the poc-adapter repo in your $GOPATH and cd into it:

```sh
cd $GOPATH
cd go/src/github.com
git clone https://github.com/triggermesh/poc-adapters.git
cd poc-adapters
```

1. Use the `adaptergen` command to scaffold out the new project:

```sh
cd hack/adaptergen
go run main.go --kind DemoTarget
```

This will create the following files:

```
demotarget/cmd/main.go # The launching point of our adapter
demotarget/config/100-registration.yaml # The Koby registration file.
demotarget/config/101-instance.yaml # The Koby instance file.
demotarget/Dockerfile # The Dockerfile for our adapter.
demotarget/pkg/adapter.go # The home for our core adapter code.
```

1. Navigate to the `demotarget/pkg/adapter/` directory and view the contents of the `adapter.go` file:

If we look here we can see that we have some basic boilerplate code to get our adapter up and running, at the moment all the adapter is doing is recieving a cloudevnet and logging it to the console. Let us review the adapter code as is.

```go
package demotarget

import (
	"context"

	cloudevents "github.com/cloudevents/sdk-go/v2"
	"go.uber.org/zap"
	pkgadapter "knative.dev/eventing/pkg/adapter/v2"
	"knative.dev/pkg/logging"

	targetce "github.com/triggermesh/triggermesh/pkg/targets/adapter/cloudevents"
)

// EnvAccessorCtor for configuration parameters
func EnvAccessorCtor() pkgadapter.EnvConfigAccessor {
	return &envAccessor{}
}

type envAccessor struct {
	pkgadapter.EnvConfig
	// BridgeIdentifier is the name of the bridge workflow this target is part of
	BridgeIdentifier string `envconfig:"EVENTS_BRIDGE_IDENTIFIER"`
	// CloudEvents responses parametrization
	CloudEventPayloadPolicy string `envconfig:"EVENTS_PAYLOAD_POLICY" default:"error"`
	// Sink defines the target sink for the events. If no Sink is defined the
	// events are replied back to the sender.
	Sink string `envconfig:"K_SINK"`
}

// NewAdapter adapter implementation
func NewAdapter(ctx context.Context, envAcc pkgadapter.EnvConfigAccessor, ceClient cloudevents.Client) pkgadapter.Adapter {
	env := envAcc.(*envAccessor)
	logger := logging.FromContext(ctx)

	replier, err := targetce.New(env.Component, logger.Named("replier"),
		targetce.ReplierWithStatefulHeaders(env.BridgeIdentifier),
		targetce.ReplierWithStaticResponseType("io.triggermesh.demotarget.error"),
		targetce.ReplierWithPayloadPolicy(targetce.PayloadPolicy(env.CloudEventPayloadPolicy)))
	if err != nil {
		logger.Panicf("Error creating CloudEvents replier: %v", err)
	}

	return &demotargetadapter{
		sink:     env.Sink,
		replier:  replier,
		ceClient: ceClient,
		logger:   logger,
	}
}

var _ pkgadapter.Adapter = (*demotargetadapter)(nil)

type demotargetadapter struct {
	sink     string
	replier  *targetce.Replier
	ceClient cloudevents.Client
	logger   *zap.SugaredLogger
}

// Start is a blocking function and will return if an error occurs
// or the context is cancelled.
func (a *demotargetadapter) Start(ctx context.Context) error {
	a.logger.Info("Starting DEMOTARGET Adapter")
	return a.ceClient.StartReceiver(ctx, a.dispatch)
}

func (a *demotargetadapter) dispatch(ctx context.Context, event cloudevents.Event) (*cloudevents.Event, cloudevents.Result) {
	a.logger.Infof("Received event: %v", event)

	// add logic here to handle the event.

	return &event, cloudevents.ResultACK
}
```

We can see that we have some basic boilerplate code to get our adapter up and running, at the moment all the adapter is doing is recieving a cloudevent and logging it to the console.


1. Navigate to the `poc-adapters/demotarget/cmd` directory and confirm that the new adapter builds:

```sh
cd demotarget/cmd
go mod tidy
go run .
```

1. Send it an event and verify the expected results:

```sh
curl -v "http://localhost:8080" \
       -X POST \
       -H "Ce-Id: 536808d3-88be-4077-9d7a-a3f162705f79" \
       -H "Ce-Specversion: 1.0" \
       -H "Ce-Type: io.demo.email.send" \
       -H "Ce-Source: dev.knative.samples/demo" \
       -H "Content-Type: application/json" \
       -d '{"fromName":"richard","toName":"bob","message":"hello"}'
* upload completely sent off: 55 out of 55 bytes
< HTTP/1.1 200 OK
< Ce-Id: 70eb24d9-3678-4c08-9332-315cbae7fe1e
< Ce-Processedid: 536808d3-88be-4077-9d7a-a3f162705f79
< Ce-Processedsource: dev.knative.samples/demo
< Ce-Processedtype: io.demo.email.send
< Ce-Source: io.demo.targets.go-sample
< Ce-Specversion: 1.0
< Ce-Time: 2021-09-08T19:40:37.1619Z
< Ce-Type: com.example.target.ack
< Content-Length: 98
< Content-Type: application/json
< Date: Wed, 08 Sep 2021 19:40:37 GMT
<
* Connection #0 to host localhost left intact
{"fromName":"richard","toName":"bob","message":"hello"}%
```

1. Modify the adapter to your logic:

Now the fun part! In just a few steps we have all the biolerplate done and we can start writing our own logic under the `dispatch` function to handle the recieved event as we wish.

1. When you are ready to deploy, build and publish the container image:

Docker:

```sh
docker build -t <user-name>/<image-name> .
docker push <user-name>/<image-name>
```

Gcloud:

```sh
gcloud builds submit --tag <user-name>/<image-name> .
```

1. Create a manifest.yaml file:

```yaml
apiVersion: serving.knative.dev/v1
kind: Service
metadata:
 name: demo-service
spec:
 template:
  spec:
   containers:
    - image: <image-name>
```

1. Apply this manifest:

```sh
kubectl apply -f manifest.yaml
```

1. Verify that the service is running:

```sh
kubectl get ksvc
NAME          URL                                            LATESTCREATED         LATESTREADY            READY   REASON
demo-service  http://demo-service.dmo.10.64.140.43.xip.io    demo-service-00001     demo-service-00001     True
```

1. Send it a Cloudevent to trigger the service and verify the expected results:

```sh
curl -v "http://demo-service.dmo.10.64.140.43.xip.io " \
       -X POST \
       -H "Ce-Id: 536808d3-88be-4077-9d7a-a3f162705f79" \
       -H "Ce-Specversion: 1.0" \
       -H "Ce-Type: io.demo.test.event" \
       -H "Ce-Source: dev.knative.samples/demo" \
       -H "Content-Type: application/json" \
       -d '{"test":"data"}'
* upload completely sent off: 15 out of 15 bytes
< HTTP/1.1 200 OK
< Ce-Id: 0086d811-c609-4619-beb3-66965f9a1e64
< Ce-Processedid: 536808d3-88be-4077-9d7a-a3f162705f79
< Ce-Processedsource: dev.knative.samples/demo
< Ce-Processedtype: io.demo.test.event
< Ce-Source: io.demo.targets.go-sample
< Ce-Specversion: 1.0
< Ce-Time: 2021-09-08T19:00:16.291182Z
< Ce-Type: com.example.target.ack
< Content-Length: 86
< Content-Type: application/json
< Date: Wed, 08 Sep 2021 19:00:16 GMT
<
* Connection #0 to host localhost left intact
{"code":0,"detail":{"message":"event processed successfully","processing_time_ms":32}}* Closing connection 0
```


## (EXTRA) Processing an event containing a structured payload

The following steps illustrate processing an event containing a structured payload, and how to recieve the payload in the adapter.

Consider this example Cloudevent for the purpose of this demo:

```sh
curl -v "https://localhost:8080" \
       -X POST \
       -H "Ce-Id: 536808d3-88be-4077-9d7a-a3f162705f79" \
       -H "Ce-Specversion: 1.0" \
       -H "Ce-Type: io.demo.email.send" \
       -H "Ce-Source: dev.knative.samples/demo" \
       -H "Content-Type: application/json" \
       -d '{"fromName":"richard","toName":"bob","message":"hello"}'
```

1. Update the `/poc-adapters/demotarget/pkg/adapter/adapter.go` file to include this struct. The `EventData` struct
will be used to unmarshal the Cloudevent payload specified in the Cloudevent above.

```go
type EventData struct {
	Fromname string `json:"fromName"`
	Toname   string `json:"toName"`
	Message  string `json:"message"`
}
```

1. Update the `dispatch()` function found in the `adapter.go` file.

```go
func (a *demotargetadapter) dispatch(ctx context.Context, event cloudevents.Event) (*cloudevents.Event, cloudevents.Result) {
a.logger.Infof("Received event: %v", event)
ed := &EventData{}
	// Unmarshal the event data into our struct.
	if err := e.DataAs(ed); err != nil {
		return nil, err
	}
	// Do something with the event data.
	log.Printf("Received event with message of : %+v\n", ed.Message)
	newMessage := "Hello " + ed.Fromname + "! Thank you for the message!"
return &event, cloudevents.ResultACK
}
```

1. Run the adapter and test the results:

```sh
cd demotarget/cmd
go mod tidy
go run .
```

1. Send it a Cloudevent to trigger the service and verify the expected results:

```sh
curl -v "https://localhost:8080" \
       -X POST \
       -H "Ce-Id: 536808d3-88be-4077-9d7a-a3f162705f79" \
       -H "Ce-Specversion: 1.0" \
       -H "Ce-Type: io.demo.email.send" \
       -H "Ce-Source: dev.knative.samples/demo" \
       -H "Content-Type: application/json" \
       -d '{"fromName":"richard","toName":"bob","message":"hello"}'
```
