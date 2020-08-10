# Event Target for Twilio

This event Target receives [CloudEvents][ce] and utilizes [Twilio][landing] to enable the creation and delivery of SMS
messages via event-data and event-occurrence, respectively.

## Prerequisites

1. [Twilio][try] account with access to the [Account SID][sid] & [Access Token][token].
1. [Phone Number][pn].

## Deploying an Instance of the Target

Open the Bridge creation screen and add a Target of type `Twilio`.

![Adding a Twilio Target](../images/twilio-target/create-bridge-1.png)

In the Target creation form, give a name to the event Target and add the following information:

* **Default source phone number**: Sending phone number, usually configured to the [phone number][pn] purchased at
  Twilio. (Optional)
* **Default destination**: Phone number to send messages to by default. (Optional)
* **SID Secret**: Reference to a [TriggerMesh secret][tm-secret] containing the [SID of the Twilio account][sid].
* **Token Secret**: Reference to a [TriggerMesh secret][tm-secret] containing an [API Access token][token] for
  authenticating requests against the Twilio API.

Both the **Default source phone number** and **Default destination** configurations may be overridden by any
[CloudEvent][ce] message received by the Target.

For more information about using Twilio, please refer to the [Twilio documentation][docs].

![Twilio Target form](../images/twilio-target/create-bridge-2.png)

After submitting the bridge, and allowing some configuration time, a green check mark on the main _Bridges_ page
indicates that the bridge was successfully created.

![Bridge status](../images/bridge-status-green.png)

## Event Types

The Twilio event Target can consume events of any type, however, the Target expects a [JSON][ce-jsonformat] payload at
the [CloudEvent][ce] with the following properties:

| Name | Type | Description |
|------|------|-------------|
| **message** | string | Text to be sent in the body of the SMS message. |
| **media_urls** | string | Array of URLs pointing to JPEG, GIF or PNG resources. |
| **from** | string | Phone number sourcing the communication. Takes precedence over the value from the Twilio Target spec. |
| **to** | string | Phone number of the destination. Takes precedence over the value from the Twilio Target spec. |

[landing]: https://www.twilio.com/
[try]: https://www.twilio.com/try-twilio
[pn]: https://www.twilio.com/docs/phone-numbers
[sid]: https://www.twilio.com/docs/iam/api/account
[token]: https://www.twilio.com/docs/iam/access-tokens
[docs]: https://www.twilio.com/docs

[ce]: https://cloudevents.io/
[ce-jsonformat]: https://github.com/cloudevents/spec/blob/v1.0/json-format.md
[tm-secret]: https://docs.triggermesh.io/guides/secrets/
