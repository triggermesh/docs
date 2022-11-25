# Twilio target

Sends events to [Twilio][landing].

With `tmctl`:

```
tmctl create target twilio --sid <sid> --token <token>
```

On Kubernetes:

Secret

```yaml
apiVersion: v1
kind: Secret
metadata:
  name: twilio
type: Opaque
stringData:
  sid: "<TWILIO-ACCOUNT-SID>"
  token: "<TWILIO-ACCOUNT-TOKEN>"
```

Target

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

- **Default source phone number (_Optional_)**: Sender's phone number, usually configured to the [phone number][pn] purchased at
  Twilio.
- **Default destination (_Optional_)**: Phone number to send messages to by default.
- **SID Secret**: Contains the [SID of the Twilio account][sid].
- **Token Secret**: Contains an [API Access token][token] for
  authenticating requests against the Twilio API.

Both the **Default source phone number** and **Default destination** configurations may be overridden by any the parameters in a [CloudEvent][ce] sent to Target.

Although `defaultPhoneFrom` is not mandatory it will usually be configured by
matching the phone number purchased with Twilio.

`defaultPhoneTo` will normally not be informed unless the desire is to send
all messages to the same phone number by default.

Refer to [Twilio docs for number formating](https://www.twilio.com/docs/lookup/tutorials/validation-and-formatting?code-sample=code-lookup-with-international-formatted-number).

Twilio Target accepts events of type `io.triggermesh.twilio.sms.send`, and expects a JSON payload from the CloudEvent that includes:

| Name | Type | Description |
|------|------|-------------|
| **message** | string | Text to be sent in the body of the SMS message. |
| **media_urls** | string | Array of URLs pointing to JPEG, GIF or PNG resources. |
| **from** | string | Phone number sourcing the communication. Takes precedence over the value from the Twilio Target spec. |
| **to** | string | Phone number of the destination. Takes precedence over the value from the Twilio Target spec. |

You can test the Target by sending it an event using `curl`:

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

See the [Kubernetes object reference](../../reference/targets/#targets.triggermesh.io/v1alpha1.TwilioTarget) for more details.

## Prerequisite(s)

- [Twilio][try] account with access to the [Account SID][sid] & [API Access Token][token]
- [Phone number][pn]

A Twilio account is required to run this target:

* Register a Twilio account
* Purchase a phone number with
* Retrieve from Twilio Dashbard Account SID
* Retrieve from Twilio Dashbard Auth Token

For more information about using Twilio, please refer to the [Twilio documentation][docs].

[landing]: https://www.twilio.com/
[try]: https://www.twilio.com/try-twilio
[pn]: https://www.twilio.com/docs/phone-numbers
[sid]: https://www.twilio.com/docs/iam/api/account
[token]: https://www.twilio.com/docs/iam/access-tokens
[docs]: https://www.twilio.com/docs

[ce]: https://cloudevents.io/
[ce-jsonformat]: https://github.com/cloudevents/spec/blob/v1.0/json-format.md
