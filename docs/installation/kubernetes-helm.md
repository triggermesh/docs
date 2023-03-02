# Install TriggerMesh on Kubernetes with Helm

This guide takes you through installing TriggerMesh on a Kubernetes cluster using our provided Helm charts. The Charts will install the required TriggerMesh custom resource definitions (CRDs) and controllers onto your cluster.

## Prerequisites

- Kubernetes `v1.22+`
- Knative Serving `v1.0.0+`
- Helm `3.0+`

!!! warning

    You **MUST** install Knative Serving on you Kubernetes cluster for TriggerMesh to run.

## Install Knative Serving

<!--
  when we fix includes, we can do this instead:
  --8<-- "includes/install-knative-serving.md"
-->

TriggerMesh relies on [Knative Serving](https://knative.dev/docs/concepts/#knative-serving) to run some of its components as Knative Services. We plan to relax this dependency in the near future. While we recommend following the official [installation instructions](https://knative.dev/docs/install/operator/knative-with-operators/), the remainder of this section serves as a quick guide for installing the Knative components.

Begin by installing the Knative Operator:

```sh
kubectl apply -f https://github.com/knative/operator/releases/download/knative-v1.8.5/operator.yaml -n default
```

Check the status of the Operator by running the command:

```sh
kubectl get deployment knative-operator -n default
```

Now install the Knative Serving component with the Kourier Networking layer:

```sh
kubectl apply -f - <<EOF
apiVersion: v1
kind: Namespace
metadata:
  name: knative-serving
---
apiVersion: operator.knative.dev/v1beta1
kind: KnativeServing
metadata:
  name: knative-serving
  namespace: knative-serving
spec:
  ingress:
    kourier:
      enabled: true
  config:
    network:
      ingress-class: "kourier.ingress.networking.knative.dev"
EOF
```

Check the status of Knative Serving Custom Resource using the command (can take a minute before it displays as ready):

```sh
kubectl get KnativeServing knative-serving -n knative-serving
```

Finally configure Knative Serving to use Magic DNS (sslip.io) with:

```sh
kubectl apply -f https://github.com/knative/serving/releases/download/knative-v1.8.3/serving-default-domain.yaml
```

Refer to the [official documentation](https://knative.dev/docs/install/operator/knative-with-operators/#configure-dns) if you want to use a real DNS instead.

This concludes the installation of Knative Serving.

 **Optionally**, you can install [Knative Eventing](https://knative.dev/docs/concepts/#knative-eventing). Knative Eventing is not a prerequisite for TriggerMesh to run, but we do provide [compatibility for Knative Eventing users](triggermesh-knative.md).

Install Knative Eventing using the command:

```sh
kubectl apply -f - <<EOF
apiVersion: v1
kind: Namespace
metadata:
  name: knative-eventing
---
apiVersion: operator.knative.dev/v1beta1
kind: KnativeEventing
metadata:
  name: knative-eventing
  namespace: knative-eventing
EOF
```

Check the status of Knative Eventing Custom Resource using the command:

```sh
kubectl get KnativeEventing knative-eventing -n knative-eventing
```

## Install the TriggerMesh Helm chart

Add the TriggerMesh chart repository to Helm:

```sh
helm repo add triggermesh https://storage.googleapis.com/triggermesh-charts
```

To install the chart with the release name `triggermesh`:

```sh
helm install -n triggermesh triggermesh triggermesh/triggermesh --create-namespace
```

The command deploys the TriggerMesh open-source components and uses the [default configuration](#configuration) that can be adapted depending on your needs.

!!! info "Doesn't work?"
    Please let us know by filing a GitHub [issue](https://github.com/triggermesh/triggermesh/issues/new).

## Uninstalling the TriggerMesh Helm chart

To uninstall the `triggermesh` deployment:

```sh
helm uninstall triggermesh -n triggermesh
```

The Kubernetes resources associated with chart will be removed and the Helm release will be deleted.

## Configuration

|          Parameter           |                     Description                     |               Default                |
|------------------------------|-----------------------------------------------------|--------------------------------------|
| `nameOverride`               | Override the name for controller resources          | `""`                                 |
| `fullnameOverride`           | Override the fullname for controller resources      | `""`                                 |
| `image.registry`             | Image registry name                                 | `gcr.io/triggermesh`                 |
| `image.tag`                  | Image tag                                           | `.Chart.AppVersion`                  |
| `image.pullPolicy`           | Image pull policy                                   | `IfNotPresent`                       |
| `imagePullSecrets`           | Specify image pull secrets                          | `[]`                                 |
| `replicaCount`               | Number of replicas                                  | `1`                                  |
| `rbac.create`                | Create RBAC resources                               | `true`                               |
| `serviceAccount.create`      | Create service account for the controller           | `true`                               |
| `serviceAccount.annotations` | Annotations to add to controller service account    | `{}`                                 |
| `serviceAccount.name`        | Override the name for the service account           | `nil`                                |
| `podAnnotations`             | Annotations to add to the controller pod            | `{}`                                 |
| `podSecurityContext`         | Security context for controller pods                | `{}`                                 |
| `securityContext`            | Security context for controller containers          | `{}`                                 |
| `resources`                  | Resource requests/limits for the controller         | `{}`                                 |
| `nodeSelector`               | Controller node selector                            | `{}`                                 |
| `tolerations`                | Tolerations for use with node taints                | `[]`                                 |
| `affinity`                   | Assign custom affinity rules to the controller pods | `{}`                                 |
| `webhook.podAnnotations`     | Annotations to add to the webhook pod               | `{sidecar.istio.io/inject: 'false'}` |
| `webhook.podSecurityContext` | Security context for webhook pods                   | `{}`                                 |
| `webhook.securityContext`    | Security context for webhook containers             | `{}`                                 |
| `webhook.resources`          | Resource requests/limits for the webhook            | `{}`                                 |
| `webhook.nodeSelector`       | Webhook node selector                               | `{}`                                 |
| `webhook.tolerations`        | Tolerations for use with node taints                | `[]`                                 |
| `webhook.affinity`           | Assign custom affinity rules to the webhook pods    | `{}`                                 |
