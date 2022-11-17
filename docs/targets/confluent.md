
# Confluent target (deprecated)

!!! tip "Deprecated"
    The Confluent Target is deprecated and replaced by the [KafkaTarget](kafka.md).

Sends events to a Confluent Kafka cluster.

## Prerequisite(s)

- Access to a Kafka cluster with appropriate configuration details

## Kafka Cluster Details

Depending on the cluster and user permissions, the Kafka topic must
exist prior to setting up the target. Otherwise, the Target will attempt to create
the topic which will require setting the `Topic replication` and `Topic partition`.

## Event Types

The Confluent event Target leaves the [CloudEvent][ce] type definition to the discretion of
the implementer. In addition, no events are produced as a response.

[ce]: https://cloudevents.io/
[ce-jsonformat]: https://github.com/cloudevents/spec/blob/v1.0/json-format.md
[docs]: https://docs.confluent.io/current/index.html
