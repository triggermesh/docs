# Amazon S3 source

This event source subscribes to event notifications from an [Amazon S3 bucket][s3-docs]. Events are published by S3 to
an [Amazon SQS queue][sqs-docs] in order to be consumable by the event source.

With `tmctl`:

```
tmctl create source awss3 --arn <arn> --eventTypes <eventTypes> --auth.credentials.accessKeyID <keyID> --auth.credentials.secretAccessKey <key>
```

On Kubernetes:

```yaml
apiVersion: sources.triggermesh.io/v1alpha1
kind: AWSS3Source
metadata:
  name: sample
spec:
  arn: arn:aws:s3:::triggermeshtest

  eventTypes:
  - s3:ObjectCreated:*
  - s3:ObjectRemoved:*

  auth:
    credentials:
      accessKeyID:
        valueFromSecret:
          name: awscreds
          key: aws_access_key_id
      secretAccessKey:
        valueFromSecret:
          name: awscreds
          key: aws_secret_access_key

  sink:
    ref:
      apiVersion: eventing.triggermesh.io/v1alpha1
      kind: RedisBroker
      name: triggermesh
```

Alternatively you can use an IAM role for authentication instead of an access key and secret, for Amazon EKS only:

```yaml
auth:
  iamRole: arn:aws:iam::123456789012:role/foo
```

For details on authenticating with AWS, please take a look at our [dedicated guide on AWS credentials](../guides/credentials/awscredentials.md).

Parameters:

- [**Bucket ARN**][arn]: ARN of the S3 bucket, as described in the previous sections.
- [**Queue ARN**][arn]: _(optional)_ ARN of the SQS queue which acts as event destination, in case you prefer to manage
  this queue yourself as described in the previous sections.
- [**Event types**][s3-events]: List of event types to subscribe to.

!!! Note

    The TriggerMesh event source for Amazon S3 configures the S3 bucket to send [event notifications][s3-dest] to an [Amazon
    SQS queue][sqs-docs]. See section SQS Queue below for details.

Events produced have the following attributes:

* types
    - `com.amazon.s3.objectcreated`
    - `com.amazon.s3.objectremoved`
    - `com.amazon.s3.objectrestore`
    - `com.amazon.s3.reducedredundancylostobject`
    - `com.amazon.s3.replication`
    - `com.amazon.s3.testevent`
* Schema of the `data` attribute: [com.amazon.s3.event.json](https://raw.githubusercontent.com/triggermesh/triggermesh/main/schemas/com.amazon.s3.event.json)

See the [Kubernetes object reference](../../reference/sources/#sources.triggermesh.io/v1alpha1.AWSS3Source) for more details.

## Prerequisite(s)

- S3 Bucket
- Amazon Resource Name (ARN)
- SQS Queue _(optional)_

### S3 Bucket

If you didn't already do so, create a S3 bucket by following the instructions at [Create your first S3
bucket][s3-create].

### Amazon Resource Name (ARN)

A fully qualified ARN is required to uniquely identify the Amazon S3 bucket.

!!! note
    Although not technically required by S3, the ARN provided to this event source _may_ include an [AWS
    region][aws-region] and [account ID][aws-acc-id], in addition to the bucket name. When this information is provided,
    it is used to set an accurate identity-based access policy between the S3 bucket and the reconciled SQS queue,
    unless a user-managed queue is provided as described in the [SQS Queue](#sqs-queue-optional) section of this
    document.

    The format of such ARN is:

    ```
    arn:aws:s3:{aws_region}:{aws_account_id}:{bucket_name}
    ```

    This information is purely optional and will be determined automatically if not provided.

![S3 Bucket ARN](../assets/images/awss3-source/arn-region-1.png)

### SQS Queue _(optional)_

The TriggerMesh event source for Amazon S3 configures the S3 bucket to send [event notifications][s3-dest] to an [Amazon
SQS queue][sqs-docs].

By default, the source creates and manages a SQS queue for that purpose on behalf of the user. An identity-based policy
is set on that SQS queue to only accept messages originating from the configured S3 bucket.

Alternatively, in case you prefer not to delegate this responsibility to the event source, it is possible to provide
your own SQS queue as an event destination. In this scenario, it is your own responsibility to configure the queue
according to Amazon's documentation: [Configuring a bucket for notifications][s3-dest-config].

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

[tm-secret]: ../secrets.md
