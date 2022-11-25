# Transforming events with TriggerMesh

TriggerMesh makes it easy to transform events as they pass from producers to consumers. This lets you adapt the event metadata or payload for different reasons, such as matching the schema expected by the consumer, or removing sensitive data from events.

There are two main ways to transform events in TriggerMesh:

* [JSON Transformation](jsontransformation.md) provides a high-level language called Bumbleebee (like the [Transformer](https://en.wikipedia.org/wiki/Bumblebee_(Transformers))) that makes it easy to transform an event without writing code
* [Functions](functions/index.md) let you transform events in code written in [Python](functions/pythonfunctions.md), [Node](functions/nodejsfunctions.md), or [Ruby](functions/rubyfunctions.md), thereby providing extra flexibility

TriggerMesh also includes a number of other transformation options:

* [JQ transformation](other/jqtransformation.md)
* [XSLT transformation](other/xslttransformation.md)
* [XML to JSON transformation](other/xmltojsontransformation.md)
* [Mulesoft DataWeave transformation](other/dataweavetransformation.md)
