## Kubernetes

**Secret**

```yaml
apiVersion: v1
kind: Secret
metadata:
  name: logzmetrics
type: Opaque
stringData:
  token: my_token  # Update this value with a valid shipping token
```

**Target**

```yaml
apiVersion: targets.triggermesh.io/v1alpha1
kind: LogzMetricsTarget
metadata:
  name: logzmetrics
spec:
  connection:
    listenerURL: http://listener.logz.io:8052
    token:
      secretKeyRef:
        name: logzmetrics
        key: token
  instruments:
  - name: total_requests
    instrument: Counter
    number: Int64
    description: total requests
  - name: quacking_ducks
    instrument: UpDownCounter
    number: Int64
    description: number of quacking ducks observed
  - name: request_duration_ms
    instrument: Histogram
    number: Float64
    description: request duration in milliseconds
```
