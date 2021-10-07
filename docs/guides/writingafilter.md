# Writing a Filter

Filters are an important part of TriggerMesh's event routing mechanism.
Content-based event filtering is expressed in Google's
[Common Expression Language](https://opensource.google/projects/cel).

## Prerequisites

1. K8s cluster and configured kubectl
1. [Knative Serving and Eventing Operators](https://knative.dev/docs/admin/install/knative-with-operators/)
1. [TriggerMesh Function](https://github.com/triggermesh/function)

## Event display

First of all, we need to have a tool to see filtering results. Create a `sockeye`
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

Open the web interface in a browser:

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
from the second source should appear in the `sockeye` web interface.

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
