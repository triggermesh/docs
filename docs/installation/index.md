# Install TriggerMesh

The are two main TriggerMesh installables: `tmctl`, and TriggerMesh on Kubernetes.

## Install `tmctl`

If you are new to TriggerMesh or if you are not familiar with Kubernetes we recommend that you start your journey with [`tmctl`](../reference/tmctl/tmctl.md), the TriggerMesh CLI that that makes it easy to work with events on a laptop and only requires [Docker](https://docs.docker.com/engine/install/). It lets you author event flows with objects like Sources, Brokers, and Targets, and handles running all the necessary components. `tmctl` can be installed using Homebrew or other methods.

To install and get started with `tmctl`, we recommend starting with the [quickstart](../get-started/quickstart.md) that will take you through installation and creating your first event flows in a few minutes.

## TriggerMesh on Kubernetes

TriggerMesh can run natively on Kubernetes and we provide the custom resource definitions (CRDs) and controllers for you to install on any Kubernetes cluster. Once installed, you can configure TriggerMesh objects like Sources, Brokers, and Targets using K8s manifests and they'll just work.

You can install TriggerMesh on Kubernetes with our [Helm charts](./kubernetes-helm.md) or with our [YAML Kubernetes manifests](./kubernetes-yaml.md).

If you're curious about the relationship between TriggerMesh and Knative, please head [here](triggermesh-knative.md).
