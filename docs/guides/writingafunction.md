# Writing a Function

TriggerMesh Function CR provides ample opportunities to implement custom events
flow logic and can act as a source, transformation, or target. Currently,
Functions supports Python, NodeJS, and Ruby runtimes.

## Prerequisites

1. K8s cluster and configured kubectl
1. [Knative Serving and Eventing Operators](https://knative.dev/docs/admin/install/knative-with-operators/)
1. [TriggerMesh Function](https://github.com/triggermesh/function)

## Python function

The Function object spec requires a minimal amount of configuration.

```yaml
apiVersion: extensions.triggermesh.io/v1alpha1
kind: Function
metadata:
  name: inline-python-function
spec:
  runtime: python
  public: true
  entrypoint: endpoint
  code: |
    from random import randrange

    def endpoint(event, context):
      val = randrange(10)
      if (val % 2) == 0:
        return "even"

      else:
        return "odd"
```

After creating the sample function you should be able to send requests directly
to Python code and receive its responses.

```shell
curl $(kubectl get fn inline-python-function -o=jsonpath='{.status.address.url}')

{"id":"f20d13e6-cd0f-45af-b709-f1ed84d5afc4","type":"io.triggermesh.function.python","source":"source.py","specversion":"1.0","time":"2021-10-05T12:39:28Z","datacontenttype":"text/plain","data":"even"}
```

The main constraint while working with functions is that it does not support
external dependencies.

More details and examples can be found
[here](https://github.com/triggermesh/function#readme).
