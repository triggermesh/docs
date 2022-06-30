This chart installs the [TriggerMesh Cloud Native Integration Platform](https://github.com/triggermesh/triggermesh) on a Kubernetes cluster.

!!! note
    This is an alternative method of installation. A straight forward `kubectl apply` is actually all [it takes](installation.md) to get TriggerMesh up and running.

## TL;DR;

If you are familiar with [Helm](https://helm.sh/) just go for it:

```console
$ helm repo add triggermesh https://storage.googleapis.com/triggermesh-charts
$ helm install -n triggermesh triggermesh triggermesh/triggermesh --create-namespace
```

## Prerequisites
  - Kubernetes 1.22+
  - Helm 3.0+
  - Knative v1.4.0+

## Installing the Chart

Add the TriggerMesh chart repository to Helm:

```console
$ helm repo add triggermesh https://storage.googleapis.com/triggermesh-charts
```

To install the chart with the release name `my-release`:

```console
$ helm install --name my-release triggermesh/triggermesh
```

!!! info
    If you face any issues please let us know about it and create an [issue](https://github.com/triggermesh/triggermesh/issues/new)

The command deploys the TriggerMesh open source components in the default configuration. Refer to the [configuration](#configuration) section for the complete list of parameters that can be specified to customize the deployment of the controller.

## Uninstalling the Chart

To uninstall/delete the `my-release` deployment:

```console
$ helm uninstall my-release
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
