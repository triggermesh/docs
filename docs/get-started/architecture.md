# TriggerMesh's architecture

## TriggerMesh components

TriggerMesh's main functionality is provided by individual components such as Brokers, Sources, Targets, and Transformations. Each component is a provided as container which can be configured declaratively to customise its behaviour. For example, the SQS Source takes the SQS queue ARN as a configuration. Brokers are the most complex of these containers: they include Triggers, and have the option of being backed by Redis for event durability.

## Working with TriggerMesh components

There are two "user interfaces" that you can use to configure and run TriggerMesh components.

`tmctl` is a command line interface that both lets you easily configure the components in a developer-friendly way, and also runs the containers on your machine using Docker.

TriggerMesh components can also run natively on Kubernetes. This is made possible by the TriggerMesh custom resource definitions (CRDs) and controllers. Each TriggerMesh component has its own CRD. Sources, targets, transformations, and others all share one controller, and the Broker has its own controller. This means you can configure and operate TriggerMesh just like any other Kubernetes-native application and reap the associated benefits.

## How do events flow through TriggerMesh?

TriggerMesh components communicate over the network according to the CloudEvents standard. CloudEvents provide a standard envelope for events which means they can be manipulated in a uniform way: routing, transformations, etc... become possible regardless of where the event comes from.

CloudEvents also comes with protocol bindings which govern how components can exchange events over the network. Inside TriggerMesh, events are exchanged using the CloudEvents HTTP protocol binding.

## GitHub repos

- Brokers and Triggers: these are the TriggerMesh eventing components. The source code for the Kubernetes controller can be found at [TriggerMesh Core](https://github.com/triggermesh/triggermesh-core).
- Sources, Targets, Transformations, and other components: these let you connect to external systems and process events. Their source code can be found at [TriggerMesh](https://github.com/triggermesh/triggermesh).
- `tmctl`: the command line interface, which makes the components from `triggermesh-core` and `triggermesh` easy to configure and run on Docker. The source code can be found [tmctl](https://github.com/triggermesh/tmctl).
- The TriggerMesh documentation can be found at [docs](https://github.com/triggermesh/docs).

## Dependency on Knative Serving

TriggerMesh relies on [Knative Serving](https://github.com/knative/serving) to run on Kubernetes. TriggerMesh sources and targets use Knative Serving to run as addressable services and to scale. We plan on relaxing this dependency in the future.
