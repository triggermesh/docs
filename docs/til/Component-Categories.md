This document provides a description of the five categories of messaging components available in the TriggerMesh Integration Language.

## Channel

A channel enables asynchronous data communication between event senders and event receivers.

```hcl
channel <CHANNEL TYPE> <CHANNEL IDENTIFIER> {
    # component-type-specific configuration
}
```

## Router

A router consumes events which it republishes to one or more event receivers depending on a set of conditions, without modifying the content of the message. Filters fall into this category.

```hcl
router <ROUTER TYPE> <ROUTER IDENTIFIER> {
    # component-type-specific configuration
}
```

## Transformer

A transformer translates the message contained in incoming events into a different format, and publishes transformed events to a designated event receiver.

```hcl
transformer <TRANSFORMER TYPE> <TRANSFORMER IDENTIFIER> {
    to = <block reference>

    # component-type-specific configuration
}
```

## Source

A source emits events into the messaging system (Bridge) by sending to a designated event receiver. An event source often acts as a gateway between an external service and the messaging system.

```hcl
source <SOURCE TYPE> <SOURCE IDENTIFIER> {
    to = <block reference>

    # component-type-specific configuration
}
```

## Target

A target is an event receiver which performs some processing on messages. An event target may act as a gateway between the messaging system (Bridge) and an external service.

Although a target can be considered as the final destination of an event, it may reply with another event (acknowledgment, error, ...) to an arbitrary event destination.

```hcl
target <TARGET TYPE> <TARGET IDENTIFIER> {
    reply_to = <block reference> // optional

    # component-type-specific configuration
}
```
