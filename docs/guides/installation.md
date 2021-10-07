# TriggerMesh Installation


## Pre-requisites

The knative project is a dependency of TriggerMesh, install it using the instructions in the [documenation](https://knative.dev/docs/admin/install/)

* A kubernetes cluster version `v1.20`
* knative `v0.26`

## Install the CRD

```
kubectl apply -f
```

## Install the controller

```
kubectl apply -f
```

## Verifying the installation

```
kubectl get pods -n triggermesh
```


