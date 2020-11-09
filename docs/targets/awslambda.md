# Event Target for AWS Lambda

This event Target receives [CloudEvents][ce] over HTTP and invokes an AWS
Lambda function.

## Prerequisites

1. AWS API key and secret

1. ARN for the Lambda to invoke

Consult the [Secrets](../guides/secrets.md) guide for more information about
how to add the AWS API specific secrets.

## Deploying an Instance of the Target

Open the Bridge creation screen and add a Target of type `AWS Lambda`.

![Adding a Lambda Target](../images/aws-targets/aws-lambda-bridge-create-1.png)

In the Target creation form, provide a name for the event Target, and add the following information:

* **AWS Secret**: Reference a [TriggerMesh secret][tm-secret] containing an AWS API key and Secret as discussed in the prerequisites
* **AWS ARN**: The ARN that points to the AWS Lambda function to invoke

There is an optional toggle flag indicating if the full CloudEvent should be sent
to the lambda function. By default, this is disabled which means the event payload
will be sent only.

![AWS Lambda Target form](../images/aws-targets/aws-lambda-bridge-create-2.png)

After clicking the `Save` button, the console will self-navigate to the Bridge editor. Proceed by adding the remaining components to the Bridge.

![Bridge overview](../images/aws-targets/aws-lambda-bridge-create-3.png)

After submitting the bridge, and allowing some configuration time, a green check mark on the main _Bridges_ page indicates that the bridge with the AWS Lambda Target was successfully created.

![Bridge status](../images/bridge-status-green.png)

For more information about using AWS Lambdas, please refer to the [AWS documentation][docs].

## Event Types

The AWS Lambda Target leaves the [CloudEvent][ce] type definition to the discretion of
the implementer given the flexible nature of AWS Lambdas.

However, the response [CloudEvent][ce] would have the following payload:

| Name | Value | Description |
|---|---|---|
|**ce-type**|io.triggermesh.targets.aws.lambda.result|Denotes a response payload from the Lambda function|
|**ce-source**|`arn:aws:lambda:...`|The Lambda's ARN value as configured by the target|
|**body**|[JSON][ce-jsonformat]|A JSON response from the Target invocation|



[ce]: https://cloudevents.io/
[docs]: https://docs.aws.amazon.com/lambda/
[ce-jsonformat]: https://github.com/cloudevents/spec/blob/v1.0/json-format.md
