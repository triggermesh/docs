# Event Source for Webhooks

This event source exposes a generic HTTP endpoint to be configured at external systems webhooks or be called from custom applications. It turns received requests into [CloudEvents][ce] to be consumed by other TriggerMesh components.

## Prerequisites

- An external client that executes HTTP requests.
- When using HTTP basic authentication, a secret containing the password.

## Deploying an Instance of the Webhook Source

Open the Bridge creation screen and add a source of type `Webhook`.

In the Source creation form add the following information:

- **Name**: all Triggermesh components need a unique name per namespace.
- **Broker**: request converted into [CloudEvents][ce] will be sent to this location.
- **EventType**: string that identifies the purpose for all messages produced from this source.
- **EventSource**: string that identifies the origin for all messages produced from this source.
- **Basic Auth Username**: (optional) HTTP basic authentication username.
- **Basic Auth Password** (optional) points to a secret that contains the HTTP basic authentication password.

After clicking the `Save` button, you will be taken back to the Bridge editor. Proceed to adding the remaining components to the Bridge, then submit it.

The exposed URL can be retrieved by navigating to `Services` and clicking on the corresponding Webhook source component.

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