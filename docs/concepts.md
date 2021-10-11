# TriggerMesh Concepts

The TriggerMesh Cloud Native Integration Platform allows you to integrate applications (on-premises or cloud services) by defining sources and targets which are seen as the start and the end of what we call "Bridges". While data and events flow through the Bridge, they may are defined using an API object and may undergo splitting, filtering, and/or transformations.

| ![concepts.png](./assets/images/concepts.png) |
|:--:|
| TriggerMesh Bridges Concepts |

Bridges define how we connect our applications and services, and they may consist of the following concepts:

* [Sources](concepts/sources.md) are the origin of data and events. These may be on-premises or cloud-based. Examples include databases, message queues, logs, and events from applications or services.
* [Filters](concepts/routing.md) determine which events to process based on their content. An example would be to drop log messages that are below a required level of criticality.
* [Splitters](concepts/routing.md) break individual events into multiple events which may be sent to different destinations. These may be on-premises and/or cloud-based targets.
* [Transformations](concepts/transformations.md) are a set of modifications to incoming events. Examples include annotating incoming events with timestamps, dropping fields, or rearranging data to fit an expected format. Transformations may be done declaratively or through a [function](guides/writingafunction.md).
* [Targets](concepts/targets.md) are the destination for the processed events or data. Examples include databases, message queues, monitoring systems, and cloud services.
* [TriggerMesh Integration Language](til/Introduction.md) (TIL) is a templated configuration language for writing your integrations as code. TIL is based off of the [HashiCorp Configuration Language](https://github.com/hashicorp/hcl) and should be familiar to users of [Terraform](https://terraform.io).
