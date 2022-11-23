# Brokers

TriggerMesh provides components called Brokers that act as intermediaries that route events from event producers to consumers. Brokers are responsible for guaranteeing that events are delivered to their destinations. Different Broker types will provide different guarantees and tradeoffs.

* `Memory Broker` uses ephemeral memory to store events, and is best used for development and non-mission-critical use cases where event loss is acceptable in the case of crashes or restarts
* `Redis Broker` uses a backing Redis instance to store events, thereby providing durability that is suitable for production uses cases where event loss in not acceptable during crashes or restarts

Triggers listen for events that land on a Broker, and evaluate events against the Trigger's filters. If the filters match, the Trigger fires and forwards the event to its target.
