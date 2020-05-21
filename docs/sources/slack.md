# Slack Source for Knative

Slack Source enables integration between slack messages read by a bot users and Knative Eventing.

## Contents
- [Slack Source for Knative](#slack-source-for-knative)
  - [Contents](#contents)
  - [Deployment](#deployment)
    - [Deploy Knative Slack Source](#deploy-knative-slack-source)
    - [Create a Slack Bot User](#create-a-slack-bot-user)
    - [Creating an Slack Source instance](#creating-an-slack-source-instance)
  - [Events](#events)
  - [Support](#support)

## Deployment

### Deploy Knative Slack Source

You can build your own images from source configuring [ko](https://github.com/google/ko) and executing with the config folder:

```sh
ko apply -f ./config/
```

### Create a Slack Bot User

1. Customize Slack adding a new **clasic** bot at https://api.slack.com/apps?new_classic_app=1

    ![New classic app wizzard](./docs/images/01.add-classic-bot.png)

2. From Basic Information section, display Add features and functionality and select bots, then click on `Add Legacy Bot User`

    ![Legacy bot user](./docs/images/02.add-legacy-bot-user.png)

3. Select `Install App` section and click on `Install App to Workspace`

    ![Install to workspace](./docs/images/03.install-workspace.png)

4. Copy the bot user OAuth token

    ![Retrieve token](./docs/images/04.retrieve-oauth-token.png)

### Creating an Slack Source instance

An instance of the Slack Source is created by creating a manifest at your cluster where it is informed of:

- The namespace where the instance of the source adapter will run.
- The kubernetes secret and key that host the bot token copied when configuring the Slack bot.
- An optional threadiness parameter in case we need more than one thread for sink dispatching.
- The sink addressable where events will be sent.

```yaml
apiVersion: sources.triggermesh.io/v1alpha1
kind: SlackSource
metadata:
  name: triggermesh-knbot
  namespace: knative-samples
spec:
  slackToken:
    secretKeyRef:
      name: slack
      key: token
  threadiness: 1
  sink:
    ref:
      apiVersion: serving.knative.dev/v1
      kind: Service
      name: event-display
```

You can find a full configuration example at the `sample` folder, replacing the secret's token with your own will make the Slack source ready.

## Events

The Slack Source creates a cloud event for each message written at a channel where the bot is added and also to direct messages to the bot.

- type: `com.slack/message`
- source: `com.slack.<WORKSPACE>`
- subject: `<CHANNEL-WHERE-THE-MESSAGE-WAS-HEARD>`
- data: JSON structure that contains:

```json
   {
     "user_id": "<USER-WRITING-THE-MESSAGE>",
     "text": "<MESSAGE-CONTENTS>"
   }
```

## Support

This is heavily **Work In Progress** We would love your feedback on this
Operator so don't hesitate to let us know what is wrong and how we could improve
it, just file an [issue](https://github.com/triggermesh/knative-sources/issues/new)
