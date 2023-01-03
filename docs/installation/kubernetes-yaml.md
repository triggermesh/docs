# Install TriggerMesh Components on Kubernetes with YAML

This guide takes you through installing TriggerMesh on a Kubernetes cluster by using our provided YAML manifests. The manifests will install the required TriggerMesh custom resource definitions (CRDs) and controllers onto your cluster.

## Pre-requisites

* A Kubernetes cluster version `v1.22+`
* Knative Serving `v1.0.0+`

## Installing Knative

TriggerMesh relies on [Knative Serving](https://knative.dev/docs/concepts/#knative-serving) to run some of its components as Knative Services. We plan to relax this dependency in the near future. While we recommend following the official [installation instructions](https://knative.dev/docs/install/operator/knative-with-operators/), the remainder of this section serves as a quick guide for installing the Knative components.

Begin by installing the Knative Operator:

```sh
kubectl apply -f https://github.com/knative/operator/releases/download/knative-v1.8.1/operator.yaml -n default
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

Check the status of Knative Serving Custom Resource using the command:

```sh
kubectl get KnativeServing knative-serving -n knative-serving
```

Finally configure Knative Serving to use Magic DNS (sslip.io) with:

```sh
kubectl apply -f https://github.com/knative/serving/releases/download/knative-v1.8.3/serving-default-domain.yaml
```

Refer to the [official documentation](https://knative.dev/docs/install/operator/knative-with-operators/#configure-dns) if you want to use a real DNS instead.

This concludes the installation of Knative Serving and now you can optionally install [Knative Eventing](https://knative.dev/docs/concepts/#knative-eventing). Knative Eventing is not a prerequisite for TriggerMesh to run, but we do provide [compatibility for Knative Eventing users](triggermesh-knative.md).

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

## Install the CRDs

All TriggerMesh APIs are implemented as Kubernetes CRDs, which we need to create before deploying the controller. The following `kubectl apply` command will create all of the CRDs.

```sh
kubectl apply -f https://github.com/triggermesh/triggermesh-core/releases/latest/download/triggermesh-core-crds.yaml
kubectl apply -f https://github.com/triggermesh/triggermesh/releases/latest/download/triggermesh-crds.yaml
```

## Install the controllers

By default, the controllers are deployed in the `triggermesh` namespace. Deploy the controllers with the following `kubectl apply` command:

```sh
kubectl apply -f https://github.com/triggermesh/triggermesh-core/releases/latest/download/triggermesh-core.yaml
kubectl apply -f https://github.com/triggermesh/triggermesh/releases/latest/download/triggermesh.yaml
```

## Verifying the installation

Upon successful creation of the CRDs and successful deployment of the controller you should see three pods running in the `triggermesh` namespace

```sh
$ kubectl get pods -n triggermesh
NAME                                                   READY   STATUS    RESTARTS   AGE
triggermesh-controller-5cd97f4c8f-z6r2r                1/1     Running   0          57m
triggermesh-webhook-79cd8d6f5d-gf2lj                   1/1     Running   0          57m
triggermesh-core-controller-64c588d74c-jpr42           1/1     Running   0          57m
```

All event sources and targets will be available to you as new API objects. For example, you can list all AWS related sources and targets with:

```sh
$ kubectl get crds |grep triggermesh |grep aws
awscloudwatchlogssources.sources.triggermesh.io         2021-10-06T09:01:27Z
awscloudwatchsources.sources.triggermesh.io             2021-10-06T09:01:27Z
awscodecommitsources.sources.triggermesh.io             2021-10-06T09:01:27Z
awscognitoidentitysources.sources.triggermesh.io        2021-10-06T09:01:27Z
awscognitouserpoolsources.sources.triggermesh.io        2021-10-06T09:01:27Z
awscomprehendtargets.targets.triggermesh.io             2021-10-06T09:01:28Z
awsdynamodbsources.sources.triggermesh.io               2021-10-06T09:01:28Z
awsdynamodbtargets.targets.triggermesh.io               2021-10-06T09:01:28Z
awseventbridgetargets.targets.triggermesh.io            2021-10-06T09:01:28Z
awskinesissources.sources.triggermesh.io                2021-10-06T09:01:28Z
awskinesistargets.targets.triggermesh.io                2021-10-06T09:01:29Z
awslambdatargets.targets.triggermesh.io                 2021-10-06T09:01:29Z
awsperformanceinsightssources.sources.triggermesh.io    2021-10-06T09:01:29Z
awss3sources.sources.triggermesh.io                     2021-10-06T09:01:29Z
awss3targets.targets.triggermesh.io                     2021-10-06T09:01:29Z
awssnssources.sources.triggermesh.io                    2021-10-06T09:01:30Z
awssnstargets.targets.triggermesh.io                    2021-10-06T09:01:30Z
awssqssources.sources.triggermesh.io                    2021-10-06T09:01:30Z
awssqstargets.targets.triggermesh.io                    2021-10-06T09:01:30Z
```
