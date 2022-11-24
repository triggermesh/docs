# JQ Transformation

## Kubernetes

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
