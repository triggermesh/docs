# Writing a Webhook to Slack Bridge

This Bridge connects an HTTP endpoint to Slack. Every time the webhook is called a message will be produced, which we will validate and transform into an Slack message.

We will be calling the exposed HTTP endpoint using `curl`, in a real world scenario the caller would be an application configuring a webhook callback.

## Events

Webhook Source produce arbitrary events based on configuration and received requests.

- `type` attribute is set to the one configured by user.
- `source` attribute is set to the one configured by user.
- `datacontenttype` is set to the `Content-Type` received at the incoming request.
- `data` is set to the body of the received request.

Slack Target expect one of these 3 event types along with their related payload:

- `com.slack.webapi.chat.postMessage` for consuming [chat.postMessage][chat.postMessage]
- `com.slack.webapi.chat.scheduleMessage` for consuming [chat.scheduleMessage][chat.scheduleMessage]
- `com.slack.webapi.chat.update` for consuming [chat.update][chat.update]

This fictional scenario will send the following data to the Webhook Source using `curl`.
```json
{"message": "Hello Slack!"}
```

The Webhook Source is expected to produce this event.

```json
type: webhook.slack.postmessage
data: {"message": "Hello Slack!"}
others: ...
```

We will be using TriggerMesh's Function to perform a transformation which will consume the event above and produce this one.

```json
type: com.slack.webapi.chat.postMessage
data: {"channel":"ABCDE12345", "text": "Hello Slack!"}
others: ...
```

This event will finally be consumed by the Slack Target that will in turn call the Slack API to post the message.

## Webhook Source

For simplicity we are setting up a non authenticated Webhook and using the default Kubernetes namespace.

```yaml
apiVersion: sources.triggermesh.io/v1alpha1
kind: WebhookSource
metadata:
  name: post-message
spec:
  eventType: webhook.slack.postmessage
  eventSource: webhoock.post-message

  sink:
    ref:
      apiVersion: eventing.knative.dev/v1
      kind: Broker
      name: default
```

The `eventType` and `eventSource` CloudEvents attributes are being set for further event filtering. There is a reference to a Broker sink object where events will be sent, we will get to that one later.

## Slack Target

Slack Target requires:

- Creating a new [Slack App][slack-apps]: add the `chat:write` permission under `Bot Token Scopes`, then install the application at your workspace.
- A Slack API token: from the **Install App** menu retrieve the OAuth Access token that begins with `xoxb-`.

Create a secret using the Slack API token

```yaml
apiVersion: v1
kind: Secret
metadata:
  name: slack-tm
type: Opaque
stringData:
  token: xoxb-12345-abcde
```

Create the Slack Target referencing the API token.

```yaml
apiVersion: targets.triggermesh.io/v1alpha1
kind: SlackTarget
metadata:
  name: slack-tm
spec:
  token:
    secretKeyRef:
      name: slack-tm
      key: token
```

## Transformation Component

To bridge the gap between the event produced by the Webhook Source and the one expected at the Slack Target we need to perform a transformation, which we can do using a declarative or coded approach. We will use the later here.

Replace the channel ID in this transformation with the one you want to use. The channel ID can be retrieved from the URL either at the browser or selecting the `copy link` option at the Slack app. Please make sure that the bot user is added to the Slack channel.

```yaml
apiVersion: extensions.triggermesh.io/v1alpha1
kind: Function
metadata:
  name: webhook-to-slack
spec:
  runtime: python
  public: false
  entrypoint: transformToSlack
  ceOverrides:
    extensions:
      type: com.slack.webapi.chat.postMessage
  code: |
    from random import randrange

    def transformToSlack(event, context):
      return {
        "channel":"REPLACE-CHANNEL-ID",
        "text": event['message']
      }
```

## Routing Components

In order to connect all components we will setup these elements:

- A central Broker that receives messages from the Source
- A Trigger that consumes Webhook events filtered by the `webhook.slack.postmessage` type and sends them to the transformation Function.
- A Trigger that consumes transformed events filtered by the `com.slack.webapi.chat.postMessage` type and sends them to the Slack target.

The Broker name is set to `default` to match the one used at the Webhook Source earlier.

```yaml
apiVersion: eventing.knative.dev/v1
kind: Broker
metadata:
  name: default
```

Both Triggers are setup on the Broker and subscribe their corresponding destination filtering by types.

```yaml
apiVersion: eventing.knative.dev/v1
kind: Trigger
metadata:
  name: wehook-to-transform
spec:
  broker: default
  filter:
    attributes:
      type: webhook.slack.postmessage
  subscriber:
    ref:
      apiVersion: extensions.triggermesh.io/v1alpha1
      kind: Function
      name: webhook-to-slack

---

apiVersion: eventing.knative.dev/v1
kind: Trigger
metadata:
  name: slack-post-messages
spec:
  broker: default
  filter:
    attributes:
      type: com.slack.webapi.chat.postMessage
  subscriber:
    ref:
      apiVersion: targets.triggermesh.io/v1alpha1
      kind: SlackTarget
      name: slack-tm
```

## Done

Retrieve the URL where the Webhook is listening for incoming requests.

```console
$ kubectl get webhooksources.sources.triggermesh.io post-message
NAME           READY   REASON   URL                                                                  SINK                                                                            AGE
post-message   True             https://webhooksource-post-message.woodford.dev.triggermesh.io   http://broker-ingress.knative-eventing.svc.cluster.local/woodford/default   61s

Use `curl` or any HTTP capable client to post messages at Slack.

```
curl -d '{"message":"test my bridge"}' https://webhooksource-post-message.woodford.dev.triggermesh.io
```

Thid Bridge can be extended in many different ways:

- Validation and error handling at the transformation Function.
- The Channel could be provided as a parameter from the WebhookSource, defaulting to a channel provided by the Function.
- AWS Comprehend could be used for sentiment analysis.
- Messages could be enriched if they contain word `avocado` with 🥑
- Add a Twilio Source that will also feed incoming messages to the Broker.
- Add a Datadog Target that will convert a subset of filtered messages into alerts.

If you have any questions on how to build this Bridge or how to modify it to suit your needs, join our [Community Slack](http://triggermesh-community.slack.com/) and [contact us](mailto:info@triggermesh.com).

[chat.postMessage]: https://api.slack.com/methods/chat.postMessage
[chat.scheduleMessage]: https://api.slack.com/methods/chat.scheduleMessage
[chat.update]:  https://api.slack.com/methods/chat.update
[slack-apps]: https://api.slack.com/apps

