# Event Target for Amazon SNS

This event Target receives [CloudEvents][ce] over HTTP and invokes an Amazon SNS endpoint.

## Prerequisite(s)

- AWS API key and secret
- ARN for the SNS topic to invoke

Consult the [Secrets](../guides/secrets.md) guide for more information about
how to add the AWS API specific secrets.

## Deploying an Instance of the Target

Open the Bridge creation screen and add a Target of type `Amazon SNS`.

![Adding an SNS Target](../../assets/images/aws-targets/aws-sns-bridge-create-1.png)

In the Target creation form, provide a name for the event Target and add the following information:

- **AWS Secret**: Reference a [TriggerMesh secret](../guides/secrets.md) containing an AWS API key and Secret as discussed in the [prerequisites](#prerequisites).
- **AWS ARN**: The ARN that points to the Amazon SNS topic.

There is an optional toggle flag indicating if the full CloudEvent should be sent
to SNS. By default, this is disabled which means only the event payload
will be sent.

![Amazon SNS Target form](../../assets/images/aws-targets/aws-sns-bridge-create-2.png)

After clicking the `Save` button, the console will self-navigate to the Bridge editor. Proceed by adding the remaining components to the Bridge.

![Bridge overview](../../assets/images/aws-targets/aws-sns-bridge-create-3.png)

After submitting the Bridge, and allowing for some configuration time, a green check mark on the main _Bridges_ page indicates that the Bridge with the Amazon SNS Target was successfully created.

![Bridge status](../../assets/images/bridge-status-green.png)

For more information about using AWS Simple Notification Service, please refer to the [AWS documentation][docs].

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
