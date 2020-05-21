# Twilio event target for Knative Eventing

This event target integrates with Twilio, using received Cloud Event messages to create SMS messages.

## Contents

- [Twilio event target for Knative Eventing](#twilio-event-target-for-knative-eventing)
  - [Contents](#contents)
  - [Prerequisites](#prerequisites)
  - [Controller Deployment](#controller-deployment)
    - [Kubernetes manifests](#kubernetes-manifests)
    - [From code](#from-code)
  - [Creating a Twilio Target](#creating-a-twilio-target)
    - [Status](#status)
    - [Twilio Target as an event Sink](#twilio-target-as-an-event-sink)
    - [Sending SMS to a Twilio Target](#sending-sms-to-a-twilio-target)

## Prerequisites

A Twilio account is required to run this target:

* Register a Twilio account
* Purchase a phone number with
* Retrieve from Twilio Dashbard Account SID
* Retrieve from Twilio Dashbard Auth Token

## Controller Deployment

### Kubernetes manifests

// TODO use our images

### From code

You can use the [ko](https://github.com/google/ko) tool to compile and deploy from source.

```console
ko create -f ./config
```

## Creating a Twilio Target

Once the Twilio Target Controller has been deployed along all other needed assets are present we can create integrations by adding TwilioTargets objects.

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

Although `defaultPhoneFrom` is not mandatory you will usually configure it matching the phone number you have purchased at Twilio.

On the other hand `defaultPhoneTo` wont be usually informed unless you want all messages to address the same phone number by default.

Both configurations can be overrided at every Cloud Event message received at the Target.

Refer to [Twilio docs for number formating](https://www.twilio.com/docs/lookup/tutorials/validation-and-formatting?code-sample=code-lookup-with-international-formatted-number).

### Status

TwilioTarget requires two Secrets to be provided for SID and Token, once they are present it will create a Knative Service. Controller logs and events can provide detailed information about the process. A Status summary is added to the TwilioTarget object informing of the all conditions that the target needs.

When ready the `status.address.url` will point to the internal point where Cloud Events should be sent.

### Twilio Target as an event Sink

Twilio Target is addressable, which means you can use it as a Sink for Knative components.

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

### Sending SMS to a Twilio Target

Twilio Target expect a JSON payload at the CloudEvent that includes:

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
 -H "Ce-Type: some.message.type" \
 -H "Ce-Source: some.origin/intance" \
 -H "Ce-Id: 536808d3-88be-4077-9d7a-a3f162705f79" \
 -d '{"message":"Hello from Triggermesh using Twilio!","to": "+1111111111"}'
```
