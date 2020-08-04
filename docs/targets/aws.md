# AWS Target for Knative Eventing

This event target receives [CloudEvents][ce] over HTTP, and can send to a
defined AWS service.  Currently, this target supports:

  - Lambdas
  - SNS
  - SQS
  - Kinesis

## Prerequisites

Utilizing any of the AWS services requires that the targeted services already 
exist, and the AWS API credentials in use will have access to invoke the
underlying services.

## Creating an AWS Service Target

At Triggermesh, create a new aws secret based on the API credentials from the 
prerequisites.

A sample target would resemble the following:
```yaml
apiVersion: targets.triggermesh.io/v1alpha1
kind: AWSTarget
metadata:
  name: <UNIQUE TARGET NAME>
spec:
  <AWS SERVICE>:
    arn: <SERVICE ARN>
    partition: <KINESIS PARTITION>
  awsApiKey:
    secretKeyRef:
      name: aws
      key: aws_access_key_id
  awsApiSecret:
    secretKeyRef:
      name: aws
      key: aws_secret_access_key
```

When used in the Bridge, ensure that the Generic Target is used, and when copying the sample target yaml from above, replace `<AWS SERVICE>` with:

  - lambda
  - sns
  - sqs
  - kinesis

In addition, the `partition` line is required and the `<KINESIS PARTITION>` entry
will need to be updated with the Kinesis partition name.  Otherwise, it can be removed.

Lastly, update `<UNIQUE TARGET NAME>` to reflect a name for the target that will be referenced by the bridge trigger.

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

*NOTE*: The body of the event is freeform and meant to be interpreted by the
target service.

[ce]: https://cloudevents.io
