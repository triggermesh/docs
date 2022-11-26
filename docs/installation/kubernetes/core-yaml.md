# Install TriggerMesh Core on Kubernetes with YAML

TriggerMesh Core is composed of a set of APIs implemented as Kubernetes Custom Resource Definitions (CRDs) and a controller.

Installing TriggerMesh consists of:

- [x] Having a Kubernetes cluster version `v1.22+`
- [x] Installing the TriggerMesh Core CRDs
- [x] Installing the TriggerMesh Core controller

These three steps are highlighted below. Provisioning the Kubernetes cluster is not described in this documentation.

## Install the CRDs

All TriggerMersh Core APIs are implemented as Kubernetes CRDs, which we need to create before deploying the controller. The following `kubectl apply` command will create all of the CRDs.

```console
kubectl apply -f https://github.com/triggermesh/triggermesh-core/releases/latest/download/triggermesh-core-crds.yaml
```

## Install the controller

By default, the controller gets deployed in the `triggermesh` namespace. Deploy the controller with the following `kubectl apply` command:

```console
kubectl apply -f https://github.com/triggermesh/triggermesh-core/releases/latest/download/triggermesh-core.yaml
```

## Verifying the installation

Upon successful creation of the CRDs and successful deployment of the controller you should see two pods running in the `triggermesh` namespace

```console
$ kubectl get pods -n triggermesh -l app=triggermesh-core-controller
NAME                                                   READY   STATUS    RESTARTS   AGE
triggermesh-core-controller-64c588d74c-jpr42           1/1     Running   0          1213m
```

All TriggerMesh eventing components will be available to you as new API objects.

```console
$ kubectl get crds | grep eventing.triggermesh.io
memorybrokers.eventing.triggermesh.io                         2022-09-27T11:37:52Z
redisbrokers.eventing.triggermesh.io                          2022-09-27T11:37:52Z
triggers.eventing.triggermesh.io                              2022-09-27T11:37:52Z
```
