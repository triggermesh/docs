# Event Source for Amazon S3

This event source subscribes to event notifications from an [Amazon S3 bucket][s3-docs]. Events are published by S3 to
an [Amazon SQS queue][sqs-docs] in order to be consumable by the event source.

## Prerequisite(s)

* S3 Bucket
* Amazon Resource Name (ARN)
* API Credentials
* SQS Queue _(optional)_

### S3 Bucket

If you didn't already do so, create a S3 bucket by following the instructions at [Create your first S3
bucket][s3-create].

### Amazon Resource Name (ARN)

A fully qualified ARN is required to uniquely identify the Amazon S3 bucket.

!!! warning
    The ARN displayed in the AWS Console, which has the format `arn:aws:s3:::{bucket_name}`, lacks some essential
    information: the [AWS region][aws-region] and the [account ID][aws-acc-id]. Both must be included in the ARN by
    using the more complete format below:

    ```
    arn:aws:s3:{aws_region}:{aws_account_id}:{bucket_name}
    ```

    Without the region and account ID, this event source would be unable to set an accurate identity-based access policy
    on the SQS queue described in the [SQS Queue](#sqs-queue-optional) section of this document.

![S3 Bucket ARN](../images/awss3-source/arn-region-1.png)

### API Credentials

The TriggerMesh event source for Amazon S3 authenticates calls to the AWS API using AWS Access Keys. The page
[Understanding and getting your AWS credentials][accesskey] contains instructions to create access keys when signed-in
either as the root user or as an IAM user. Take note of the **Access Key ID** and **Secret Access Key**, they will be
used to create an instance of the event source.

It is considered a [good practice][iam-bestpractices] to create dedicated users with restricted privileges in order to
programmatically access AWS services. Permissions can be added or revoked granularly for a given IAM user by attaching
[IAM Policies][iam-policies] to it.

As an example, the following policy contains only the permissions required by the Amazon S3 event source to operate:

```json
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "S3SourceSetBucketConfig",
            "Effect": "Allow",
            "Action": [
                "s3:GetBucketNotification",
                "s3:PutBucketNotification"
            ],
            "Resource": "arn:aws:s3:::*"
        },
        {
            "Sid": "S3SourceConsumeMessages",
            "Effect": "Allow",
            "Action": [
                "sqs:GetQueueUrl",
                "sqs:ReceiveMessage",
                "sqs:DeleteMessage",
                "sqs:DeleteMessageBatch"
            ],
            "Resource": "arn:aws:sqs:*:*:*"
        }
    ]
}
```

Additionally, the following permissions are also required if you opt for letting the event source manage the SQS queue
for you (see next section for more information):

```json
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "S3SourceManageQueue",
            "Effect": "Allow",
            "Action": [
                "sqs:CreateQueue",
                "sqs:DeleteQueue",
                "sqs:GetQueueAttributes",
                "sqs:SetQueueAttributes",
                "sqs:GetQueueUrl",
                "sqs:ListQueueTags",
                "sqs:TagQueue"
            ],
            "Resource": "arn:aws:sqs:*:*:*"
        }
    ]
}
```

![IAM Policy](../images/awss3-source/iam-policy-1.png)

### SQS Queue _(optional)_

The TriggerMesh event source for Amazon S3 configures the S3 bucket to send [event notifications][s3-dest] to an [Amazon
SQS queue][sqs-docs].

By default, the source creates and manages a SQS queue for that purpose on behalf of the user. An identity-based policy
is set on that SQS queue to only accept messages originating from the configured S3 bucket.

Alternatively, in case you prefer not to delegate this responsibility to the event source, it is possible to provide
your own SQS queue as an event destination. In this scenario, it is your own responsibility to configure the queue
according to Amazon's documentation: [Configuring a bucket for notifications][s3-dest-config].

## Deploying an Instance of the Source

Open the Bridge creation screen and add a source of type `AWS S3`.

![Adding an Amazon S3 source](../images/awss3-source/create-bridge-1.png)

In the Source creation form, give a name to the event source and add the following information:

* [**Source secret**][accesskey]: Reference to a [TriggerMesh secret][tm-secret] containing an Access Key ID and a
  Secret Access Key to communicate with the AWS API, as described in the previous sections.
* [**Bucket ARN**][arn]: ARN of the S3 bucket. This ARN needs to include the AWS region and account ID, as described in the
  previous sections.
* [**Queue ARN**][arn]: _(optional)_ ARN of the SQS queue which acts as event destination, in case you prefer to manage
  this queue yourself as described in the previous sections.
* [**Event types**][s3-events]: List of event types to subscribe to.

![AWS S3 source form](../images/awss3-source/create-bridge-2.png)

After clicking the `Save` button, you will be taken back to the Bridge editor. Proceed by adding the remaining
components to the Bridge, then submit it.

![Bridge overview](../images/awss3-source/create-bridge-3.png)

A ready status on the main _Bridges_ page indicates that the event source is ready to receive notifications from the
Amazon S3 bucket.

![Bridge status](../images/awss3-source/create-bridge-4.png)

This can be confirmed by navigating to the _Properties_ tab of the S3 bucket in the AWS console, and ensuring that it
contains a new Event Notification targeting the SQS queue.

![Bucket - Event notification](../images/awss3-source/after-creation-1.png)

## Event Types

The TriggerMesh event source for Amazon S3 emits events of the following types:

* `com.amazon.s3.objectcreated`
* `com.amazon.s3.objectremoved`
* `com.amazon.s3.objectrestore`
* `com.amazon.s3.reducedredundancylostobject`
* `com.amazon.s3.replication`
* `com.amazon.s3.testevent`

[arn]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazons3.html#amazons3-resources-for-iam-policies
[accesskey]: https://docs.aws.amazon.com/general/latest/gr/aws-sec-cred-types.html#access-keys-and-secret-access-keys
[aws-region]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-regions-availability-zones.html
[aws-acc-id]: https://docs.aws.amazon.com/general/latest/gr/acct-identifiers.html
[aws-cli]: https://aws.amazon.com/cli/
[iam-bestpractices]: https://docs.aws.amazon.com/general/latest/gr/aws-access-keys-best-practices.html#iam-user-access-keys
[iam-policies]: https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html

[sqs-docs]: https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/welcome.html
[s3-docs]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/Welcome.html
[s3-create]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/creating-bucket.html
[s3-dest]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/NotificationHowTo.html
[s3-dest-config]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/ways-to-add-notification-config-to-bucket.html
[s3-events]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/notification-how-to-event-types-and-destinations.html

[tm-secret]: ../guides/secrets.md
