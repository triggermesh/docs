# Trigger

On Kubernetes:

```yaml
apiVersion: eventing.triggermesh.io/v1alpha1
kind: Trigger
metadata:
  name: mytrigger
spec:
  broker:
    kind: RedisBroker
    group: eventing.triggermesh.io
    name: mybroker
  filters:
  - any:
    - exact:
        type: my.event.type
  target:
    ref:
      apiVersion: v1alpha1
      kind: CloudEventsTarget
      name: my-cloudevents-target

  delivery:
    retry: 3
    deadLetterSink:
      ref:
        kind: Service
        apiVersion: v1
        name: display-deadlettersink

```
