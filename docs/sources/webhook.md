# Webhook source

This source exposes an HTTP endpoint, meaning it acts as an HTTP server. It can be used as a target endpoint for 3rd-party webhooks from any SaaS app that supports webhooks, or can be used as a generic way to ingest events to TriggerMesh via HTTP. The Webhook source creates an event for each request received.

Compared to the [CloudEventsSource](cloudevents.md), the Webhook source can accept arbitrary data (e.g. any JSON) and does not require the request to conform to the CloudEvents specification. 

With `tmctl`:

```
tmctl create source webhook --eventTypes <my.event.type>
```

On Kubernetes:

```yaml
apiVersion: sources.triggermesh.io/v1alpha1
kind: WebhookSource
metadata:
  name: sample
spec:
  eventType: com.example.mysample.event
  eventSource: instance-abc123

  eventExtensionAttributes:
    from:
    - path
    - queries

  basicAuthUsername: customuser
  basicAuthPassword:
    value: abc123secret

  sink:
    ref:
      apiVersion: eventing.knative.dev/v1
      kind: Broker
      name: default
```

**Parameters**

- **Name**: all TriggerMesh components need a unique name per namespace.
- **Broker**: request converted into [CloudEvents][ce] will be sent to this location.
- **EventType**: string that identifies the purpose for all messages produced from this source.
- **EventSource**: string that identifies the origin for all messages produced from this source.
- **Basic Auth Username**: (optional) HTTP basic authentication username.
- **Basic Auth Password** (optional) points to a secret that contains the HTTP basic authentication password.

Events produced have the following attributes:

* type: defined by the user in the WebhookSource configuration, e.g. `shopify.user.new`
* source: defined by the user in the WebhookSource configuration, e.g. `cool-tshirts`
* Schema of the `data` attribute: depends on what the client sends to the Webhook
* `datacontenttype` is set to the `Content-Type` received at the incoming request

Cloud Event data example (same as received body):

```json
{
  "operation": "signup",
  "user": {
    "...":"...",
  },
}
```

See the [Kubernetes object reference](../../reference/sources/#sources.triggermesh.io/v1alpha1.WebhookSource) for more details.

[ce]: https://cloudevents.io
