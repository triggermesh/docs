# Function overview

TriggerMesh functions are used to perform transformations on events using code written in Python, NodeJS, or Ruby. These are not a replacement for full blown FaaS services, but provide a lot of flexibility when transforming events, particularly to those familiar with one of the support languages.

For low-code style transformations in JSON, refer to [JSON Transformation](../jsontransformation.md).

!!! Info
    TriggerMesh functions with `tmctl` is a work in progress and not currently supported.

    Furthermore, note that TriggerMesh Functions are opinionated and simple. They are aimed to be used for event transformation and do not support external dependencies. Functions that may need external dependencies are best served with something like AWS Lambda or [Knative Functions](https://knative.dev/docs/functions/).

See the [Kubernetes object reference](../../reference/extensions/#extensions.triggermesh.io/v1alpha1.Function) for the Function reference docs.

## Common function configuration options

Below are some parameters you can configure in the function CRD, that apply to all function runtimes. 

| Parameter                 | Description                                                  |
| ------------------------- | ------------------------------------------------------------ |
| `adapterOverrides.public` | Boolean. If true, function will be allocated a public URL so that it can be accessed from outside the cluster. Default is false.  |
| `ceOverrides.extensions`  | Can be used to modify the values of CloudEvents attributes in the event return by the function back to the caller. |
| `responseIsEvent`  | Boolean. If false, the function will wrap what is returned by the function into the `data` attribute of a CloudEvent and respond back to the caller with it. It will add default CloudEvent metadata attributes, unless values are overriden in `ceOverrides`. If true, expects the user to have returned a complete CloudEvent object, and will no wrap it into the `data` attribute of a new CloudEvent. |
| `entrypoint`  | Name of the function to be used as an entry point in the code.  |
| `runtime`  | Currently supported runtime values are `python`, `node`, and `ruby`.  |