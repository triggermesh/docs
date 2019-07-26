## Generate the scaffolding

To ease user on-boarding `tm` has a currently experimental feature to generate a scaffolfing. To generate the scaffolding for a simple Python function do:

```
tm generate python
```

Currently it creates a directory named `python`, this will soon be customizable. Check the scaffolding:

```
tree python
python
├── handler.py
└── serverless.yaml
```

## Deploy the function

To deploy the function you use a single command:

```
tm deploy -f python --wait
```

The `--wait` allows you to wait till all resources enter ready state. Shortly thereafter you will be presented with a URL for your function (i.e a Knative service):

```
$ tm deploy -f python --wait
Uploading "python" to demo-service-python-function-mcsgp-pod-6dfb31
Waiting for taskrun "demo-service-python-function-mcsgp" ready state
Creating "demo-service-python-function" service
Waiting for service "demo-service-python-function" ready state
Service demo-service-python-function URL: http://demo-service-python-function-sebgoa.k.triggermesh.io
```

You will be able to call it easily:

```
$ curl http://demo-service-python-function-sebgoa.k.triggermesh.io
{"message": "Hello, the current time is 07:51:46.853233"}
```

## How does this work

While this seems straightforward there is a bit of magic being the scene. That's because the Python function being deployed does not have any invoker, it needs to be wrapped into a function runtime.

At TriggerMesh we have developed the Knative Lambda Runtime ([https://github.com/triggermesh/knative-lambda-runtime](https://github.com/triggermesh/knative-lambda-runtime)) which can deploy an AWS Lambda function to a Knative cluster. We discussed it at length on the [AWS blog](https://triggermesh.com/2019/03/aws-open-source-blog-deploying-aws-lambda-compatible-functions-in-amazon-eks-using-triggermesh-klr/).

With the scaffolding in place, the `serverless.yaml` manifest makes a reference to the KLR runtime:

```
service: demo-service
description: Sample knative service

provider:
  name: triggermesh
  registry: knative.registry.svc.cluster.local

functions:
  python-function:
    source: handler.py
    runtime: https://raw.githubusercontent.com/triggermesh/runtime-build-tasks/master/aws-lambda/python37-runtime.yaml
    buildargs:
    - HANDLER=handler.endpoint
    environment:
      EVENT: API_GATEWAY
```

In this runtime you will see a `Task` object that comes from the [Tekton project](https://github.com/tektoncd/pipeline). Hence in one command `tm deploy` we create a Task and execute it to build a container image that injects the function into our KLR AWS compatible runtime. This allows us to take an existing lambda function and deploy it to Knative in a Serverless framework manner.

Check the [runtime URL](https://raw.githubusercontent.com/triggermesh/runtime-build-tasks/master/aws-lambda/python37-runtime.yaml) to see how Tekton comes into play.

## Tear everything down

Deleting everything is straightforward:

```
$ tm delete -f python
Deleting demo-service-python-function
```

We hope you enjoyed it, if you have any feedback on the use of `tm` or Knative and Tekton don't hesitate to leave us an [issue](https://github.com/triggermesh/tm/issues) or contact us at info@triggermesh.com

