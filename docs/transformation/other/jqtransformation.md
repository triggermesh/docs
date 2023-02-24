# JQ Transformation

Run a JSON query against an event. 

With `tmctl`:

!!! info "Work in progress"
    This component is not yet available with `tmctl`.

On Kubernetes:

```yaml
apiVersion: flow.triggermesh.io/v1alpha1
kind: JQTransformation
metadata:
  name: testjqtransform
spec:
  query: '.[] | {first: .firstName,last: .lastName}'
  sink:
    ref:
      apiVersion: serving.knative.dev/v1
      kind: Service
      name: event-display
```

Accepts events of any type.

Output events of type `io.triggermesh.jqtransformation.error` in the case of an error.