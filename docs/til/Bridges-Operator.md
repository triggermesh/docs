Bridges are first-class citizens on the TriggerMesh platform. Every TriggerMesh installation includes a Kubernetes operator which reconciles Kubernetes API objects of kind `Bridge`. Such object is an aggregate of multiple children Kubernetes objects, much like a List-manifest, with extra lifecycle capabilities such as status reporting and garbage collection.

## Data Format

The Kubernetes API objects which compose a TriggerMesh Bridge are nested under the `spec.components` key of a `Bridge` object. Such object can be generated directly from the `til generate` [command](Commands.md) using the `--bridge` flag:

```console
$ til generate my-bridge.brg.hcl --bridge
```

The example below shows the shape of a `Bridge` object that is equivalent to the sample List-manifest from the [Output format](Output-Format.md) page:

```jsonc
{
  "apiVersion": "flow.triggermesh.io/v1alpha1",
  "kind": "Bridge",
  "metadata": {
    "name": "my-bridge",
  },
  "spec": {
    "components": [
      {
        "object": {
          "apiVersion": "example/v1",
          "kind": "SomeKind",
          "metadata": {
            "name": "some-name",
          },
          // ...
        },
      },
      {
        "object": {
          "apiVersion": "example/v1",
          "kind": "OtherKind",
          "metadata": {
            "name": "other-name",
          },
          // ...
        },
      },
      /*
         more Kubernetes API objects
      */
    ]
  }
}
```

## Deployment

A `Bridge` object can be deployed using [kubectl](https://kubernetes.io/docs/reference/kubectl/) like any other Kubernetes API object:

```console
$ til generate my-bridge.brg.hcl --bridge | kubectl create -f -
bridge.flow.triggermesh.io/my-bridge created
```

A successfully deployed Bridge will be displayed with a "Ready" status:

```
$ kubectl get bridge my-bridge
NAME        READY   REASON   AGE
my-bridge   True             7m
```

## Termination

It is possible to terminate an entire Bridge by deleting its corresponding `Bridge` object:

```console
$ kubectl delete -f my-bridge-manifest.json
bridge.flow.triggermesh.io/my-bridge deleted
```
