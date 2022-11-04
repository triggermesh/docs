# Event Target for AWS Lambda

This event Target receives [CloudEvents][ce] over HTTP and invokes an AWS Lambda function.

## Prerequisite(s)

- AWS API key and secret
- ARN for the Lambda to invoke

Consult the [Secrets](../guides/secrets.md) guide for more information about
how to add the AWS API specific secrets.

## Deploying an Instance of the Target

- **AWS Secret**: Reference a [TriggerMesh secret](../guides/secrets.md) containing an AWS API key and Secret as discussed in the [prerequisites](#prerequisites).
- **AWS ARN**: The ARN that points to the AWS Lambda function to invoke

There is an optional toggle flag indicating if the full CloudEvent should be sent
to the lambda function. By default, this is disabled which means only the event payload
will be sent.

```yaml
apiVersion: targets.triggermesh.io/v1alpha1
kind: AWSLambdaTarget
metadata:
  name: triggermesh-aws-lambda
spec:
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
For more information about using AWS Lambda, please refer to the [AWS documentation][docs].

## Triggering an AWS Lambda via the Target

The AWS Lambda can be triggered as a normal web service using a
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

## Event Types

The AWS Lambda event Target leaves the [CloudEvent][ce] type definition to the discretion of
the implementer given the flexible nature of AWS Lambda.

However, the response [CloudEvent][ce] would have the following payload:

| Name | Value | Description |
|---|---|---|
|**ce-type**|io.triggermesh.targets.aws.lambda.result|Denotes a response payload from the Lambda function|
|**ce-source**|`arn:aws:lambda:...`|The Lambda's ARN value as configured by the target|
|**body**|[JSON][ce-jsonformat]|A JSON response from the Target invocation|



[ce]: https://cloudevents.io/
[docs]: https://docs.aws.amazon.com/lambda/
[ce-jsonformat]: https://github.com/cloudevents/spec/blob/v1.0/json-format.md
