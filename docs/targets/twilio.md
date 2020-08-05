# Event Target for Twilio

This event target receives [CloudEvents][ce] and utilizes [Twilio](https://www.twilio.com/) to enable the creation and delivery of SMS messages via event-data and event-occurrence, respectively.

## Prerequisites

1. [Twilio][try] account with access to the [Account SID & Auth Token][sid]
1. [Phone Number][pn]

## Deploying an instance of the Target

Open the Bridge creation screen and add a target of type `Twilio`.

![Adding a Twilio target](../images/twilio-target/create-bridge-1.png)

In the Target creation form, give a name to the event Target and add the following information:


* **Phone From**: Defines a Default sending phone. This is not mandatory; however, it is usually configured to the [phone number][pn] purchased at Twilio.
* **Phone To**: wont be usually informed unless you want all messages to address the same phone number by default.
* **SID Secret**: Reference to a [TriggerMesh secret][tm-secret] containing a SID token for authenticating requests
* **Token Secret**: Reference to a [TriggerMesh secret][tm-secret] containing an API token for authenticating requests


Both **Phone From** and **Phone To** configurations can be overrided by any [CloudEvent][ce] message received at the Target.

Refer to [Twilio docs for number formating](https://www.twilio.com/docs/lookup/tutorials/validation-and-formatting?code-sample=code-lookup-with-international-formatted-number).

![Adding a Twilio target](../images/twilio-target/create-bridge-2.png)

After clicking the `Save` button, you will be taken back to the Bridge editor. Proceed to adding the remaining
components to the Bridge, then submit it.

A ready status on the main _Bridges_ page indicates that the Twilio target is ready to accept events.

![Bridge status](../images/bridge-status-green.png)

## Event types

The Twilio event Target can consume events of any type; however, it expects a [JSON][[ce-jsonformat]] payload at the [CloudEvent][ce] that includes:

* **message**: Text to be sent in the body of the SMS message.
* **media_urls**: An array of URL's pointing to JPG, GIF or PNG resources.
* **from**: Defines the phone number sourcing the communication. Optional if provided by the Twilio Target spec.
* **to**: Defines the phone number of the destination. Optional if provided in the Twilio Target spec.

## Example

```console
curl -v http://twiliotarget.cluster.local \
 -X POST \
 -H "Content-Type: application/json" \
 -H "Ce-Specversion: 1.0" \
 -H "Ce-Type: some.message.type" \
 -H "Ce-Source: some.origin/intance" \
 -H "Ce-Id: 536808d3-88be-4077-9d7a-a3f162705f79" \
 -d '{"message":"Hello from Triggermesh using Twilio!","to": "+1111111111"}'
```

[ce]: https://cloudevents.io/
[ce-jsonformat]: https://github.com/cloudevents/spec/blob/v1.0/json-format.md
[tm-secret]:https://docs.triggermesh.io/guides/secrets/

[sid]:https://www.comm100.com/livechat/knowledgebase/where-do-i-find-the-twilio-account-sid-auth-token-and-phone-number-sid.html#:~:text=Log%20into%20your%20Twilio%20Account,also%20find%20the%20Auth%20Token.
[try]:https://www.twilio.com/try-twilio
[pn]:https://www.twilio.com/docs/phone-numbers
