# Event Target for AWS S3

This event Target receives [CloudEvents][ce] over HTTP and invokes an AWS S3 endpoint.

## Prerequisite(s)

- AWS API key and secret
- ARN for the S3 bucket to store the event

Consult the [Secrets](../guides/secrets.md) guide for more information about
how to add the AWS API specific secrets.

The ARN for the S3 bucket must include the account number and region of a
pre-defined [access point][aws-s3-ap].

## Deploying an Instance of the Target

Open the Bridge creation screen and add a Target of type `AWS S3`.

![Adding an S3 Target](../images/aws-targets/aws-s3-bridge-create-1.png)

In the Target creation form, provide a name for the event Target and add the following information:

- **AWS Secret**: Reference a [TriggerMesh secret](../guides/secrets.md) containing an AWS API key and Secret as discussed in the [prerequisites](#prerequisites).
- **AWS ARN**: The ARN that points to the AWS S3 bucket.

There is an optional toggle flag indicating if the full CloudEvent should be sent
to S3 bucket. By default, this is disabled which means only the event payload
will be sent.

![AWS S3 Target form](../images/aws-targets/aws-s3-bridge-create-2.png)

After clicking the `Save` button, the console will self-navigate to the Bridge editor. Proceed by adding the remaining components to the Bridge.

![Bridge overview](../images/aws-targets/aws-s3-bridge-create-3.png)

After submitting the Bridge, and allowing for some configuration time, a green check mark on the main _Bridges_ page indicates that the Bridge with the AWS S3 Target was successfully created.

![Bridge status](../images/bridge-status-green.png)

For more information about using AWS S3, please refer to the [AWS documentation][docs].

## Event Types

Events of this type will store the event payload into an AWS S3 bucket.

The AWS S3 event Target leaves the [CloudEvent][ce] type definition to the discretion of
the implementer given the flexible nature of what can be stored in AWS S3.  There is
an exception if the `io.triggermesh.awss3.object.put` type is used where the target
will store the payload body regardless of the `Discard CloudEvent context attributes` setting.

The AWS S3 bucket key used to store the event is defined by the `ce-subject` attribute.
If `ce-subject` is not set, the default key will be: **ce-type**/**ce-source**/**ce-time**.

This type expects a [JSON][ce-jsonformat] payload with the following properties:

| Name | Value | Description |
|---|---|---|
|**ce-type**|io.triggermesh.awss3.object.put or user defined|Event type denoting the s3 put request|
|**ce-subject**|string|The key to use with the assigned bucket for the Target|
|**body**|[JSON][ce-jsonformat]|The data payload to store|


The response [CloudEvent][ce] would have the following payload:

| Name | Value | Description |
|---|---|---|
|**ce-type**|io.triggermesh.targets.aws.s3.result|Denotes a response payload from the S3 put request|
|**ce-source**|`arn:aws:s3:...`|The S3's bucket ARN value as configured by the target|
|**body**|[JSON][ce-jsonformat]|A JSON response from the Target invocation with the Etag associated with the request|


[ce]: https://cloudevents.io/
[docs]: https://docs.aws.amazon.com/s3/
[aws-s3-ap]: https://docs.aws.amazon.com/AmazonS3/latest/dev/access-points.html
[ce-jsonformat]: https://github.com/cloudevents/spec/blob/v1.0/json-format.md
