# Splitter

## Splitter overview

An event `Splitter` is part of the TriggerMesh routing solution. It has the simple purpose of splitting JSON arrays into multiple [CloudEvents](https://cloudevents.io/) for further processing.

!!! tip
    You can verify that the API is available with the following command:

    ```console
    $ kubectl get crd splitters.routing.triggermesh.io
    NAME                               CREATED AT
    splitters.routing.triggermesh.io   2021-10-06T09:01:38Z
    ```

    You can also explore the API specification with:
    ```console
    $ kubectl explain splitter
    ```

## Splitter tutorial on Kubernetes

![](../../assets/images/splitter.png)

Let's create the required objects:

- [x] A `Broker` that will decouple the event producer and consumer and provide delivery guarantees, and its `Trigger` that will send events to the Splitter
- [x] A `WebhookSource` which we'll use to produce an event with a JSON array in its payload.
- [x] A `Splitter` to generate multiple events from the JSON payload.
- [x] An `event display` target to display events as logs.

!!! Info "Kubernetes manifest"
    The next steps create the configuration that demonstrates the usage of the Filter.
    A single manifest containing all the objects can be downloaded [here](../../assets/yamlexamples/splitter.yaml).

### Step 1: Create the Broker

Create a new Broker with following configuration:

```yaml
apiVersion: eventing.triggermesh.io/v1alpha1
kind: MemoryBroker
metadata:
  name: demo
```

### Step 2: Create the WebhookSource

Create a [WebhookSource](../../sources/webhook.md) object with the following configuration:

```yaml
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
      name: demo
```

### Step 3: Create the `event-display` Service

Create a Service named `event-display` with the following configuration:

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
```

### Step 4: Create the `demo-to-splitter` Trigger

Create a Trigger to route events to the `splitter` with the following configuration:

```yaml
apiVersion: eventing.triggermesh.io/v1alpha1
kind: Trigger
metadata:
  name: demo-to-splitter
spec:
  broker:
    group: eventing.triggermesh.io
    kind: MemoryBroker
    name: demo
  target:
    ref:
      apiVersion: routing.triggermesh.io/v1alpha1
      kind: Splitter
      name: splitter-demo
```

### Step 5: Create the Splitter

Finally, create the `Splitter` that will produce two events from every single CloudEvent received from the WebhookSource by saving the following YAML manifest and applying it to your Kubernetes cluster.

```yaml
apiVersion: routing.triggermesh.io/v1alpha1
kind: Splitter
metadata:
  name: splitter-demo
spec:
  path: items
  ceContext:
    type: foo.bar.type
    source: splitter
  sink:
    ref:
      apiVersion: v1
      kind: Service
      name: event-display
```

Note that you define the path where you are going to find a list in the incoming event and you define the CloudEvent attributes of the generated events (i.e _splitter_ as the source and _foo.bar.type_ as the type).

### Send data to the wehbook source

Verify that your splitter is ready with `kubectl` like so:

```console
$ kubectl get splitter
NAME            ADDRESS                                                                     READY   REASON
splitter-demo   http://splitter-adapter.splitter.svc.cluster.local/splitter/splitter-demo   True    
```

Retrieve the URL where the Webhook is listening for incoming requests.

```console
$ kubectl get webhooksources.sources.triggermesh.io webhook
NAME      READY   REASON   URL                                                        SINK                                               AGE
webhook   True             http://webhooksource-webhook.splitter.127.0.0.1.sslip.io   http://demo-mb-broker.splitter.svc.cluster.local   37s
```

Use `curl` or any HTTP capable client to post an event to the webhook.

We'll post a JSON payload that contains are array, like so:

```json
{
    "message":"hello",
    "items":[
        {
            "id":5,
            "name":"foo"
        },{
            "id":10,
            "name":"bar"
        }
    ]
}
```

```console
curl -d '{"message":"hello", "items":[{"id":5, "name":"foo"},{"id":10,"name":"bar"}]}' http://webhooksource-webhook.splitter.127.0.0.1.sslip.io
```

The broker should then deliver the event to the `splitter`, which will pass it to the `event-display` as multiple CloudEvents.

```console
$ kubectl logs deployments/event-display
☁️  cloudevents.Event
Context Attributes,
  specversion: 1.0
  type: foo.bar.type
  source: splitter
  id: 0b43446a-409e-4297-ab65-b633591dbeb6-0
  datacontenttype: application/json
Data,
  {
    "id": 5,
    "name": "foo"
  }
☁️  cloudevents.Event
Context Attributes,
  specversion: 1.0
  type: foo.bar.type
  source: splitter
  id: 0b43446a-409e-4297-ab65-b633591dbeb6-1
  datacontenttype: application/json
Data,
  {
    "id": 10,
    "name": "bar"
  }
```

!!! tip "Play with your Splitter as Code"
    You can play around by modifying the `Splitter` object and re-applying it with `kubectl`. This gives you a declarative event splitter which you can manage with your [GitOps workflow](https://www.weave.works/technologies/gitops/)