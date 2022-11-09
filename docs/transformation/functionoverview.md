# Function overview

TriggerMesh functions are used to perform transformations on events using code written in Python, NodeJS, or Ruby. These are not a replacement for full blown FaaS services, but provide a lot of flexibility when transforming events, particularly to those familiar with one of the support languages.

For low-code style transformations in JSON, refer to Bumblebee Transformations.

!!! Warning
    TriggerMesh Functions are opinionated and simple. They are aimed to be used for event transformation and do not support external dependencies. Functions that may need external dependencies are best served with something like [Knative Serving](https://knative.dev/docs/getting-started/first-service/).

## Functions on Kubernetes

The Function CRD is documented in the [API Reference](../reference/extensions.md)

!!! tip
    You can verify that the API is available with the following command:

    ```console
    $ kubectl get crd functions.extensions.triggermesh.io
    NAME                                  CREATED AT
    functions.extensions.triggermesh.io   2021-10-06T09:01:33Z
    ```

    You can also explore the API specification with:
    ```console
    $ kubectl explain functions
    ```

The specification of functions is available through `kubectl explain`. For example:

```console
kubectl explain function.spec
KIND:     Function
VERSION:  extensions.triggermesh.io/v1alpha1

RESOURCE: spec <Object>

DESCRIPTION:
     Desired state of the function.

FIELDS:
   ceOverrides	<Object>
     Defines overrides to control modifications of the event attributes.

   code	<string> -required-
     Function code.

   entrypoint	<string> -required-
     Function name to use as an entrypoint.

   eventStore	<Object>
     EventStore service connection string.

   public	<boolean>
     Should the function be publicly available.

   responseIsEvent	<boolean>
     Whether function responds with CE payload only or with full event.

   runtime	<string> -required-
     Function runtime name. Python, Ruby or Node runtimes are currently
     supported.

   sink	<Object>
     Sink is a reference to an object that will resolve to a uri to use as the
     sink.
```
