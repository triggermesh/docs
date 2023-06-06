# Python functions

## Python function example on K8s

As an example, let's write a Python function which reads a name from an incoming payload and returns a "Hello" message.

Writing a function requires two steps:

- [x] Writing a function manifest
- [x] Applying the manifest to your Kubernetes cluster

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
  adapterOverrides:
    public: true
  entrypoint: endpoint
  code: |
    import json
    def endpoint(event, context):
      jsonEvent = json.loads(event)
      return "Hello " + jsonEvent['name']
```

You can then create the function with:

```console
kubectl apply -f function.yaml
```

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

## Python random even/odd events example

```YAML
apiVersion: extensions.triggermesh.io/v1alpha1
kind: Function
metadata:
  name: inline-python-function
spec:
  runtime: python
  responseIsEvent: true
  adapterOverrides:
    public: true
  ceOverrides:
    extensions:
      type: io.triggermesh.python.sample
  entrypoint: endpoint
  code: |
    from random import randrange
    def endpoint(event, context):
      val = randrange(10)
      if (val % 2) == 0:
        result = {
          "type" : "io.triggermesh.klr.even",
          "datacontenttype" : "application/json",
          "data" : {
            "value" : val
          }
        }
      else:
        result = {
          "type" : "io.triggermesh.klr.odd",
          "datacontenttype" : "application/json",
          "data" : {
            "value" : val
          }
        }
      return result
```
