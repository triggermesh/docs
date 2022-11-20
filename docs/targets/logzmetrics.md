# Logz.io Metrics target

Sends events to [Logz.io metrics](https://docs.logz.io/user-guide/infrastructure-monitoring/metrics-logzio).

With `tmctl`:

!!! warning "Work in progress"
    This component is not yet available with `tmctl`.

On Kubernetes:

Secret

```yaml
apiVersion: v1
kind: Secret
metadata:
  name: logzmetrics
type: Opaque
stringData:
  token: my_token  # Update this value with a valid shipping token
```

Target

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

Accepts events with the following attributes:

* type `io.triggermesh.opentelemetry.metrics.push`

See the [Kubernetes object reference](../../reference/targets/#targets.triggermesh.io/v1alpha1.LogzMetricsTarget) for more details.
