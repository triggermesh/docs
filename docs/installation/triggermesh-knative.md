# TriggerMesh and Knative

TriggerMesh depends on Knative Serving to run on Kubernetes, but Knative Eventing is optional. You can either use the provided, self-contained TriggerMesh eventing components which are the Broker and their Triggers, or you can choose to use Knative Eventing Brokers and Triggers. By default, TriggerMesh installations will use the new TriggerMesh Broker and Trigger, whether locally with `tmctl` or on Kubernetes.

<figure markdown="1">
![](../assets/images/installation/triggermesh-kn.png)
</figure>

## Why does TriggerMesh need Knative Serving on Kubernetes?

TriggerMesh sources and targets use Knative Serving to run as addressable services and to scale.

## How to use TriggerMesh with Knative Eventing?

If you want to, you can use the Brokers and Triggers from Knative Eventing instead of those provided by TriggerMesh.

To do this, you'll want to avoid installing the TriggerMesh Brokers and Triggers on Kubernetes, and instead install Knative Eventing.

First you'll need to have Knative Eventing and Serving installed on your cluster.

### With YAML

#### Install the CRDs

All TriggerMesh APIs are implemented as Kubernetes CRDs, which we need to create before deploying the controller. The following `kubectl apply` command will create all of the CRDs. We're intentionally omitting `triggermesh-core` here.

```sh
kubectl apply -f https://github.com/triggermesh/triggermesh/releases/latest/download/triggermesh-crds.yaml
```

#### Install the controllers

By default, the controllers are deployed in the `triggermesh` namespace. Deploy the controllers with the following `kubectl apply` command. We're intentionally omitting `triggermesh-core` here.

```sh
kubectl apply -f https://github.com/triggermesh/triggermesh/releases/latest/download/triggermesh.yaml
```

### With HELM

Add the TriggerMesh chart repository to Helm:

```sh
helm repo add triggermesh https://storage.googleapis.com/triggermesh-charts
```

To install the chart with the release name `triggermesh`:

```sh
helm install -n triggermesh triggermesh triggermesh/triggermesh --set triggermesh-core.enabled=false --create-namespace
```

This command specifically omits `triggermesh-core`, so that is doesn't install the TriggerMesh Brokers and Triggers.

## Using `tmctl` with Knative

When using `tmctl`, you can run `tmctl dump --knative` which will export a Kubernetes manifest that uses the Knative Eventing Brokers and Triggers instead of those provided by TriggerMesh.
