# TriggerMesh Concepts

The TriggerMesh Cloud Native Integration Platform allows you to integrate applications by defining sources and targets which are seen as the start and the end of what we call "Bridges". While data and events flow through the Bridge, they are defined using an API object and may undergo filtering, splitting, and/or transformations.

| ![concepts.png](../assets/images/concepts.png) |
|:--:|
| TriggerMesh Bridges Concepts |

Bridges define how we connect our applications and services, and they may consist of the following concepts:

* [Sources](sources.md) are the origin of data and events. These may be on-premises or cloud-based. Examples include databases, message queues, logs, and events from applications or services.
* [Targets](targets.md) are the destination for the processed events or data. Examples include databases, message queues, monitoring systems, and cloud services.
* [Filters](routing.md) determine which events to process based on their content. These may be the basis for dropping unwanted events or for creating rules engines for event processing.
* [Splitters](routing.md) breaks events into multiple events which may then be processed individually.
* [Transformations](transformation.md) are a set of modifications to incoming events. Examples include annotating incoming events with timestamps, dropping fields, or rearranging data to fit an expected format.
* [Functions](functions.md) implement custom event flow logic and may act as a source, transformation, or target. Functions support Python, NodeJS, and Ruby runtimes.
* [TriggerMesh Integration Language](../til/Introduction.md) (TIL) is a user-friendly configuration language for writing your Bridges as integrations as code. TIL is based off of the [HCL](https://github.com/hashicorp/hcl) syntax and should be familiar to users of [Terraform](https://terraform.io).
* [Scaling](scaling.md) explain how TriggerMesh components scale under load.
