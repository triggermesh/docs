# Install TriggerMesh Components on Kubernetes with YAML

The TriggerMesh Cloud Native Integration Platform is composed of a set of APIs implemented as Kubernetes Custom Resource Definitions (CRDs) and a controller.

Installing TriggerMesh consists of:

- [x] Having a Kubernetes cluster up and running
- [x] Having the Knative project deployed in that cluster
- [x] Installing the TriggerMesh CRDs
- [x] Installing the TriggerMesh controller

These four steps are highlighted below. The first two steps (i.e Access to a Kubernetes cluster and installation of Knative are not described in details in this documentation). After completing those four steps you can validate your TriggerMesh installation.

!!! note "Alternative Installation Options"
    TriggerMesh also provides a [Helm Chart](components-helm.md) for Kubernetes installation.

## Pre-requisites

The Knative project is a dependency of TriggerMesh, install it using the instructions in the [Knative documentation](https://knative.dev/docs/admin/install/)

* A Kubernetes cluster version `v1.22+`
* Knative `v1.0.0+`

## Install the CRDs

All TriggerMersh APIs are implemented as Kubernetes CRDs, which we need to create before deploying the controller. The following `kubectl apply` command will create all of the CRDs.

```console
kubectl apply -f https://github.com/triggermesh/triggermesh/releases/latest/download/triggermesh-crds.yaml
```

## Install the controller

By default, the controller gets deployed in the `triggermesh` namespace. Deploy the controller with the following `kubectl apply` command:

```console
kubectl apply -f https://github.com/triggermesh/triggermesh/releases/latest/download/triggermesh.yaml
```

## Verifying the installation

Upon successful creation of the CRDs and successful deployment of the controller you should see two pods running in the `triggermesh` namespace

```console
$ kubectl get pods -n triggermesh
NAME                                                   READY   STATUS    RESTARTS   AGE
triggermesh-controller-5cd97f4c8f-z6r2r                1/1     Running   0          57m
triggermesh-webhook-79cd8d6f5d-gf2lj                   1/1     Running   0          57m
```

All event sources and targets will be available to you as new API objects. For example, you can list all AWS related sources and targets with:

```console
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
