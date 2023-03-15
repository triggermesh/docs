# Webhook source (HTTP)

This source exposes an HTTP endpoint, meaning it acts as an HTTP server. It can be used as a target endpoint for 3rd-party webhooks from any SaaS app that supports webhooks, or can be used as a generic way to ingest events to TriggerMesh via HTTP. The Webhook source creates an event for each request received.

Compared to the [CloudEventsSource](cloudevents.md), the Webhook source can accept arbitrary data (e.g. any JSON) and does not require the request to conform to the CloudEvents specification.

With `tmctl`:

```
tmctl create source webhook --eventType <my.event.type>
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
      apiVersion: eventing.triggermesh.io/v1alpha1
      kind: RedisBroker
      name: triggermesh
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

## Guide: use `tmctl` to create a Webhook source

**:material-numeric-1-box: Create an HTTP endpoint**

HTTP is one of the easiest ways to send events to the Broker from whichever HTTP client you prefer ([Postman](https://www.postman.com/), Curl, [API Tester](https://chrome.google.com/webstore/detail/talend-api-tester-free-ed/aejoelaoggembcahagimdiliamlcdmfm)...). To do this, let's create a Webhook Source:

```console
tmctl create source webhook --eventType contact.created
```

We're declaring that events of type `contact.created` will be sent to this endpoint. This event type will be part of the event metadata as it flows through TriggerMesh, and can be used later on for routing.

**:material-numeric-2-box: Obtain the URL**

Find the Webhook Source URL:

```console
tmctl describe
```

The output should look something like this:

```console
tmctl % tmctl describe

Broker     Status
foo        online(http://localhost:59882)


Source                Kind              EventTypes          Status
foo-webhooksource     webhooksource     contact.created     online(http://localhost:59936)
```

As you can see, `tmctl describe` displays useful info about your current configuration. It lists all the sources, targets, and other components you've defined, and their properties.

Copy the webhooksource URL, in this case `http://localhost:59936` (this will vary depending on your environment). **Do not** confuse this with the Broker's URL.

**:material-numeric-3-box: Send an event over HTTP**

We'll use curl here. Remember to replace the endpoint URL with yours.

```console
curl http://localhost:59936 -d '{"http":"is easy"}' -H 'Content-type: application/json'
```

The event should show up in `tmctl watch`:

```console
2022/11/09 16:17:38 Watching...
☁️  cloudevents.Event
Context Attributes,
  specversion: 1.0
  type: contact.created
  source: local.foo-webhooksource
  id: 8bce0cd7-74a2-443b-b8ef-825473cc5c51
  time: 2022-11-09T15:37:00.435002345Z
  datacontenttype: application/json
Data,
  {
    "http": "is easy"
  }
```

[ce]: https://cloudevents.io
