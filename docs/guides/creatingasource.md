# Creating a Source

!!! Info "Installation"
    Make sure you have completed the installation [procedure](installation.md) before continuing with any of the guides.

In this guide we will create a point to point Bridge between an AWS SQS queue and a microservice application called `sockeye` which displays events in a web interface. This simple flow is depicted below.

![](../assets/images/sqs-sockeye.png)

We will create:

- [x] The `sockeye` target which serves as an event display.
- [x] The `AWSSQSSource` which consumes events from an AWS SQS queue.

## Event display

First of all, we need to have a tool to see the events that come from our source.

Create a `sockeye` service by saving the following YAML manifest in a file called `sockeye.yaml` and applying it to your Kubernetes cluster:

```yaml
apiVersion: serving.knative.dev/v1
kind: Service
metadata:
  name: sockeye
spec:
  template:
    spec:
      containers:
        - image: docker.io/n3wscott/sockeye:v0.7.0@sha256:e603d8494eeacce966e57f8f508e4c4f6bebc71d095e3f5a0a1abaf42c5f0e48
```

```
kubectl apply -f sockeye.yaml
```

Open the web interface in a browser at the URL found with the following command:

```shell
$ kubectl get ksvc sockeye -o=jsonpath='{.status.url}'
```

## Create a AWS SQS Event source

You can explore the specification of the object using the `kubectl explain` command. You will see that you need the ARN (i.e Amazon Resource Name) of your AWS SQS queue and the AWS API keys that give you access to SQS.


```console
$ kubectl explain awssqssource.spec
KIND:     AWSSQSSource
VERSION:  sources.triggermesh.io/v1alpha1

RESOURCE: spec <Object>

DESCRIPTION:
     Desired state of the event source.

FIELDS:
   arn	<string> -required-
     ARN of the Amazon SQS queue to consume messages from. The expected format
     is documented at
     https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonsqs.html#amazonsqs-resources-for-iam-policies.

   credentials	<Object>
     Credentials to interact with the Amazon SQS API. For more information about
     AWS security credentials, please refer to the AWS General Reference at
     https://docs.aws.amazon.com/general/latest/gr/aws-security-credentials.html

   receiveOptions	<Object>
     Options that control the behavior of message receivers.

   sink	<Object> -required-
     The destination of events sourced from Amazon SQS.
```

Create a secret called `awscreds` which contains your access key and your secret key like so:

```console
kubectl create secret generic awscreds \
  --from-literal=access_key_id=<ACCESS_KEY_ID> \
  --from-literal=secret_access_key=<SECRET_ACCESS_KEY>
```

Then, write a YAML manifest for your SQS source similar to the one below. The following sample points to a SQS queue, referenced by its ARN and a secret called `awscreds`.


```yaml
apiVersion: sources.triggermesh.io/v1alpha1
kind: AWSSQSSource
metadata:
  name: sqs-guide
spec:
  arn: arn:aws:sqs:us-east-1:123456789012:triggermesh
  credentials:
    accessKeyID:
      valueFromSecret:
        key: access_key_id
        name: awscreds
    secretAccessKey:
      valueFromSecret:
        key: secret_access_key
        name: awscreds
  sink:
    ref:
      apiVersion: serving.knative.dev/v1
      kind: Service
      name: sockeye
```

Create this source with the `kubectl apply -f` command.

## Results

Verify that your source is ready with:

```console
$ kubectl get awssqssource
NAME          READY   REASON   SINK                                      AGE
sqs-guide     True             http://sockeye.sebgoa.svc.cluster.local   3m57s

```

You can go to the AWS SQS console and put a message in the queue as shown in the following screenshot:

![](../assets/images/sqs-console-send.png)

The message will get consumed by the source and sent directly to Sockeye in a [CloudEvent](https://cloudevents.io/) format. Below is a screenshot of Sockeye displaying the received event.

![](../assets/images/sqs-sockeye-ui.png)

## More about Sources

Learn more about Sources on the [Concepts page](../concepts/sources.md).
