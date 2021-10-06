# Writing a Filter

Filter is an important part of TriggerMesh event routing mechanism.
Content-based events filtering is happening according to conditions expressed in
Google's [Common Expression Language](https://opensource.google/projects/cel).

## Prerequesites

1. K8s cluster and confiured kubectl
1. [Knative serving and eventing](https://knative.dev/docs/admin/install/knative-with-operators/)
1. [TriggerMesh Function](https://github.com/triggermesh/function)

## Event display

First of all, we need to have a tool to see filtering results. Create `sockeye`
service:

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

Next, create two
[PingSources](https://knative.dev/docs/developer/eventing/sources/ping-source) to
produce CloudEvents:

```yaml
apiVersion: sources.knative.dev/v1
kind: PingSource
metadata:
  name: ps-filter-demo-1
spec:
  schedule: "*/1 * * * *"
  contentType: "application/json"
  data: '{
	"foo": "bar",
	"sub": {
		"array": ["hello", "TriggerMesh"]
	    }
    }'
  sink:
    ref:
      apiVersion: routing.triggermesh.io/v1alpha1
      kind: Filter
      name: filter-demo
```

```yaml
apiVersion: sources.knative.dev/v1
kind: PingSource
metadata:
  name: ps-filter-demo-2
spec:
  schedule: "*/1 * * * *"
  contentType: "application/json"
  data: '{
      "var1": 2,
      "var2": 10
    }'
  sink:
    ref:
      apiVersion: routing.triggermesh.io/v1alpha1
      kind: Filter
      name: filter-demo
```

## Filter events

Create the object that would filter events from the first PingSource. Only events
from the second source should appear in `sockeye` web interface.

```yaml
apiVersion: routing.triggermesh.io/v1alpha1
kind: Filter
metadata:
  name: filter-demo
spec:
  expression: $sub.array.0.(string) == "hello" && $foo.(string) != "bar" || $var1.(int64) + $var2.(int64) > 10
  sink: 
    ref:
      apiVersion: serving.knative.dev/v1
      kind: Service
      name: sockeye
```

More details and Filter examples are available
[here](https://github.com/triggermesh/routing#triggermesh-content-filter)
