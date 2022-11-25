# Install TriggerMesh

TriggerMesh products are summarized into:

- `Triggermesh CLI`: command line tool that helps authoring and deploying applications.
- `TriggerMesh Components`: sources, targets and other components for building event driven applications.
- `TriggerMesh Core`: event ingress and egress objects.

## TriggerMesh CLI

If you are new to TriggerMesh or if you are not familiar with Kubernetes we recommend that you start using the [CLI](../reference/cli-commands.md), which will only require [docker](https://docs.docker.com/engine/install/) to be installed, and will take care of downloading TriggerMesh images as they are needed.

- [TriggerMesh quickstart](../get-started/quickstart.md)

## TriggerMesh At Kubernetes

The TriggerMesh installation process at Kubernetes is straightforward, although it has different requirements depending on user choices.

- When using `TriggerMesh Components` (that is sources, targets ...) at Kubernetes, [Knative Serving](https://knative.dev/docs/serving/) is required to run some of our adapters.
- If `TriggerMesh Components` is not installed or those components are used locally via `TriggerMesh CLI` there is no need to deploye Knative.
- `TriggerMesh Core` (brokers and triggers) has no dependencies.
- Alternatively you can choose to install [Knative Eventing](https://knative.dev/docs/eventing/) instead of `TriggerMesh Core`, since `TriggerMesh Components` seamlessly work with both.

 Our recommended setup for Kubernetes is:

- Install `TriggerMesh Core` to enable event driven applications.
- Install `Knative Serving` to enable serverless workloads.
- Install `TriggerMesh Components` to be able to use event driven building blocks.

### Kubernetes Installation Resources

- `TriggerMesh Components` at Kubernetes:
  - [Using YAML manifests](kubernetes/components-yaml.md)
  - [Using Helm](kubernetes/components-helm.md)

- `TriggerMesh Core` at Kubernetes [using YAML](kubernetes/core-yaml.md)
