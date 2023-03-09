# Creating a Wiretap

In this guide we will create a Wiretap to monitor the CloudEvent traffic happening within our bridge.

## What is a Wiretap?

A Wiretap is a powerful debugging tool/methodology that can be used to understand the flow of events through the system by subscribing to all of the events that pass through the associated `Broker`. This is accomplished by the use of a `Trigger` to route all of the events into a logging service.

## Implementing a Wiretap

### Creating an Example Bridge

Lets create a configuration that demonstrates the idea of a wiretap. The full manifest is available [here](../assets/yamlexamples/simple-bridge.yaml) in case you want to directly apply the whole configuration to your cluster. 

To start, we need to create a `WebhookSource` that will receive events over HTTP, and a `Broker` that will ingest those events:

```yaml
apiVersion: eventing.triggermesh.io/v1alpha1
kind: MemoryBroker
metadata:
  name: events
---

apiVersion: sources.triggermesh.io/v1alpha1
kind: WebhookSource
metadata:
  name: webhook
spec:
  eventType: webhook.event
  sink:
    ref:
      apiVersion: eventing.triggermesh.io/v1alpha1
      kind: MemoryBroker
      name: events
```

### Implement a Wiretap

To add a Wiretap, we can create a `Service` and a `Trigger`. The `Service` we will be using is called Event Display, which is a simple service that logs the events it receives.

We'll create a Trigger that routes all events passing through the broker to the Event Display service:

```yaml

apiVersion: apps/v1
kind: Deployment
metadata:
  name: event-display
spec:
  replicas: 1
  selector:
    matchLabels: &labels
      app: event-display
  template:
    metadata:
      labels: *labels
    spec:
      containers:
        - name: event-display
          image: gcr.io/knative-releases/knative.dev/eventing/cmd/event_display

---

kind: Service
apiVersion: v1
metadata:
  name: event-display
spec:
  selector:
    app: event-display
  ports:
  - protocol: TCP
    port: 80
    targetPort: 8080

---

apiVersion: eventing.triggermesh.io/v1alpha1
kind: Trigger
metadata:
  name: event-display
spec:
  broker:
    group: eventing.triggermesh.io
    kind: MemoryBroker
    name: events
  target:
    ref:
      apiVersion: v1
      kind: Service
      name: event-display

```

### Using the Wiretap

Now that we have all the parts in place, we can utilize our `Wiretap` to monitor the events that are being sent through our broker from the `WebhookSource`.

Retrieve the URL where the Webhook is listening for incoming requests.

```console
$kubectl get webhooksources.sources.triggermesh.io webhook
NAME      READY   REASON   URL                                                              SINK                                                     AGE
webhook   True             http://webhooksource-webhook.deadlettersink.127.0.0.1.sslip.io   http://demo-mb-broker.deadlettersink.svc.cluster.local   4m14s
```

Use `curl` or any HTTP capable client to post an event to the webhook.

```console
curl -d '{"message":"test my bridge"}' http://webhooksource-webhook.deadlettersink.127.0.0.1.sslip.io
```

View the logs of the `Event Display` service:

`kubectl logs deployments/event-display`
