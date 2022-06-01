# Creating a Bridge With a Dead Letter Sink (DLS)

## What is a Dead Letter Sink?

A [Dead Letter Sink](https://knative.dev/docs/eventing/event-delivery/) is a Knative construct that allows the user to configure a destination for events that would otherwise be dropped due to some delivery failure. This is useful for scenarios where you want to ensure that events are not lost due to a failure in the underlying system.


## Scenario Debriefing

In this example we are going to create a [Bridge](https://docs.triggermesh.io/concepts/) that contains a [PingSource](https://knative.dev/docs/eventing/sources/ping-source/) object that will emit an event on a regular basis to a [Broker](https://knative.dev/docs/eventing/broker/) named `demo`. A [Service](https://knative.dev/docs/serving/services/), named `event-success-capture` will subscribe to PingSource events flowing through the Broker using a [Trigger](https://knative.dev/docs/eventing/broker/triggers/).

The [Broker](https://knative.dev/docs/eventing/broker/) delivery options will be set to use a [Dead Letter Sink](https://knative.dev/docs/eventing/event-delivery/) so that in the case of a delivery error the event will be forwarded to another Service named `event-failure-capture` instead of being lost into the void.

We will test the bridge to make sure events are delivered to `event-success-capture`, then we will break the bridge by removing the `event-success-capture` service, in which case we expect the [Dead Letter Sink](https://knative.dev/docs/eventing/event-delivery/) to receive all events that were not delivered.

## Creating a Bridge with a Dead Letter Sink

!!! Info "Creating objects"
    All objects mentioned at this guide are intended to be created at kubernetes.
    When using `kubectl` write the provided YAML manifests to a file and write at a console:

    ```console
    $ kubectl apply -f my-file.yaml
    ```

    Alternatively if you don't want to write the manifests to a file you can use this command:

    ```console
    $ kubectl apply -f - <<EOF
    apiVersion: some.api/v1
    kind: SomeObject
    metadata:
      name: some-name
    spec:
      some: property
    EOF
    ```

!!! Info "Bridge manifest"
    The next steps configure and explain the Bridge to build to demonstrate the usage of the Dead Letter Sink.
    A single manifest containing all the objects in the bridge can be downloaded [here](../assets/yamlexamples/dls-example.yaml).


### Step 1: Create the Broker

Create a new Broker with following configuration:

```yaml
apiVersion: eventing.knative.dev/v1
kind: Broker
metadata:
  name: demo
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

Here a Broker named `demo` is configured with the following delivery options:

- 2 retries on failure, backing off exponentialy with a 0.5 seconds factor. This is not the focus of this article but it is recommended to setup retries before giving up on delivery and sending to the DLS.
- Dead letter sink pointing to a service named `event-failure-capture`. You can request the creation of this Broker even if the service does not exists yet.


### Step 2: Create the PingSource

Create a [PingSource](https://knative.dev/docs/eventing/sources/ping-source/) object with the following configuration:

```yaml
apiVersion: sources.knative.dev/v1
kind: PingSource
metadata:
  name: say-hi
spec:
  data: '{"hello": "triggermesh"}'
  schedule: "*/1 * * * *"
  sink:
    ref:
      apiVersion: eventing.knative.dev/v1
      kind: Broker
      name: demo
```

This object will emit an event every minute to the Broker created in the previous step.

### Step 3: Create the `event-success-capture` Service

Create a Service named `event-success-capture` with the following configuration:

```yaml
apiVersion: serving.knative.dev/v1
kind: Service
metadata:
  name: event-success-capture
spec:
  template:
    metadata:
      annotations:
        autoscaling.knative.dev/min-scale: "1"
    spec:
      containers:
      - image: gcr.io/knative-releases/knative.dev/eventing/cmd/event_display
```

That service will write to its standard output any CloudEvent received. We will use a Trigger to subscribe to all events flowing through the Broker.

### Step 4: Create the `demo-to-display` Trigger

Create a Trigger to route events to the `event-success-capture` Service with the following configuration:

```yaml
apiVersion: eventing.knative.dev/v1
kind: Trigger
metadata:
  name: demo-to-display
spec:
  broker: demo
  subscriber:
    ref:
      apiVersion: serving.knative.dev/v1
      kind: Service
      name: event-success-capture
```

This Trigger configures the Broker to send all flowing events to the `event-success-capture` service.

### Step 5: Create the `event-failure-capture` Service

Create the Service named `event-failure-capture` that was configured at the Broker as the Dead Letter Sink parameter:

```yaml
apiVersion: serving.knative.dev/v1
kind: Service
metadata:
  name: event-failure-capture
spec:
  template:
    metadata:
      annotations:
        autoscaling.knative.dev/min-scale: "1"
    spec:
      containers:
      - image: gcr.io/knative-releases/knative.dev/eventing/cmd/event_display
```

This service should only receive messages that could not be delivered to a destination.

## Test the Bridge

Make sure that all created objects are ready by inspecting the `READY` column after this command:

```console
$ kubectl get ksvc,broker,trigger

NAME                                                URL                                                          LATESTCREATED                 LATESTREADY                   READY   REASON
service.serving.knative.dev/event-failure-capture   http://event-failure-capture.default.192.168.49.2.sslip.io   event-failure-capture-00001   event-failure-capture-00001   True
service.serving.knative.dev/event-success-capture   http://event-success-capture.default.192.168.49.2.sslip.io   event-success-capture-00001   event-success-capture-00001   True

NAME                               URL                                                                     AGE     READY   REASON
broker.eventing.knative.dev/demo   http://broker-ingress.knative-eventing.svc.cluster.local/default/demo   3m20s   True

NAME                                           BROKER   SUBSCRIBER_URI                                           AGE     READY   REASON
trigger.eventing.knative.dev/demo-to-display   demo     http://event-success-capture.default.svc.cluster.local   3m20s   True
```

Each minute a CloudEvent should be produced by PingSource and sent to the Broker, which in turns would deliver it to the `event-success-capture`, while `event-failure-capture` should not be receiving any event. We can confirm that by reading each of those services output:

!!! Info "Retrieving logs command"
    Kubernetes generates dynamic Pod names, but we can use `kubectl` with the `-l` flag to filter by a label that identifies the Service.

    We also add the `-f` flag to keep receiving logs as they are produced, this way we can see the live feed of events arriving at the Service.

```console
$ kubectl logs -l serving.knative.dev/service=event-success-capture  -c user-container -f

☁️  cloudevents.Event
Context Attributes,
  specversion: 1.0
  type: dev.knative.sources.ping
  source: /apis/v1/namespaces/default/pingsources/say-hi
  id: efcaa3b7-bcdc-4fa9-a0b3-05d9a3c4a9f9
  time: 2022-06-01T19:54:00.339597948Z
Extensions,
  knativearrivaltime: 2022-06-01T19:54:00.340295729Z
Data,
  {"hello": "triggermesh"}
```

As expected the `event-success-capture` is receiving events produced by PingSource.

```console
$ kubectl logs -l serving.knative.dev/service=event-failure-capture  -c user-container -f
2022/06/01 19:36:45 Failed to read tracing config, using the no-op default: empty json tracing config
```

Meanwhile `event-failure-capture` is not showing any event.

## Test Failing Bridge

To make the Bridge fail will be removing the `event-success-capture` service. That will make the delivery fail and (after 2 retries) be sent to the Dead Letter Queue.

```console
$ kubectl delete ksvc event-success-capture
service.serving.knative.dev "event-success-capture" deleted
```

After doing so, all events not delivered by Broker through the configured Trigger will be shown at the `event-failure-capture`:

```console
$ kubectl logs -l serving.knative.dev/service=event-failure-capture  -c user-container -f

☁️  cloudevents.Event
Context Attributes,
  specversion: 1.0
  type: dev.knative.sources.ping
  source: /apis/v1/namespaces/default/pingsources/say-hi
  id: 7e11c3ac-2b00-49af-9602-59575f410b9f
  time: 2022-06-01T20:14:00.054244562Z
Extensions,
  knativearrivaltime: 2022-06-01T20:14:00.055027909Z
  knativebrokerttl: 255
  knativeerrorcode: 500
  knativeerrordata:
  knativeerrordest: http://broker-filter.knative-eventing.svc.cluster.local/triggers/default/demo-to-display/bd303253-c341-4d43-b5e2-bc3adf70122a
Data,
  {"hello": "triggermesh"}
```

## Clean up

Clean up the remaining resources by issuing this command:

```console
kubectl delete ksvc event-failure-capture
kubectl delete triggers demo-to-display
kubectl delete pingsource say-hi
kubectl delete broker demo
```
