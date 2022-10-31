# TriggerMesh Installation for Tanzu Community Edition

[Tanzu Community Edition](https://tanzucommunityedition.io/) is a free and open source Kubernetes platform provided by VMware.

!!! Info "Tanzu Community Edition package repository versions"
       The `knative-serving` version currently in the Tanzu Community Edition package repository is `0.22`, which does not meet TriggerMesh's minimum requirements. Additionally, at the time of writing, a `knative-eventing` package is not available in the repository. Follow the instructions below for installing a supported version of Knative.

## Installation

This guide walks you through the deployment of Knative version 1.4.0 [using YAML files](https://knative.dev/docs/admin/install/serving/install-serving-with-yaml/). Please refer to the upstream Knative [documentation](https://knative.dev/docs/install/) for other deployment options.

1. Follow the [Getting Started with Tanzu Community Edition](https://tanzucommunityedition.io/docs/latest/getting-started-standalone/) installation instructions and create your Tanzu cluster on your platform of choice.

1. Ensure you are in the context of your Tanzu cluster

```bash
kubectl config use-context <STANDALONE-CLUSTER-NAME>-admin@<STANDALONE-CLUSTER-NAME>
```

1. Install Knative Serving following the [Installing Knative Serving using YAML files](https://knative.dev/docs/admin/install/serving/install-serving-with-yaml/) instructions.

```bash
kubectl apply -f https://github.com/knative/serving/releases/download/knative-v1.4.0/serving-crds.yaml
kubectl apply -f https://github.com/knative/serving/releases/download/knative-v1.4.0/serving-core.yaml
```

1. Wait until the pods have started before proceeding.

```bash
kubectl get pods -n knative-serving
```

1. The version of Contour provided with the Tanzu Community Edition package repository is older than the version of `knative-serving` we have installed, so install it from YAML as well.

```bash
kubectl apply -f https://github.com/knative-sandbox/net-contour/releases/download/knative-v1.4.0/contour.yaml
kubectl apply -f https://github.com/knative-sandbox/net-contour/releases/download/knative-v1.4.0/net-contour.yaml
```

1. Verify the pods have started before proceeding.

```bash
kubectl get pods -n contour-external
kubectl get pods -n contour-internal
```

1. Configure Knative Serving to use Contour by default by running the command:

```bash
kubectl patch configmap/config-network \
  --namespace knative-serving \
  --type merge \
  --patch '{"data":{"ingress-class":"contour.ingress.networking.knative.dev"}}'
```

1. Get the External IP address or CNAME by running the command:

```bash
kubectl --namespace contour-external get service envoy
```

1. You will need to configure DNS following the [Knative Serving DNS instructions](https://knative.dev/docs/admin/install/serving/install-serving-with-yaml/#configure-dns) for your requirements.

1. Install Knative Eventing following the [Installing Knative Eventing using YAML files](https://knative.dev/docs/admin/install/eventing/install-eventing-with-yaml/) instructions.

```bash
kubectl apply -f https://github.com/knative/eventing/releases/download/knative-v1.4.2/eventing-crds.yaml
kubectl apply -f https://github.com/knative/eventing/releases/download/knative-v1.4.2/eventing-core.yaml
```

1. Verify your installation.

```bash
kubectl get pods -n knative-eventing
```

At this point you have the TriggerMesh prerequisites installed and can continue with the [standard installation instructions](/guides/installation/#install-the-crds).
