# Injecting Cloudevents into the Broker

This guide indtends to explain how to inject Cloudevents into a Knative Broker.

## Method 1: Using a Curl Pod

The use of a Curl pod is the most flexible method because it allows us to reach resources that are not externally exposed. This method involves deploying a single pod that is capable of injecting Cloudevents into the Broker.

### Create the Curl Pod

The following manifest creates the curl pod that will be used to inject Cloudevents into the Broker.

```yaml
apiVersion: v1
kind: Pod
metadata:
  labels:
    run: curl
  name: curl
spec:
  containers:
  - image: radial/busyboxplus:curl
    imagePullPolicy: IfNotPresent
    name: curl
    stdin: true
    tty: true
```

### Interact with the Curl Pod

Now that the pod is in place we can begin interacting with it. We can use the following command to inject a Cloudevent into the Broker.
**Note**: Here we assume there is a Broker named `events` in the default namespace.

```bash
kubectl exec -ti curl -- curl -v "http://Broker-ingress.knative-eventing.svc.cluster.local/default/events " \
  -H "Ce-Specversion: 1.0" \
  -H "Ce-Type: test.event" \
  -H "Ce-Source: test.source" \
  -H "Content-Type: application/json" \
  -H "Ce-Id: 1234-abcd" \
  -d '{"test": "testval"}'
```

## Method 2: Using a PingSource

We can also use a `PingSource` to inject Cloudevents into the Broker. We can do this simply by applying the following manifest.
**Note**: Here we assume there is a Broker named `events` in the default namespace.

```yaml
apiVersion: sources.knative.dev/v1
kind: PingSource
metadata:
  name: ping-sockeye
spec:
  data: '{"name": "triggermesh"}'
  schedule: '*/1 * * * *'
  sink:
    ref:
      apiVersion: eventing.knative.dev/v1
      kind: Broker
      name: events
```
