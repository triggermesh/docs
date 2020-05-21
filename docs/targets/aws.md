# AWS Target for Knative Eventing

This event target allows for invoking several types of AWS services.  Currently,
this target supports:
  * Lambdas
  * SNS
  * SQS
  * Kinesis

## Prerequisites

Utilizing any of the AWS services requires that they already exist, and the AWS
credentials in use will have access to invoke the underlying services.

## Controller Deployment

### Kubernetes Manifests

// TODO use our images

### From Code

You can use the [ko](https://github.com/google/ko) tool to compile and deploy from source.

```console
ko create -f ./config
```

## Adding the AWS Secrets

A set of AWS API keys will need to be created and added to the same namespace
hosting the target, and would resemble:

```yaml
apiVersion: v1
kind: Secret
metadata:
  name: aws
type: Opaque
stringData:
  AWS_ACCESS_KEY_ID: <REPLACE ME WITH A REAL KEY>
  AWS_SECRET_ACCESS_KEY: <REPLACE ME WITH A REAL SECRET>
```

## Creating an AWS Service Target

Once the AWS Target Controller has been deployed, a target for Lambdas, SNS, and
 SQS can be created by defining an AwsTarget object:

```yaml
apiVersion: targets.triggermesh.io/v1alpha1
kind: AWSTarget
metadata:
  name: triggermesh-aws-lambda
spec:
  lambda:
    arn: arn:aws:lambda:us-west-2:043455440429:function:snslistener
  awsApiKey:
    secretKeyRef:
      name: aws
      key: AWS_ACCESS_KEY_ID
  awsApiSecret:
    secretKeyRef:
      name: aws
      key: AWS_SECRET_ACCESS_KEY
```

The sub spec can be one of: lambda, sns, sqs, or kenisis.  Note that the Kinesis target will be a little different:
```yaml
apiVersion: targets.triggermesh.io/v1alpha1
kind: AWSTarget
metadata:
  name: triggermesh-aws-kinesis
spec:
  kinesis:
    arn: arn:aws:kinesis:us-west-2:043455440429:stream/cabtest
    partition: "test"
  awsApiKey:
    secretKeyRef:
      name: aws
      key: AWS_ACCESS_KEY_ID
  awsApiSecret:
    secretKeyRef:
      name: aws
      key: AWS_SECRET_ACCESS_KEY
```

_NOTE: The `AWS_ACCESS_KEY` and `AWS_SECRET_ACCESS_KEY` secrets must be installed
and accessible to the target service_.

## AWS Target as an Event Sink

Lastly, a triggering mechanism needs to be added to listen for a Knative
event.

```yaml
apiVersion: eventing.knative.dev/v1beta1
kind: Trigger
metadata:
  name: aws-sample-lambda-trigger
spec:
  broker: default
  subscriber:
    ref:
      apiVersion: targets.triggermesh.io/v1alpha1
      kind: AWSTarget
      name: triggermesh-aws-lambda

```

For additional samples, take a look at the [samples](samples/) path.

## Triggering an AWS Service via the Target

The AWS Target can be triggered as a normal web service using a
tool such as `curl` within the cluster.  A sample message would resemble the
following:

```console
curl -v http://triggermesh-aws-lambda.default.svc.cluster.local \
 -X POST \
 -H "Content-Type: application/json" \
 -H "Ce-Specversion: 1.0" \
 -H "Ce-Type: dev.knative.source.aws" \
 -H "Ce-Source: awesome/instance" \
 -H "Ce-Id: 536808d3-88be-4077-9d7a-a3f162705f79" \
 -d '{"greeting":"Hi from TriggerMesh"}'
```