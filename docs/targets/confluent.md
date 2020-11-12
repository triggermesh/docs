
# Event Target for Confluent

This event target receives [CloudEvents][ce] and forwards the event to a Confluent Kafka cluster.

## Prerequisites

1. Access to a Kafka cluster with appropriate configuration details.

If a password is required, then consult the [Secrets](../guides/secrets.md) guide
for additional information about how to add the password as a secret.

---

**NOTE**: Depending on the cluster and user permissions, the Kafka topic must
exist prior to setting up the target. Otherwise, the target will attempt to create
the topic which will require setting the `Topic replication` and `Topic partition`.

---

## Deploying an Instance of the Target

Open the Bridge creation screen and add a Target of type `Confluent`.

![Adding a Confluent Target](../images/confluent-target/create-bridge-1.png)

In the Target creation form, provide a name to the event Target, and add the following information:

* **Password Secret**: Reference to a [TriggerMesh secret](../guides/secrets.md) containing the password associated with the user accessing the Kafka cluster as described in the Prerequisites.
* **Bootstrap Servers**: Confluent bootstrap servers to connect to. Use `ADD MORE` button to add additional bootstrap servers if needed.
* **Topic**: Confluent topic to publish events to.
* **Topic replication**: Number of copies of the topic that should exist in the cluster.
* **Topic partitions**: Number of partitions for the topic to allow for concurrency.
* **SASL Mechanism**: Denote how to authenticate against Kafka. Can be one of: `PLAIN` or `GSSAPI`.
* **Security Protocol**: Denote whether to encrypt the password using SSL/TLS.
* **Username**: The username to connect to the Kafka cluster as. This field must have a value even if the cluster allows unauthenticated access.

![Confluent Target form](../images/confluent-target/create-bridge-2.png)

After clicking the `Save` button, the console will self-navigate to the Bridge editor. Proceed by adding the remaining components to the Bridge.

![Bridge overview](../images/confluent-target/create-bridge-3.png)

After submitting the bridge, and allowing some configuration time, a green check mark on the main _Bridges_ page indicates that the bridge with a Confluent event Target was successfully created.

![Bridge status](../images/bridge-status-green.png)

For more information about how to configure Confluent see the [Confluent documentation][docs].

## Event Types

The Confluent Target leaves the [CloudEvent][ce] type definition to the discretion of
the implementer. In addition, no events are produced as a response.

If the `Discard CloudEvent context attributes` is disabled, then the full
CloudEvent will be sent to Confluent. Otherwise, just the event payload will be sent.

[ce]: https://cloudevents.io/
[ce-jsonformat]: https://github.com/cloudevents/spec/blob/v1.0/json-format.md
[docs]: https://docs.confluent.io/current/index.html
