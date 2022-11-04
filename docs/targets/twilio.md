# Event Target for Twilio

This event Target receives [CloudEvents][ce] and utilizes [Twilio][landing] to enable the creation and delivery of SMS
messages via event data and event occurrence, respectively.

## Prerequisite(s)

- [Twilio][try] account with access to the [Account SID][sid] & [API Access Token][token]
- [Phone number][pn]

Consult the [Secrets](../guides/secrets.md) guide for more information about
how to add the Twilio Account SID and API Access Token as secrets.

## Prerequisites

A Twilio account is required to run this target:

* Register a Twilio account
* Purchase a phone number with
* Retrieve from Twilio Dashbard Account SID
* Retrieve from Twilio Dashbard Auth Token

## Deploying an Instance of the Target

- **Default source phone number (_Optional_)**: Sender's phone number, usually configured to the [phone number][pn] purchased at
  Twilio.
- **Default destination (_Optional_)**: Phone number to send messages to by default.
- **SID Secret**: Reference to a [TriggerMesh secret](../guides/secrets.md) containing the [SID of the Twilio account][sid].
- **Token Secret**: Reference to a [TriggerMesh secret](../guides/secrets.md) containing an [API Access token][token] for
  authenticating requests against the Twilio API.

Both the **Default source phone number** and **Default destination** configurations may be overridden by any
[CloudEvent][ce] message received by the Target.

For more information about using Twilio, please refer to the [Twilio documentation][docs].

## Creating a Twilio Target

Integrations can be created by adding TwilioTargets objects.

```yaml
apiVersion: targets.triggermesh.io/v1alpha1
kind: TwilioTarget
metadata:
  name: <TARGET-NAME>
spec:
  defaultPhoneFrom: "<PHONE-FROM>"
  defaultPhoneTo: "<PHONE-TO>"
  sid:
    secretKeyRef:
      name: "<YOUR-SID-SECRET>"
      key: "<YOUR-SID-SECRET-KEY>"
  token:
    secretKeyRef:
      name: "<YOUR-TOKEN-SECRET>"
      key: "<YOUR-TOKEN-SECRET-KEY>"
```

Although `defaultPhoneFrom` is not mandatory it will usually be configured by
matching the phone number purchased with Twilio.

`defaultPhoneTo` will normally not be informed unless the desire is to send
all messages to the same phone number by default.

Both configurations can be overridden by every CloudEvent message received by the Target.

Refer to [Twilio docs for number formating](https://www.twilio.com/docs/lookup/tutorials/validation-and-formatting?code-sample=code-lookup-with-international-formatted-number).

### Status

TwilioTarget will require two Secrets to be provided: SID and Token.  Once
they are present, a Knative service will be created. The global controller
logs and events can provide detailed information about the process. A Status
summary added to the TwilioTarget object provides the conditions the
target needs.

When the target is ready, the `status.address.url` will point to the
internal location where the CloudEvents will be sent.

### Twilio Target as an Event Sink

Twilio Target is addressable, which means it can be used as a Sink for Knative components.

```yaml
apiVersion: eventing.knative.dev/v1beta1
kind: Trigger
metadata:
  name: <TRIGGER-NAME>
spec:
  broker: <BROKER-NAME>
  filter:
    attributes:
      type: <MESSAGE-TYPES-TWILIO-FORMATTED>
  subscriber:
    ref:
      apiVersion: targets.triggermesh.io/v1alpha1
      kind: TwilioTarget
      name: <TARGET-NAME>
```

### Sending SMS to a Twilio Target with event type `io.triggermesh.twilio.sms.send`

Twilio Target expect a JSON payload from the CloudEvent that includes:

* `message`: text to be sent.
* `media_urls`: array of URLs pointing to JPG, GIF or PNG resources.
* `from`: phone sourcing the communication. Optional if provided by the TWilioTarget.
* `to`: phone destination. Optional if provided by the TwilioTarget.

You can use `curl` from a container in the cluster pointing to the TwilioTarget exposed URL:

```console
curl -v http://twiliotarget-int1-8dc3abc7d44bdd0130bd0a311bea272f.knative-samples.svc.cluster.local
 \
 -X POST \
 -H "Content-Type: application/json" \
 -H "Ce-Specversion: 1.0" \
 -H "Ce-Type: io.triggermesh.twilio.sms.send" \
 -H "Ce-Source: some.origin/intance" \
 -H "Ce-Id: 536808d3-88be-4077-9d7a-a3f162705f79" \
 -d '{"message":"Hello from TriggerMesh using Twilio!","to": "+1111111111"}'
```

## Event Types

A Twilio event Target accepts the following [CloudEvent][ce] types:

### io.triggermesh.twilio.sms.send

Events of this type intend to send a SMS message via Twilio.

This type expects a [JSON][ce-jsonformat] payload with the following properties:

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
