By default, a Bridge gets generated as a collection of Kubernetes API objects under a parent Kubernetes object of kind `List`. If you are already familiar with [kubectl](https://kubernetes.io/docs/reference/kubectl/), a `List` object is what gets returned by the `kubectl get` command when its arguments are object kinds without object names (as in `kubectl get pods`). This object is referred to as _List-manifest_ in the rest of this documentation.

Alternatively, `til` can output Kubernetes objects as a sequence of YAML documents, or as a TriggerMesh `Bridge` object. Please refer to the documentation about [CLI commands](Commands.md) for more information.

## List-manifest

A List-manifest is serialized in the JSON format, which is the canonical data format to interact with the [Kubernetes REST API](https://kubernetes.io/docs/concepts/overview/kubernetes-api/). JSON is also more portable than YAML, another data format popular among Kubernetes users, which support is lacking in the standard library of most programming languages.

Below is an example of output produced by `til`. Each element of the array represented by the `items` key is an individual Kubernetes API object:

```jsonc
{
  "apiVersion": "v1",
  "kind": "List",
  "items": [
    {
      "apiVersion": "example/v1",
      "kind": "SomeKind",
      "metadata": {
        "name": "some-name",
      },
      // ...
    },
    {
      "apiVersion": "example/v1",
      "kind": "OtherKind",
      "metadata": {
        "name": "other-name",
      },
      // ...
    },
    /*
       more Kubernetes API objects
    */
  ]
}
```
