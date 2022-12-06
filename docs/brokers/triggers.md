# Triggers

A Trigger belongs to a broker, and is used to route events from a Broker to a Target. A Broker can have multiple Triggers, and each Trigger has its own filters which are used to determine if an event should fire the trigger. When an event lands on a Broker, it is evaluated against all that Broker's Triggers and will fire every Trigger whose filters are a match. This allows for publish-subscribe style communication.

## `tmctl`

```sh
tmctl create trigger --eventTypes <type1,type2> --target <targetname>
```

`tmctl` provides easy definition of Triggers. Just like any other TriggerMesh component, `tmctl` assumes that the Trigger should be assigned to the current Broker, but a different Broker can be specified with the `--broker` parameter.

The only required parameter for a Trigger with `tmctl` is `--target` which specifies the name of the target that should be used to deliver the event to an external consumer.

The `--eventTypes` parameter is used to specify which event types should match this Trigger's filter. If an array of types is provided, for example `--eventTypes mytype1, mytype2` then events matching either type will fire the Trigger (`OR` logic). If no `--eventTypes` are provided, a catch-all Trigger will be created, that fires against every event that lands on the Broker.
:material-alert: Warning: catch-all Triggers can create event loops when used incorrectly and are generally best avoided.

As a shortcut, you can also use `--source` to specify the name of the source component that you want to use to fire the Trigger. Under the hood, `tmctl` will figure our the right filter to create based on the types of events emitted by that source.

## Kubernetes

The Trigger custom resource definition lets you create Trigger objects on Kubernetes. Below is an example of a Trigger object definition:

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
  target: targets.triggermesh.io/v1alpha1
    ref:
      apiVersion: targets.triggermesh.io/v1alpha1
      kind: cloudeventstarget
      name: cloudeventstarget
  filters: <Filter specification. See 'Filtering Events' section in this doc>
```

The key elements of a Trigger object are:

- The Broker on which the Trigger will run
- The Target to which events will be delivered. It must be set to either a Kubernetes object that can be resolved to an URL, or simply a URL.
- The filters which contain a set of filter expressions that evaluate which events should fire the Trigger. The absence of a filter results in a catch-all Trigger. See [Trigger filters](triggerfilters.md) for details.
- The optional Delivery section to configure retries and dead-lettering. See [delivery](eventdelivery.md) for details on configuring event delivery.
