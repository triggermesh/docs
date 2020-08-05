# Event Target for Confluent

This event Target receives [CloudEvents][ce] and utilizes [Confluent][cc] to enable message delivery to a defined [Kafka Topic][topic] via event-driven data.

## Prerequisites

In order to be able to use the TriggerMesh event Target for Confluent, A Confluent API key is required to utilize this target. For more information on how to obtain one, see the [Confluent Docs][docs]

## Deploying an Instance of the Target

Open the Bridge creation screen and add a Target of type `Confluent`.

![Adding a Confluent Target](../images/confluent-target/create-bridge-1.png)
Once the Confluent Target Controller has been deployed, create an integration by adding a ConfluentTarget like the following:

In the Target creation form, give a name to the event Target and add the following information:

* **Bootstrap Servers**: Define the Kakfa [bootstrap server(s)][qs]
* **Topic**: Define the [Kafka Topic][topic] to publish messages under
* **Username**: Requires a valid [SASL Username][sasl]
* **Password**: Reference to a [TriggerMesh secret][tm-secret] containing a [Sasl Password][sasl] for authenticating requests

![Confluent Target form](../images/confluent-target/create-bridge-2.png)

After clicking the `Save` button, you will be taken back to the Bridge editor. Proceed to adding the remaining
components to the Bridge, then submit it.

A ready status on the main _Bridges_ page indicates that the Confluent Target is ready to accept events.

![Bridge status](../images/bridge-status-green.png)

For more information about using Confluent, please refer to the [Confluent documentation][docs].

## Event types

A Confluent Target can consume [CloudEvent's][ce] of any type.

### Example

By default, the entire cloud event will be posted upder the pre-defined `Topic`; however, if the [JSON][ce-jsonformat] payload of the recieved [CloudEvent][ce] includes a `message` parameter, only the string found `message` will be posted in a message body.

```console
curl -v http://confluent-target.cluster.local \
 -X POST \
 -H "Content-Type: application/json" \
 -H "Ce-Specversion: 1.0" \
 -H "Ce-Type: some.message.type" \
 -H "Ce-Source: some.origin/intance" \
 -H "Ce-Id: 536808d3-88be-4077-9d7a-a3f162705f79" \
 -d '{"message":"Hello from Triggermesh using Confluent!"}'
```

[ce]: https://cloudevents.io/
[ce-jsonformat]: https://github.com/cloudevents/spec/blob/v1.0/json-format.md
[tm-secret]:https://docs.triggermesh.io/guides/secrets/

[docs]: https://docs.confluent.io/current/cloud/index.html

[cc]:https://www.confluent.io/
[topic]:https://docs.confluent.io/current/kafka/introduction.html#topics-and-logs
[qs]:https://docs.confluent.io/current/quickstart/cloud-quickstart/index.html#cloud-quickstart
[sasl]:https://docs.confluent.io/3.0.0/kafka/sasl.html
