# Event source for HTTP

This event source exposes a generic HTTP endpoint that turns user requests into [CloudEvents][ce] to be consumed by other Triggermesh components. This source can fit integration scenarios where a webhook that might receive events from an external service is required.

## Prerequisites

An external client that executes HTTP requests.
When using basic auth, a secret containing the password is required.

## Create the HTTP source integration

Create an instance of the HTTP Source at Triggermesh as part of a Bridge.

- `Name` is an internal identifier inside the bridge.
- `Broker` where request converted into [CloudEvents][ce] messages will be sent to.
- `EventType` must be set and will identify the purpose for all messages created from this source.
- `EventSource` must be set and will identify the origin for all messages created from this source.

Basic authentication is optional, when informed these fields are required:

- `Basic Auth Username` username to be used when calling the HTTP source endpoint.
- `Basic Auth Password` secret containing the password to be used when calling the HTTP source endpoint.

Save the source, fill the rest of the bridge components and press `Submit Bridge`.
The exposed URL can be retrieved by navigating to Services and locating the one corresponding to this HTTP source component.

## Events Types

The HTTP source creates a cloud event for each request received. CloudEvents header event type and event source are set to the configured values. Event data is set to the received body at the request.

Cloud Event header example:

| CloudEvent  | Description   | Example             |
|---          |---            |---                  |
| type        | User defined   | `shopify.user.new`  |
| source      | User defined   | `cool-tshirts`   |
| time     | Event time   | `2020-06-21T09:44:35Z`  |
| id     | Generated UID   | `e150b165-c77d-4378-adf7-5d94c26e996d`  |

Cloud Event data example (same as received body):

```json
{
  "operation": "signup",
  "user": {
    "...":"...",
  },
}
```


[ce]: https://cloudevents.io