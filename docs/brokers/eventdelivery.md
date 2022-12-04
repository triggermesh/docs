# Handling failed delivery of events

The Broker is the component responsible for guaranteeing delivery of events, and provides what is commonly referred to as at-least-once delivery guarantees. Read more about at-least-once in the [dedicated guide](../get-started/reliabledelivery.md).

This guide talks about the configuration options available on Triggers that let you define how the system should behave in the case of failed delivery.

You can configure how events are delivered for each Trigger by adding a `delivery` spec to the `Trigger` object, as shown at the end of the following example:

```yaml
apiVersion: eventing.triggermesh.io/v1alpha1
kind: Trigger
metadata:
  name: mytrigger
spec:
  broker:
      group: eventing.triggermesh.io
      kind: RedisBroker
      name: mybroker
  filters:
      - exact:
          type: mytype1
  target:
      ref:
          apiVersion: targets.triggermesh.io/v1alpha1
          kind: cloudeventstarget
          name: cloudeventstarget
  delivery:
    retry: 5
    backoffDelay: PT5S
    backoffPolicy: constant
    deadLetterSink:
      uri: https://mycompany.com/deadletter
```

Where

- `retry` specifies the number of times that event delivery is retried before the event is sent to the dead letter sink.
- The `backoffDelay` delivery parameter specifies the time delay before an event delivery retry is attempted after a failure. The duration of the `backoffDelay` parameter is specified using the ISO 8601 format. For example, `PT1S` specifies a 1 second delay.
- The `backoffPolicy` delivery parameter can be used to specify the retry back off policy. The policy can be specified as either `linear` or `exponential`. When using the `linear` back off policy, the back off delay is the time interval specified between retries. When using the `exponential` back off policy, the back off delay is equal to `backoffDelay*2^<numberOfRetries>`.
- The `deadLetterSink` spec contains configuration settings to enable using a dead letter sink. This tells the Subscription what happens to events that cannot be delivered to the subscriber. When this is configured, events that fail to be delivered are sent to the dead letter sink destination. The destination can be a reference to any TriggerMesh target, meaning anything could potentially be used to store dead lettered events. The destatination can also be URI. In the example above a URI is used.
