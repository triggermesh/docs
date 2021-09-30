[kubectl](https://kubernetes.io/docs/reference/kubectl/) is Kubernetes' standard command-line tool. It allows controlling Kubernetes clusters and interact with their resources.

The example below demonstrates how to use kubectl to deploy a TriggerMesh Bridge.

## Deployment

A Bridge List-manifest can be piped directly to kubectl commands such as `kubectl create`, `kubectl apply` and `kubectl delete`, by using the `-` notation as the file name, which corresponds to the standard input:

```console
$ til generate my-bridge.brg.hcl | kubectl create -f -
```

Alternatively, one can perform this same operation in two steps by saving the generated List-manifest to a file before applying it:

```console
$ til generate my-bridge.brg.hcl > my-bridge-manifest.json
```
```console
$ kubectl create -f my-bridge-manifest.json
somekind.example/some-name created
otherkind.example/other-name created
[...]
```

## Termination

It is possible to undo the deployment of an entire Bridge by deleting its Kubernetes objects:

```console
$ til generate my-bridge.brg.hcl | kubectl delete -f -
somekind.example/some-name deleted
otherkind.example/other-name deleted
[...]
```

## Important Considerations

One important aspect of kubectl to consider is that it doesn't keep track of the Kubernetes API objects related to a certain application. This applies to TriggerMesh Bridges too. Due to this limitation, re-applying a Bridge manifest after performing modifications to the Bridge description does not guarantee that the deployed state of this Bridge will remain consistent. In particular:

- Removing a block from the Bridge description does not cause a deletion of the corresponding Kubernetes objects in the destination cluster.
- Renaming a component causes the creation of new Kubernetes objects, but does not cause the deletion of objects previously created under a different name.

For these reasons, TriggerMesh does not recommend using kubectl to maintain Bridges that may evolve over time. Its usage should be reserved for ephemeral Bridges resulting from experiments.
