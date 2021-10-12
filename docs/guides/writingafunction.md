# Writing a Function

The TriggerMesh `Function` API provides opportunities to implement custom event flow logic and may act as a source, transformation, or a target. Currently, Python, NodeJS, and Ruby runtimes are supported.

!!! Info "Prerequisites"
    You need a working TriggerMesh platform installation. See the [installation steps](installation.md).
    You can verify that the API is available with the following command:

    ```console
    $ kubectl get crd functions.extensions.triggermesh.io
    NAME                                  CREATED AT
    functions.extensions.triggermesh.io   2021-10-06T09:01:33Z
    ```

!!! Warning
    The TriggerMesh `Function` API is an opinionated, simple to consume, Function as a Service (FaaS) system. It is aimed to be used for event processing and does not support external dependencies. Functions that may need external dependencies are best served with [Knative Serving](https://knative.dev/docs/getting-started/first-service/).

## Example: A Python function

As an example, let's write a Python function which reads a name from an incoming payload and returns a "Hello" message.

Writing a function requires two steps:

- [ ] Writing a function manifest
- [ ] Applying the manifest to your Kubernetes cluster

The Function object spec requires a minimal amount of configuration:

* The `runtime`, here we choose `python`
* Whether the function is publicly accessible or not using the `public` keyword.
* The `entrypoint`, which specifies the name of the function
* The `code`, written in-line with the function manifest

Save the YAML manifest below in a file called `function.yaml`

```yaml
apiVersion: extensions.triggermesh.io/v1alpha1
kind: Function
metadata:
  name: python-function-hello
spec:
  runtime: python
  public: true
  entrypoint: endpoint
  code: |
    def endpoint(event, context):
      return "Hello " + event['name']
```

You can then create the function with:

```console
kubectl apply -f function.yaml
```

You have completed the two steps required to create a function

- [x] Writing a function manifest
- [x] Applying the manifest to your Kubernetes

You can find the public endpoint of your function and test it:

```console
$ kubectl get function
NAME                    ADDRESS                                                          READY   REASON
python-function-hello   https://python-function-hello-mvf2bk.sebgoa.dev.triggermesh.io   True

$ curl -ks -d '{"name":"seb"}' https://python-function-hello-mvf2bk.sebgoa.dev.triggermesh.io |jq
{
  "id": "62402f5a-0a82-48e8-8e67-db68d57efdf9",
  "type": "io.triggermesh.function.python",
  "source": "source.py",
  "specversion": "1.0",
  "time": "2021-10-11T16:26:49Z",
  "datacontenttype": "text/plain",
  "data": "Hello seb"
}
```

!!! note
    The returned event adheres to the [CloudEvent specification](https://cloudevents.io/).

## More about Functions

Learn more about Functions on the [Concepts page](../concepts/functions.md).
