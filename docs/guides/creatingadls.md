# Creating a Bridge With a Dead Letter Sink (DLS)

## What is a Dead Letter Sink?

A [Dead Letter Sink](https://knative.dev/docs/eventing/event-delivery/) is a Knative construct that allows the user to configure a destination for events that would otherwise be dropped due to some delivery failure. This is useful for scenarios where you want to ensure that events are not lost due to a failure in the underlying system.


## Creating a Bridge with a Dead Letter Sink.

In this example we are going to create a [Bridge](https://docs.triggermesh.io/concepts/) that contains a [PingSource](https://knative.dev/docs/eventing/sources/ping-source/) object that will emit an event on a regular basis to a [Broker](https://knative.dev/docs/eventing/broker/), named `events`,  that will then forward the event to a [Service](https://github.com/knative/specs/blob/main/specs/serving/knative-api-specification-1.0.md#service), named `event-display`. We will also be configuring our [Broker](https://knative.dev/docs/eventing/broker/) to use a [Dead Letter Sink](https://knative.dev/docs/eventing/event-delivery/) so that in the case of a delivery error to `event-display` the event will go to another [Service](https://github.com/knative/specs/blob/main/specs/serving/knative-api-specification-1.0.md#service) named `event-failure-capture`, instead of being lost into the void. We will then break the bridge by removing the `event-display` service, so that we can view the [Dead Letter Sink](https://knative.dev/docs/eventing/event-delivery/) in action!


### Step 1: Create the Broker

Create a new [Broker](https://knative.dev/docs/eventing/broker/) with following configuration:

```yaml
apiVersion: eventing.knative.dev/v1
kind: Broker
metadata:
  name: events
spec:
  delivery:
    deadLetterSink:
      ref:
          apiVersion: serving.knative.dev/v1
          kind: Service
          name: event-failure-capture
    backoffDelay: "PT0.5S"     # or ISO8601 duration
    backoffPolicy: exponential # or linear
    retry: 2
```

Here a [Broker](https://knative.dev/docs/eventing/broker/) named `events` with a [Dead Letter Sink](https://knative.dev/docs/eventing/event-delivery/) configured to send the events to a [Service](https://github.com/knative/specs/blob/main/specs/serving/knative-api-specification-1.0.md#service) `sockeye` is configured with a `backoffDelay` of `0.5s`, a `backoffPolicy` of `exponential`, and a `retry` number of 2 (more info about those properties can be found [here](https://knative.dev/docs/eventing/event-delivery/#configuring-subscription-event-delivery).



### Step 2: Create the PingSource

Create a [PingSource](https://knative.dev/docs/eventing/sources/ping-source/) object with the following configuration:

```yaml
apiVersion: sources.knative.dev/v1
kind: PingSource
metadata:
  name: ping-sockeye
spec:
  data: '{"name": "triggermesh"}'
  schedule: "*/1 * * * *"
  sink:
    ref:
      apiVersion: eventing.knative.dev/v1
      kind: Broker
      name: events
```

### Step 3: Create the `event-display` Service

Create a [Service](https://github.com/knative/specs/blob/main/specs/serving/knative-api-specification-1.0.md#service) named `event-display` with the following configuration:

```yaml
apiVersion: serving.knative.dev/v1
kind: Service
metadata:
  name: event-display
spec:
  template:
    spec:
      containers:
      - image: docker.io/n3wscott/sockeye:v0.7.0@sha256:e603d8494eeacce966e57f8f508e4c4f6bebc71d095e3f5a0a1abaf42c5f0e48
        name: user-container
```

### Step 4: Create the `event-display` Trigger

Create a [Trigger](https://knative.dev/docs/eventing/broker/triggers/) to route events to the `event-display` [Service](https://github.com/knative/specs/blob/main/specs/serving/knative-api-specification-1.0.md#service) with the following configuration:

```yaml
apiVersion: eventing.knative.dev/v1
kind: Trigger
metadata:
  name: failtest
spec:
  broker: events
  subscriber:
    ref:
      apiVersion: serving.knative.dev/v1
      kind: Service
      name: event-display
```

### Step 5: Create the `event-failure-capture` Service

Create a [Service](https://github.com/knative/specs/blob/main/specs/serving/knative-api-specification-1.0.md#service) named `event-failure-capture` with the following configuration:

```yaml
apiVersion: serving.knative.dev/v1
kind: Service
metadata:
  name: event-failure-capture
spec:
  template:
    spec:
      containers:
        - image: docker.io/n3wscott/sockeye:v0.7.0@sha256:e603d8494eeacce966e57f8f508e4c4f6bebc71d095e3f5a0a1abaf42c5f0e48
```

### Step 6: Review and Apply

Now that we have created all the necessary objects, we can review and apply the changes to the cluster. A concatenation of all the YAML objects is shown below:

```yaml
apiVersion: eventing.knative.dev/v1
kind: Broker
metadata:
  name: events
spec:
  delivery:
    deadLetterSink:
      ref:
          apiVersion: serving.knative.dev/v1
          kind: Service
          name: event-failure-capture
    backoffDelay: "PT0.5S"     # or ISO8601 duration
    backoffPolicy: exponential # or linear
    retry: 2

---

apiVersion: sources.knative.dev/v1
kind: PingSource
metadata:
  name: ping-sockeye
spec:
  data: '{"name": "triggermesh"}'
  schedule: "*/1 * * * *"
  sink:
    ref:
      apiVersion: eventing.knative.dev/v1
      kind: Broker
      name: events

---

apiVersion: serving.knative.dev/v1
kind: Service
metadata:
  name: event-failure-capture
spec:
  template:
    spec:
      containers:
        - image: docker.io/n3wscott/sockeye:v0.7.0@sha256:e603d8494eeacce966e57f8f508e4c4f6bebc71d095e3f5a0a1abaf42c5f0e48

---

apiVersion: eventing.knative.dev/v1
kind: Trigger
metadata:
  name: failtest
spec:
  broker: events
  subscriber:
    ref:
      apiVersion: serving.knative.dev/v1
      kind: Service
      name: event-display

---

apiVersion: serving.knative.dev/v1
kind: Service
metadata:
  name: event-display
spec:
  template:
    spec:
      containers:
      - image: docker.io/n3wscott/sockeye:v0.7.0@sha256:e603d8494eeacce966e57f8f508e4c4f6bebc71d095e3f5a0a1abaf42c5f0e48
        name: user-container
```

Apply these changes to the cluster.


### Step 7: Test the Bridge

Now with everything in place if we retrieve the current pods in the namespace of deployment, we should see our `event-display` and `event-failure-capture` services running.


```cmd
$ kubectl get pods
NAME                                              READY   STATUS    RESTARTS   AGE
event-display-00001-deployment-689f6d648d-tx4r5   2/2     Running   0          34s
sockeye-00001-deployment-6f488dcd5b-w8zmb         2/2     Running   0          34s
```

 After 60 secconds we should see the `event-failure-capture` service spin down, leaving us with only the `event-display` service running.

```cmd
$ kubectl get pods
NAME                                              READY   STATUS    RESTARTS   AGE
event-display-00001-deployment-689f6d648d-tx4r5   2/2     Running   0          2m
```

View the logs of the `event-display` service, to verify that the events are being recieved from the [PingSource](https://knative.dev/docs/eventing/sources/ping-source/) object.

```cmd
$ kubectl logs event-display-00001-deployment-689f6d648d-tx4r5 user-container

2022/05/31 20:45:00 Broadasting to 0 clients: {"data":{"name":"triggermesh"},"id":"0e429ad9-cf9d-451d-98ce-886fa92acc35","knativearrivaltime":"2022-05-31T20:45:00.250764419Z","source":"/apis/v1/namespaces/delme/pingsources/ping-sockeye","specversion":"1.0","time":"2022-05-31T20:45:00.250270401Z","type":"dev.knative.sources.ping"}
got Validation: valid
Context Attributes,
  specversion: 1.0
  type: dev.knative.sources.ping
  source: /apis/v1/namespaces/delme/pingsources/ping-sockeye
  id: 5c448228-f413-4cbd-b9a4-1c1472c1b96a
  time: 2022-05-31T20:46:00.135993596Z
Extensions,
  knativearrivaltime: 2022-05-31T20:46:00.136447484Z
Data,
  {"name": "triggermesh"}

```

Here we can see that the events are being delivered and the [Bridge](https://docs.triggermesh.io/concepts/) is functioning properly.


### Step 8: Break the Bridge

Break the [Bridge](https://docs.triggermesh.io/concepts/) by removing the `event-display` [Service](https://github.com/knative/specs/blob/main/specs/serving/knative-api-specification-1.0.md#service).

```yaml
apiVersion: serving.knative.dev/v1
kind: Service
metadata:
  name: event-display
spec:
  template:
    spec:
      containers:
      - image: docker.io/n3wscott/sockeye:v0.7.0@sha256:e603d8494eeacce966e57f8f508e4c4f6bebc71d095e3f5a0a1abaf42c5f0e48
        name: user-container
```


### Step 9: View the Events in the Dead Letter Sink

Now that our [Bridge](https://docs.triggermesh.io/concepts/) is broken, if we view the current pods we find that the `event-display` [Service](https://github.com/knative/specs/blob/main/specs/serving/knative-api-specification-1.0.md#service) has been removed, and our `event-failure-capture` [Service](https://github.com/knative/specs/blob/main/specs/serving/knative-api-specification-1.0.md#service) has spun up.

```cmd
$ kubectl get pods
NAME                                              READY   STATUS    RESTARTS   AGE
sockeye-00001-deployment-6f488dcd5b-w8zmb         2/2     Running   0          34s
```

Retrieve the logs to view the, would be, lost events.

```cmd
$ kubectl logs sockeye-00001-deployment-6f488dcd5b-w8zmb user-container

2022/05/31 20:45:00 Broadasting to 0 clients: {"data":{"name":"triggermesh"},"id":"0e429ad9-cf9d-451d-98ce-886fa92acc35","knativearrivaltime":"2022-05-31T20:45:00.250764419Z","source":"/apis/v1/namespaces/delme/pingsources/ping-sockeye","specversion":"1.0","time":"2022-05-31T20:45:00.250270401Z","type":"dev.knative.sources.ping"}
got Validation: valid
Context Attributes,
  specversion: 1.0
  type: dev.knative.sources.ping
  source: /apis/v1/namespaces/delme/pingsources/ping-sockeye
  id: 5c448228-f413-4cbd-b9a4-1c1472c1b96a
  time: 2022-05-31T20:46:00.135993596Z
Extensions,
  knativearrivaltime: 2022-05-31T20:46:00.136447484Z
Data,
  {"name": "triggermesh"}

```
