# Event Source for HTTP Polling

This event source launches periodic HTTP requests against an external system endpoint, turning received requests into [CloudEvents][ce] to be consumed by other TriggerMesh components.

## Prerequisite(s)

* An external system that exposes an HTTP endpoint.
* When using HTTP basic authentication, a secret containing the password.

## Deploying an Instance of the HTTP Poller Source

Open the Bridge creation screen and add a source of type `HTTP Poller`.

In the Source creation form add the following information:

* **Name**: all TriggerMesh components need a unique name per namespace.
* **Broker**: request converted into [CloudEvents][ce] will be sent to this location.
* **EventType**: string that identifies the purpose for all CloudEvent messages produced from this source.
* **EventSource**: (optional) string that identifies the origin for all CloudEvent messages produced from this source.
* **Enpoint**: URL location for the remote service to be polled.
* **Method**: HTTP method.
* **Interval**: interval between requests formatted as [Go duration][go-duration].
* **CA Certificate**: (optional) CA certificate configured for TLS connection as plain text.
* **Skip Verify**: (optional) when set to true skips remote server TLS certificate verification.
* **Basic Auth Username**: (optional) HTTP basic authentication username.
* **Basic Auth Password** (optional) points to a secret that contains the HTTP basic authentication password.
* **Headers** (optional) is a set of key/value pairs that will be set within the HTTP request.

`Interval` is formatted after [Go's duration parsing][go-duration]. Most typically this value will contain a number followed by one of "ns", "us" or "µs", "ms", "s", "m", "h". Valid examples are `15000ms` or `15s` for 15 seconds, `60m` or `1h` for one hour.

When using `CA Certificate` it should be copied into the text area in plain text.

After clicking the `Save` button, you will be taken back to the Bridge editor. Proceed to adding the remaining components to the Bridge, then submit it.

## Events Types

The HTTP Poller Source creates a CloudEvent for each request received. CloudEvents header values are filled according to these rules:

* `event-type` is set to the source's provided value.
* `event-source` is set to the source's provided value.
* `id` is set to a generated UID.
* `date` is timestamped when generating the CloudEvent at Triggermesh.

Request response body is used to fill the CloudEvent data.

[ce]: https://cloudevents.io
[go-duration]: https://golang.org/pkg/time/#ParseDuration
