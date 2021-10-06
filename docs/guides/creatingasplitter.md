# Creating a Splitter

Splitter is a part of TriggerMesh routing solution that has a simple purpose to
split JSON arrays into multiple CloudEvents.

## Prerequesites

1. K8s cluster and confiured kubectl
1. [Knative serving and eventing](https://knative.dev/docs/admin/install/knative-with-operators/)
1. [TriggerMesh Function](https://github.com/triggermesh/function)

## Event display

Create `sockeye` service to see resulting events:

```yaml
apiVersion: serving.knative.dev/v1
kind: Service
metadata:
  name: sockeye
spec:
  template:
    spec:
      containers:
        - image: docker.io/n3wscott/sockeye:v0.7.0@sha256:e603d8494eeacce966e57f8f508e4c4f6bebc71d095e3f5a0a1abaf42c5f0e48
```

Open its web interface in browser:

```shell
browse $(kubectl get ksvc sockeye -o=jsonpath='{.status.url}')
```

## Event producers

Next, create
[PingSource](https://knative.dev/docs/developer/eventing/sources/ping-source) to
produce CloudEvents:

```yaml
apiVersion: sources.knative.dev/v1
kind: PingSource
metadata:
  name: ps-splitter-demo
spec:
  schedule: "*/1 * * * *"
  contentType: "application/json"
  data: '{
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
      }'
  sink:
    ref:
      apiVersion: routing.triggermesh.io/v1alpha1
      kind: Splitter
      name: splitter-demo
```

## Split events

Create the Splitter that will produce two events from every single CloudEvent
received from the PingSource:

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
      apiVersion: serving.knative.dev/v1
      kind: Service
      name: sockeye
```

More details and Splitter examples are available
[here](https://github.com/triggermesh/routing#triggermesh-events-splitter)
