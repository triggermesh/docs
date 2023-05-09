# Filters

Filters are an important part of TriggerMesh's event routing mechanism. They allow for filtering events based on the content of the payload. This content-based event filtering is expressed with Google's
[Common Expression Language](https://opensource.google/projects/cel) within the TriggerMesh `Filter` API specification.

## Tutorial for Filters on Kubernetes

!!! Tip
    You can verify that the API is available with the following command:

    ```console
    $ kubectl get crd filters.routing.triggermesh.io
    NAME                             CREATED AT
    filters.routing.triggermesh.io   2021-10-06T09:01:33Z
    ```
    You can also explore the API specification with:
    ```console
    $ kubectl explain filter
    ```

To demonstrate filtering in TriggerMesh we are going to create a simple event flow in which: 

- we'll send events to a WebhookSource component
- the Webhook source will deliver events to a Broker
- A trigger will send all events to a Filter
- The filter will only forward events that contain a specific key in their JSON payload
- Events are forwarded to an event display which should only show the events that passed the filter

![filter](../../assets/images/filter/filter.png)

Let's create all the required objects:

- [x] The `broker`.
- [x] The `WebhookSource` to produce events.
- [x] The `Filter` to discard unwanted events.
- [x] The `Trigger` that sends events to the filter.
- [x] The `event display` target.

!!! Info "Kubernetes manifest"
    The next steps create the configuration that demonstrates the usage of the Filter.
    A single manifest containing all the objects can be downloaded [here](../../assets/yamlexamples/filter.yaml).

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

That service will write to its standard output any CloudEvent received. We will use a Trigger to subscribe to all events flowing through the Broker.

### Step 4: Create the `demo-to-filter` Trigger

Create a Trigger to route events to the `filter` with the following configuration:

```yaml
apiVersion: eventing.triggermesh.io/v1alpha1
kind: Trigger
metadata:
  name: demo-to-filter
spec:
  broker:
    group: eventing.triggermesh.io
    kind: MemoryBroker
    name: demo
  target:
    ref:
      apiVersion: routing.triggermesh.io/v1alpha1
      kind: Filter
      name: filter-demo
```

### Step 5: Create the Filter

Finally, create the `Filter` object to filter out events. Once again save the following YAML manifest in a file and apply it to your Kubernetes cluster with `kubectl apply`.

```yaml
apiVersion: routing.triggermesh.io/v1alpha1
kind: Filter
metadata:
  name: filter-demo
spec:
  expression: |-
    ($first.(int64) + $second.(int64) >= 42) || $role.(string) == "admin"
  sink:
    ref:
      apiVersion: v1
      kind: Service
      name: event-display
```

Verify that your filter is ready with `kubectl` like so:

```console
$ kubectl get filter
NAME          ADDRESS                                                      READY   REASON
filter-demo   http://filter-adapter.sebgoa.svc.cluster.local/filter-demo   True
```

### Send data to the wehbook source

Retrieve the URL where the Webhook is listening for incoming requests.

```console
$kubectl get webhooksources.sources.triggermesh.io webhook
NAME      READY   REASON   URL                                                              SINK                                                     AGE
webhook   True             http://webhooksource-webhook.deadlettersink.127.0.0.1.sslip.io   http://demo-mb-broker.deadlettersink.svc.cluster.local   4m14s
```

Use `curl` or any HTTP capable client to post an event to the webhook.

```console
curl -d '{"first":2, "second":3, "role":"user}' http://webhooksource-webhook.filter.127.0.0.1.sslip.io
```

The broker should then deliver the event to the `filter`, which will pass it to the  `event-display` only if the values of first + second are greater than 42, OR if the role equals admin.

```console
$ kubectl logs deployments/event-display
2023/03/08 18:10:27 Failed to read tracing config, using the no-op default: empty json tracing config
```

```console
curl -d '{"first":40, "second":3, "role":"admin}' http://webhooksource-webhook.filter.127.0.0.1.sslip.io
```

```console
$ kubectl logs deployments/event-display
2023/03/08 18:10:27 Failed to read tracing config, using the no-op default: empty json tracing config
☁️  cloudevents.Event
Context Attributes,
  specversion: 1.0
  type: webhook.event
  source: filter.webhook
  id: cab5df22-72b1-4b37-9fbd-e96d38a3bd98
  time: 2023-03-09T16:32:20.831305046Z
  datacontenttype: application/x-www-form-urlencoded
Data,
  {"first":40, "second":3, "role":"admin}
```

!!! tip "Test your Filter as Code"
    You can test modifying the filter expression and re-applying it with `kubectl`. This gives you a declarative event filter which you can manage with your [GitOps workflow](https://www.weave.works/technologies/gitops/)