# Brokers and Triggers

# What are Brokers?

TriggerMesh provides components called Brokers that act as intermediaries that route events from event producers to consumers. Brokers are responsible for guaranteeing that events are delivered to their destinations, and enable the publish-subscribe model in which multiple consumers can be notified of the same events.

Different Broker types will provide different guarantees and tradeoffs:

* [`Memory Broker`](memorybroker.md) uses ephemeral memory to store events, and is best used for development and non-mission-critical use cases where event loss is acceptable in the case of crashes or restarts
* [`Redis Broker`](redisbroker.md) uses a backing Redis instance to store events, thereby providing durability that is suitable for production uses cases where event loss in not acceptable during crashes or restarts

# What are Triggers?

The TriggerMesh Brokers run [Triggers](triggers.md) which listen for events, and evaluate them against the [Trigger's filters](triggerfilters.md), and if they match deliver the events to their defined targets.
