# Event Target for Amazon SQS

This event Target receives [CloudEvents][ce] over HTTP and invokes an Amazon SQS endpoint.

## Prerequisite(s)

- AWS API key and secret
- ARN for the SQS queue to invoke

Consult the [Secrets](../guides/secrets.md) guide for more information about
how to add the AWS API specific secrets.

## Deploying an Instance of the Target

- **AWS Secret**: Reference a [TriggerMesh secret](../guides/secrets.md) containing an AWS API key and Secret as discussed in the [prerequisites](#prerequisites).
- **AWS ARN**: The ARN that points to the Amazon SQS queue.

There is an optional toggle flag indicating if the full CloudEvent should be sent
to SQS. By default, this is disabled which means only the event payload
will be sent.

For more information about using AWS Simple Queue Service, please refer to the [AWS documentation][docs].

## Kubernetes

```yaml
apiVersion: targets.triggermesh.io/v1alpha1
kind: AWSSQSTarget
metadata:
  name: triggermesh-aws-sqs
spec:
  arn: arn:aws:sqs:us-west-2:<PROJECT_ID>:cab-knative-event-test
  awsApiKey:
    secretKeyRef:
      name: aws
      key: AWS_ACCESS_KEY_ID
  awsApiSecret:
    secretKeyRef:
      name: aws
      key: AWS_SECRET_ACCESS_KEY
```

## Event Types

The Amazon SQS event Target leaves the [CloudEvent][ce] type definition to the discretion of
the implementer given the flexible nature of Amazon SQS.

However, the response [CloudEvent][ce] would have the following payload:

| Name | Value | Description |
|---|---|---|
|**ce-type**|io.triggermesh.targets.aws.sqs.result|Denotes a response payload from SQS|
|**ce-source**|`arn:aws:sqs:...`|The SQS ARN value as configured by the target|
|**body**|[JSON][ce-jsonformat]|A JSON response from the Target invocation|



[ce]: https://cloudevents.io/
[docs]: https://docs.aws.amazon.com/sqs/
[ce-jsonformat]: https://github.com/cloudevents/spec/blob/v1.0/json-format.md
