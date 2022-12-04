# Event flow and delivery guarantees

## TL;DR

TriggerMesh does its best to provide at-least-once delivery guarantees:

* Events passing through TriggerMesh are not lost in the case of service or machine restarts, thanks to persistence provided by the Redis Broker
* Source components only acknowledge event receipt to event producers (where relevant) once the Broker has safely acknowledged an event. For example, SQSSource will only tell SQS to remove an event from a queue once the Broker has confirmed it has received it.
* Brokers do their best to deliver events to external consumers through Target components. This means they will retry sending events under certain conditions, and will also use dead-lettering to save events that could not be delivered. These behaviours can be [configured on Triggers](../brokers/eventdelivery.md).
* Event consumers can potentially receive events more than once. Its is up to consumers to be idempotent, meaning the effects of a duplicate event either do not cause side effects or duplicate messages are ignored.  

## From event Sources to Brokers

The SQSSource is an example of a polling source that works by polling the AWS SQS queue. It locks an SQS message for the duration of a visibilityTimeout which avoids the same message being processed by another consumer. Once the SQSSource has received an acknowledgement that the event has been received by the Broker, it tells the SQS queue to delete that message. If the Broker does not acknowledge receipt of the event, the SQSSource does not acknowledge the message from SQS, thereby allowing it to be consumed by another consumer.

## From Brokers to Targets via Triggers

When an event is delivered to the Broker, it is evaluated against all the Broker’s Triggers. All Triggers that match will forward the event to their associated Target(s).

Matching is based on the filters defined on the Trigger.

If an event matches multiple Triggers, the event won’t be removed by the Broker until each Target associated with those Triggers acknowledges the event. The Broker achieves this by maintaining context about the state of delivery to each of those Targets.

The Broker has a timeout so if a Trigger doesn’t acknowledge within that time, then the event is not acknowledged and will be evaluated again against all Triggers (similar to a retry).

## From Targets to external consumers, incl. retries and dead lettering

A Target, such as an HTTP Target, is responsible for passing an event to the consumer, e.g. an HTTP service.

When an event is delivered, the outcome is either a completed delivery or a failed delivery.

**Completed delivery** means the Target can send an acknowledgement to the Broker, letting it know that message has been delivered. Completed delivery does not necessarily mean that the Consumer has successfully received the event.

Below are some examples of the conditions under which completed delivery occurs:

* the external service responds with a 200 response
* the external service responds with a 401 response (unauthorised)

The idea behind 401 being considered as a completed delivery is that retrying the call won't improve chances of success.

**Failed delivery** means that a recoverable error occurred during delivery by the Target to the external consumer, such as a network issue or temporarily unavailable consumer. In this case, the Target behaves according to the delivery configuration it has (retries and dead lettering). When a Target has exhausted all efforts to deliver the event to no avail (the final step being saving it as a dead letter), then the event is acknowledged to the Broker.

Below are some examples of the conditions under which failed delivery occurs:

* Timeout
* 503 response
