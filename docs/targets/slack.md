# Slack target

Sends events to the Slack through the [Slack Web API][slack-web-api].

With `tmctl`:

```
tmctl create target slack --token <token>
```

On Kubernetes:

Secret (using the Slack API token)

```yaml
apiVersion: v1
kind: Secret
metadata:
  name: slack-tm
type: Opaque
stringData:
  token: xoxb-12345-abcde
```

Target

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

Slack target accepts events of the following types:

- `com.slack.webapi.chat.postMessage`
- `com.slack.webapi.chat.scheduleMessage`
- `com.slack.webapi.chat.update`

These types expect a [JSON][ce-jsonformat] payload with the following properties:

- [chat.postMessage][chat.postMessage]
- [chat.scheduleMessage][chat.scheduleMessage]
- [chat.update][chat.update]

You can test the Target by sending it an event using `curl`.

**Send Message**

- Slack docs https://api.slack.com/methods/chat.postMessage
- Needs chat:write

```sh
curl -v http://localhost:8080 \
 -X POST \
 -H "Content-Type: application/json" \
 -H "Ce-Specversion: 1.0" \
 -H "Ce-Type: com.slack.webapi.chat.postMessage" \
 -H "Ce-Source: awesome/instance" \
 -H "Ce-Id: aabbccdd11223344" \
 -d '{"channel":"C01112A09FT", "text": "Hello from TriggerMesh!"}'
```

**Send Scheduled Message**

- Slack docs https://api.slack.com/methods/chat.scheduleMessage
- Use with a scheduled future epoch.
- Needs chat:write

```sh
curl -v http://localhost:8080 \
 -X POST \
 -H "Content-Type: application/json" \
 -H "Ce-Specversion: 1.0" \
 -H "Ce-Type: com.slack.webapi.chat.scheduleMessage" \
 -H "Ce-Source: awesome/instance" \
 -H "Ce-Id: aabbccdd11223344" \
 -d '{"channel":"C01112A09FT", "text": "Hello from scheduled TriggerMesh!", "post_at": 1593430770}'
```

**Update Message**

- Slack docs https://api.slack.com/methods/chat.update
- Use with an existing message timestamp.
- Needs chat:write

```sh
curl -v http://localhost:8080 \
 -X POST \
 -H "Content-Type: application/json" \
 -H "Ce-Specversion: 1.0" \
 -H "Ce-Type: com.slack.webapi.chat.update" \
 -H "Ce-Source: awesome/instance" \
 -H "Ce-Id: aabbccdd11223344" \
 -d '{"channel":"C01112A09FT", "text": "Hello from updated2 TriggerMesh!", "ts":"1593430770.001300"}'
```

See the [Kubernetes object reference](../../reference/targets/#targets.triggermesh.io/v1alpha1.SlackTarget) for more details.

## Prerequisite(s)

- Slack user that can manage applications
- Pre-existing Slack App
- Slack API token

### Configuring Your Slack App
1. Create a new [Slack App][slack-apps].
1. Go to **Basic Information > Add features and functionality** and select the `Permissions` pane.
1. Under **Bot Token Scopes** add `chat:write`.
1. From the **Install App** menu follow steps to deploy to your workspace.
1. Copy the **Bot OAuth Access token**, it should begin with `xoxb-...`

The application created in Slack for this integration will need to be added
to the scopes that satisfy the web API methods used (`chat:write` shown here). See [Sending Slack Operations](#sending-a-slack-message-via-the-target) to determine which scopes will be required per operation.

### Slack API token

A Slack API token is required to use this target. From the **Install App** menu, retrieve the OAuth Access token that begins with `xoxb-`. For more information on
how to obtain one, see the [Slack Developer's Guide](https://api.slack.com/start)

For more information about using the Slack API, please refer to the [Slack API documentation][slack-web-api].

[ce]: https://cloudevents.io/
[ce-jsonformat]: https://github.com/cloudevents/spec/blob/v1.0/json-format.md
[slack-web-api]: https://api.slack.com/web
[slack-apps]: https://api.slack.com/apps

[chat.postMessage]: https://api.slack.com/methods/chat.postMessage
[chat.scheduleMessage]: https://api.slack.com/methods/chat.scheduleMessage
[chat.update]:  https://api.slack.com/methods/chat.update
