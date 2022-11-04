# Event Target for Amazon SNS

This event Target receives [CloudEvents][ce] over HTTP and invokes an Amazon SNS endpoint.

## Prerequisite(s)

- AWS API key and secret
- ARN for the SNS topic to invoke

Consult the [Secrets](../guides/secrets.md) guide for more information about
how to add the AWS API specific secrets.

## Deploying an Instance of the Target

- **AWS Secret**: Reference a [TriggerMesh secret](../guides/secrets.md) containing an AWS API key and Secret as discussed in the [prerequisites](#prerequisites).
- **AWS ARN**: The ARN that points to the Amazon SNS topic.

There is an optional toggle flag indicating if the full CloudEvent should be sent
to SNS. By default, this is disabled which means only the event payload
will be sent.

For more information about using AWS Simple Notification Service, please refer to the [AWS documentation][docs].

## Kubernetes

```yaml
apiVersion: targets.triggermesh.io/v1alpha1
kind: AWSSNSTarget
metadata:
  name: triggermesh-aws-sns
spec:
  arn: arn:aws:sns:us-west-2:<PROJECT_ID>:tmtest
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

The Amazon SNS event Target leaves the [CloudEvent][ce] type definition to the discretion of
the implementer given the flexible nature of Amazon SNS.

However, the response [CloudEvent][ce] would have the following payload:

| Name | Value | Description |
|---|---|---|
|**ce-type**|io.triggermesh.targets.aws.sns.result|Denotes a response payload from SNS|
|**ce-source**|`arn:aws:sns:...`|The SNS ARN value as configured by the target|
|**body**|[JSON][ce-jsonformat]|A JSON response from the Target invocation|



[ce]: https://cloudevents.io/
[docs]: https://docs.aws.amazon.com/sns/
[ce-jsonformat]: https://github.com/cloudevents/spec/blob/v1.0/json-format.md
