# Event Target for HTTP

This event target receives [CloudEvents][ce] and turns them into HTTP request that consume external services.

## Prerequisites

The HTTP event target sends requests to arbitrary URLs and wraps responses in CloudEvents back to the caller. HTTP endpoints that are unauthenticated, use basic authentication or use custom header values for authentication, can be integrated using this target.

Responses from external HTTP endpoints are converted into [CloudEvents][ce] and sent as a reply to the TriggerMesh Broker/Channel. It is important that the HTTP target filters received events and cares about response event type and event source to avoid loops where those responses might end up being processed by the HTTP Target.

Requests from this HTTP target will verify TLS certificates from the remote server if present. If the CA certificate at the server is self-signed, the public certificate needs to be added to the configuration, or alternatively mark the skip verify option.

If the remote endpoint requires basic authentication, the password needs to be created as a secret.

## Create the HTTP Target Integration

Create an instance of the HTTP Target at TriggerMesh as part of a Bridge.

- `Name` is an internal identifier for the target.
- `Response event type` must be set and will identify the type for responses from the remote endpoint.
- `EventSource` will identify the origin for all responses. When not informed source will be automatically set to a generated name that includes the HTTP Target component name.
- `Endpoint` full URL for the remote service, including path and query string if any.
- `Method` to use when executing requests against the remote endpoint.
- `CA Certificate`  CA certificate configured for TLS connection.
- `Skip Verify` skips remote server TLS certificate verification.
- `Username` when using basic authentication.
- `Password` when using basic authentication.
- `Headers` is a set of key/value pairs that will be set withing the HTTP request.

Save the target, fill the rest of the bridge components and press `Submit Bridge`.

## Trigger Configuration

Responses from the remote endpoint will generate new [CloudEvents][ce] that will be returned to TriggerMesh. Most probably those response events should not be re-processed by the HTTP Target.

It is important that the Trigger that subscribes the HTTP Target to the Broker configure the appropiate filters to avoid these loops.

As an example:

- We configure an HTTP Target to integrate with WorkDay.
- HTTP Target is interested in events whose type is `calendar.pto.request`.
- The response from workday will generate a CloudEvent type `workday.pto.response` and source `workday.instance1`

Trigger should be configured to avoid feeding these responses into the HTTP Target, a filter key `type` and value `calendar.pto.request` would provide such protection

## Events Types

The HTTP Target expects a cloud event request that complements the Target configured values.

There is no requirement regarding the type header value, any cloud event containing the expected data is valid to process. Data needs to be a JSON structure that might contain these optional fields:


| Field  | Description   | Example             |
|---          |---            |---                  |
| query_string | Key/value pairs formated as query string   | `name=jane&lastname=doe`  |
| path_suffix      | Will be appended to the target's path   | `apparel/tshirts`   |
| body     | String to be set as the request body   | `{\"size\":\"L\",\"color\":\"beige\"}`  |

Cloud Event data examples:

```json
{"path_suffix":"world/italy/cities", "query_string":"top=10&format=csv"}
```

If body is a JSON structure, it will need to be _stringified_

```json
{"body": "{\"records\":[{\"value\":{\"this\":{\"is\": \"sparta\"}}}]}"}
```


[ce]: https://cloudevents.io