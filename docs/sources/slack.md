# Slack source

This event source uses the [Slack Events API][slack-events-api] through a [bot user][slack-bot-user] to ingest events into TriggerMesh.

With `tmctl`:

```
tmctl create source slack
```

On Kubernetes:

```yaml
apiVersion: sources.triggermesh.io/v1alpha1
kind: SlackSource
metadata:
  name: sample
spec:
  # optional, making sure we are receiving events on behalf of Slack
  signingSecret:
    value: XXXXXXXXXXXXXXXXXX

  # optional, making sure the events are being sent for this integration
  appID: AXXXXXXXXX

  sink:
    ref:
      apiVersion: eventing.knative.dev/v1
      kind: Broker
      name: default
```

Events produced have the following attributes:

* type `com.slack.events`
* source `Team ID (Slack workspace)`
* Schema of the `data` attribute: [com.slack.events.json](https://raw.githubusercontent.com/triggermesh/triggermesh/main/schemas/com.slack.events.json)

Event `data` example:

```json
{
  "blocks": [
    {
      "block_id": "ws9ME",
      "elements": [
        {
          "elements": [
            {
              "text": "waving hello ",
              "type": "text"
            },
            {
              "type": "user",
              "user_id": "U015NKH6R6G"
            }
          ],
          "type": "rich_text_section"
        }
      ],
      "type": "rich_text"
    }
  ],
  "channel": "C01112A09FT",
  "channel_type": "channel",
  "client_msg_id": "9fc2ed3e-c823-4dcf-be6b-4d788ab0beea",
  "event_ts": "1592732675.009400",
  "team": "TA1J7JEBS",
  "text": "waving hello \u003c@U015NKH6R6G\u003e",
  "ts": "1592732675.009400",
  "type": "message",
  "user": "UT8LFLXR8"
}
```

See the [Kubernetes object reference](../../reference/sources/#sources.triggermesh.io/v1alpha1.SlackSource) for more details.

## Prerequisite(s)

- A Slack user that can manage applications is required to configure the source.

## Create the Slack Source Integration

Deploy the Slack source in 3 steps:

1. Deploy the Slack source, retrieve exposed endpoint at TriggerMesh.
1. Configure Slack App to send events to the Slack Source endpoint.
1. (optional) Modify the Slack Source to add Signing Secret and AppID from the configured App.

### Deploy Slack Source

Create an instance of the Slack Source with TriggerMesh.

Copy the URL for the exposed service.

### Configure Slack Events API App

1. Create a new [Slack App][slack-app]

![Slack app](../../assets/images/slack-source/01createslackapp.png)

1. From Basic Information, Features and functionality, select `Event Subscriptions`

  ![Features and functionality](../../assets/images/slack-source/02featuresandfunctionality.png)

1. Slide the `Enable Events` selector to `on` and write the Slack source exposed URL at the `Request URL` box. A request with a verification challenge will be sent and when the Slack source adapter answer it will be validated and a green check will be shown.

  ![Request URL verified](../../assets/images/slack-source/03requestverify.png)

1. At the `Subscribe to bot events` section select the bot events that will be sent on behalf of this integration and then press `Save Changes` at the bottom of the page.. Refer to Slack documentation on which ones to use, as a hint the we think these 3 could be useful for different scenarios:

   - `app_mention` will send an event when the App is mentioned.
   - `message.im` will send an event when sending a direct message to the App.
   - `message.channels` an event will be sent for each message at a channel where the App is invited.

  ![Subscribe](../../assets/images/slack-source/04subscribe.png)

1. At `Install App` section click on `Install App to Workspace`

  ![Install to workspace](../../assets/images/slack-source/05install.png)

1. (Optional)Return to the application's `Basic Information` and take note of `App ID` and `Signing Secret`

    ![Retrieve info](../../assets/images/slack-source/06appinfo.png)

You will now have a working integration. Any Slack action that matches the configured event subscription will be sent to the Slack Source and from there to the sink.

[slack-events-api]: https://api.slack.com/events-api
[slack-bot-user]: https://api.slack.com/bot-users
[wrapped-event]: https://api.slack.com/types/event
