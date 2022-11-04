# Event Source for Webhooks

This event source exposes a generic HTTP endpoint to be configured at external systems webhooks or be called from custom applications. It turns received requests into [CloudEvents][ce] to be consumed by other TriggerMesh components.

**Prerequisite(s)**

- An external client that executes HTTP requests.
- When using HTTP basic authentication, a secret containing the password.

**Parameters**

- **Name**: all TriggerMesh components need a unique name per namespace.
- **Broker**: request converted into [CloudEvents][ce] will be sent to this location.
- **EventType**: string that identifies the purpose for all messages produced from this source.
- **EventSource**: string that identifies the origin for all messages produced from this source.
- **Basic Auth Username**: (optional) HTTP basic authentication username.
- **Basic Auth Password** (optional) points to a secret that contains the HTTP basic authentication password.

**Events Types**

The Webhook source creates a cloud event for each request received. CloudEvents header event type and event source are set to the configured values. Event data is set to the received body at the request.

Webhook Source produce arbitrary events based on configuration and received requests.

- `type` attribute is set to the one configured by user.
- `source` attribute is set to the one configured by user.
- `datacontenttype` is set to the `Content-Type` received at the incoming request.
- `data` is set to the body of the received request.


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
## Kubernetes

For simplicity we are setting up a non authenticated Webhook and using the default Kubernetes namespace.

```yaml
apiVersion: sources.triggermesh.io/v1alpha1
kind: WebhookSource
metadata:
  name: post-message
spec:
  eventType: webhook.slack.postmessage
  eventSource: webhook.post-message

  sink:
    ref:
      apiVersion: eventing.knative.dev/v1
      kind: Broker
      name: default
```

The `eventType` and `eventSource` CloudEvents attributes are being set for further event filtering. There is a reference to a Broker sink object where events will be sent, we will get to that one later.


[ce]: https://cloudevents.io
