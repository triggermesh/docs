# Event Target for Amazon Kinesis

This event Target receives [CloudEvents][ce] over HTTP and publishes the event to
Amazon Kinesis.

## Prerequisite(s)

- AWS API key and secret
- ARN for the Kinesis stream
- A Kinesis partition name to publish the events to

Consult the [Secrets](../guides/secrets.md) guide for more information about
how to add the AWS API specific secrets.

## Deploying an Instance of the Target

- **AWS Secret**: Reference a [TriggerMesh secret](../guides/secrets.md) containing an AWS API key and Secret as discussed in the [prerequisites](#prerequisites).
- **AWS ARN**: The ARN that points to the Amazon Kinesis stream.
- **Partition**: The Kinesis partition to publish the events to.

There is an optional toggle flag indicating if the full CloudEvent should be sent
to Kinesis. By default, this is disabled which means only the event payload
will be sent.

For more information about using Amazon Kinesis, please refer to the [AWS documentation][docs].

## Kubernetes

```yaml
apiVersion: targets.triggermesh.io/v1alpha1
kind: AWSKinesisTarget
metadata:
  name: triggermesh-aws-kinesis
spec:
  arn: arn:aws:kinesis:us-west-2:<PROJECT_ID>:stream/cabtest
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

## Event Types

The Amazon Kinesis event Target leaves the [CloudEvent][ce] type definition to the discretion of
the implementer given the flexible nature of Kinesis.

However, the response [CloudEvent][ce] would have the following payload:

| Name | Value | Description |
|---|---|---|
|**ce-type**|io.triggermesh.targets.aws.kinesis.result|Denotes a response payload from Kinesis|
|**ce-source**|`arn:aws:kinesis:...`|The Kinesis ARN value as configured by the target|
|**body**|[JSON][ce-jsonformat]|A JSON response from the Target invocation|



[ce]: https://cloudevents.io/
[docs]: https://docs.aws.amazon.com/kinesis/
[ce-jsonformat]: https://github.com/cloudevents/spec/blob/v1.0/json-format.md
