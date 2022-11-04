# Event Target for Slack

This event Target receives [CloudEvents][ce] over HTTP and sends them to Slack using the [Slack Web API][slack-web-api].

## Prerequisite(s)

- Slack user that can manage applications
- Pre-existing Slack App
- Slack API token

Consult the [Secrets](../guides/secrets.md) guide for more information about how to add a Slack API token as a secret.

## Configuring Your Slack App
1. Create a new [Slack App][slack-apps].
1. Go to **Basic Information > Add features and functionality** and select the `Permissions` pane.
1. Under **Bot Token Scopes** add `chat:write`.
1. From the **Install App** menu follow steps to deploy to your workspace.
1. Copy the **Bot OAuth Access token**, it should begin with `xoxb-...`

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

For more information about using the Slack API, please refer to the [Slack API documentation][slack-web-api].

## Event Types

CloudEvents consumed by this Target must be of one of these types:

- `com.slack.webapi.chat.postMessage`
- `com.slack.webapi.chat.scheduleMessage`
- `com.slack.webapi.chat.update`

These types expect a [JSON][ce-jsonformat] payload with the following properties:

- [chat.postMessage][chat.postMessage]
- [chat.scheduleMessage][chat.scheduleMessage]
- [chat.update][chat.update]

### Example

Post message:

```sh
curl -v http://slack-target:8080 \
 -X POST \
 -H "Content-Type: application/json" \
 -H "Ce-Specversion: 1.0" \
 -H "Ce-Type: com.slack.webapi.chat.postMessage" \
 -H "Ce-Source: awesome/instance" \
 -H "Ce-Id: aabbccdd11223344" \
 -d '{"channel":"C01112A09FT", "text": "Hello from TriggerMesh!"}'
```

Schedule message:

```sh
curl -v http://slack-target:8080 \
 -X POST \
 -H "Content-Type: application/json" \
 -H "Ce-Specversion: 1.0" \
 -H "Ce-Type: com.slack.webapi.chat.scheduleMessage" \
 -H "Ce-Source: awesome/instance" \
 -H "Ce-Id: aabbccdd11223344" \
 -d '{"channel":"C01112A09FT", "text": "Hello from scheduled TriggerMesh!", "post_at": 1593430770}'
```

## K8S doc (pieces to reuse)

## Slack Event Target for Knative Eventing

This event target uses CloudEvents to consume the Slack WebAPI.
Supported methods are:

- chat.postMessage
- chat.scheduleMessage
- chat.update

## Contents

- [Slack Event Target for Knative Eventing](#slack-event-target-for-knative-eventing)
  - [Contents](#contents)
  - [Prerequisites](#prerequisites)
  - [Deploying from Code](#deploying-from-code)
  - [Create Slack Target Integration](#create-slack-target-integration)
    - [Creating the Slack App Bot and Token Secret](#creating-the-slack-app-bot-and-token-secret)
    - [Creating a Slack Target](#creating-a-slack-target)
  - [Using Web API Methods from the Slack Target](#using-web-api-methods-from-the-slack-target)
    - [Send message](#send-message)
    - [Send Scheduled Message](#send-scheduled-message)
    - [Update Message](#update-message)

## Prerequisites

A Slack API token is required to utilize this target. For more information on
how to obtain one, see the [Slack Developer's Guide](https://api.slack.com/start)

The application created in Slack for this integration will need to be added
to the scopes that satisfy the web API methods used. See [Sending Slack Operations](#sending-a-slack-message-via-the-target)
to determine which scopes will be required per operation.

## Deploying from Code

The parent config directory can be used to deploy the controller and all adapters. Please
consult the [development guide](../DEVELOPMENT.md) for information about how to deploy to
a cluster.

The adapter can be built and invoked directly.  From the top-level source directory:

```sh
make slack-target-adapater && ./_output/slack-target-adapter
```

Note that several environment variables will need to be set prior to invoking the adapter such as:

  - `NAMESPACE=default`    - Usually set by the kubernetes cluster
  - `K_LOGGING_CONFIG=''`  - Define the default logging configuration
  - `K_METRICS_CONFIG='''` - Define the prometheus metrics configuration
  - `SLACK_TOKEN`          - Slack API token associated with the application provisioned in the prerequisites

A full deployment example is located in the [samples](../samples/slack) directory

## Create Slack Target Integration

Deploy the Slack source in 2 steps:

1. Create the Slack App Bot and the corresponding secret.
1. Create the Slack Target.

### Creating the Slack App Bot and Token Secret

1. Create a new Slack App at https://api.slack.com/apps
1. From Basic Information, select the Permissions pane.
1. At Bot Token scopes add those that your bot might need. Be aware that we support a subset of the method at those scopes.
1. Select Install App, then install it at your workspace.
1. Copy the Bot OAuth Access token, it should begin with `xoxb-...`
1. Create the secret to be used by the Slack Target:

```yaml
apiVersion: v1
kind: Secret
metadata:
  name: slack
type: Opaque
stringData:
  token: <REPLACE ME WITH A REAL SLACK TOKEN>
```

### Creating a Slack Target

The Slack Target is a service which is able to receive CloudEvents and
transform them into method calls at the Slack API. It needs the aforementioned
secret to be created:

```yaml
apiVersion: targets.triggermesh.io/v1alpha1
kind: SlackTarget
metadata:
  name: triggermesh-slack
spec:
  token:
    secretKeyRef:
      name: slack
      key: token
```

Once created the Slack Target service will expose an endpoint to receive
CloudEvents, you can manually send requests to that endpoint or use it as the
Sink for objects like a Broker.

## Using Web API Methods from the Slack Target

CloudEvents consumed by this target should include a valid JSON message
containing the required fields for the Slack Method. Refer to the Slack
documentation link included in each section for information on the expected fields.

### Send Message

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

### Send Scheduled Message

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

### Update Message

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

[ce]: https://cloudevents.io/
[slack-web-api]: https://api.slack.com/web
[slack-apps]: https://api.slack.com/apps

[chat.postMessage]: https://api.slack.com/methods/chat.postMessage
[chat.scheduleMessage]: https://api.slack.com/methods/chat.scheduleMessage
[chat.update]:  https://api.slack.com/methods/chat.update
