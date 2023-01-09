# Install TriggerMesh on Kubernetes with Helm

This guide takes you through installing TriggerMesh on a Kubernetes cluster using our provided Helm charts. The Charts will install the required TriggerMesh custom resource definitions (CRDs) and controllers onto your cluster.

## Prerequisites

- Kubernetes `v1.22+`
- Knative Serving `v1.0.0+`
- Helm `3.0+`

!!! warning

    You **MUST** install Knative Serving on you Kubernetes cluster for TriggerMesh to run.

## Install Knative Serving

--8<-- "includes/install-knative-serving.md"

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
