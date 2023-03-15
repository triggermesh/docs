# HTTP Poller event source

This event source makes periodic HTTP requests (acting as an HTTP client) to an external HTTP service, and turns the responses into events.

With `tmctl`:

```
tmctl create source httppoller --eventType <type> --method GET --endpoint https://example.com --interval 20s
```

On Kubernetes:

```yaml
apiVersion: sources.triggermesh.io/v1alpha1
kind: HTTPPollerSource
metadata:
  name: sample
spec:
  eventType: weather.alerts/kansas
  eventSource: gov.weather

  endpoint: https://api.weather.gov/alerts/active?area=KS
  method: GET
  interval: 20s

  sink:
    ref:
      apiVersion: eventing.triggermesh.io/v1alpha1
      kind: RedisBroker
      name: triggermesh
```

- **Name**: all TriggerMesh components need a unique name per namespace.
- **Broker**: request converted into [CloudEvents][ce] will be sent to this location.
- **EventType**: string that identifies the purpose for all CloudEvent messages produced from this source.
- **EventSource**: (optional) string that identifies the origin for all CloudEvent messages produced from this source.
- **Enpoint**: URL location for the remote service to be polled.
- **Method**: HTTP method.
- **Interval**: interval between requests formatted as [Go duration][go-duration].
- **CA Certificate**: (optional) CA certificate configured for TLS connection as plain text.
- **Skip Verify**: (optional) when set to true skips remote server TLS certificate verification.
- **Basic Auth Username**: (optional) HTTP basic authentication username.
- **Basic Auth Password** (optional) points to a secret that contains the HTTP basic authentication password.
- **Headers** (optional) is a set of key/value pairs that will be set within the HTTP request.

`Interval` is formatted after [Go's duration parsing][go-duration]. Most typically this value will contain a number followed by one of "ns", "us" or "µs", "ms", "s", "m", "h". Valid examples are `15000ms` or `15s` for 15 seconds, `60m` or `1h` for one hour.

When using `CA Certificate` it should be copied into the text area in plain text.

Events produced have the following attributes:

- `event-type` is set to the source's provided value.
- `event-source` is set to the source's provided value.
- `id` is set to a generated UID.
- `date` is timestamped when generating the CloudEvent at TriggerMesh.

Request response body is used to fill the event payload.

See the [Kubernetes object reference](../../reference/sources/#sources.triggermesh.io/v1alpha1.HTTPPollerSource) for more details.

## Prerequisite(s)

- An external system that exposes an HTTP endpoint.
- When using HTTP basic authentication, a secret containing the password.

[ce]: https://cloudevents.io
[go-duration]: https://golang.org/pkg/time/#ParseDuration
