# Amazon EventBridge source

Consumes events from [AWS EventBridge](https://aws.amazon.com/eventbridge/).

With `tmctl`:

```
tmctl create source awseventbridge --arn <arn> --auth.credentials.accessKeyID <keyID> --auth.credentials.secretAccessKey <key>
```

On Kubernetes:

```yaml
apiVersion: sources.triggermesh.io/v1alpha1
kind: AWSEventBridgeSource
metadata:
  name: sample
spec:
  arn: arn:aws:events:us-west-2:123456789012:event-bus/triggermeshtest

  # optional. Defaults to catch-all
  # https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-event-patterns.html
  eventPattern: |
    {
      "source": ["aws.ec2"],
      "detail-type": ["EC2 Instance State-change Notification"],
      "detail": {
        "state": ["terminated"]
      }
    }
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

When TriggerMesh is running on Amazon EKS, you can use an IAM role for authentication rather than an access key and secret. In this case, TriggerMesh will generate a Kubernetes service account for you that will leverage this IAM role. You also have the option of specifying your own service account name, and if a service account with the same name already exists and it is already managed by the TriggerMesh controller, then it will be reused. By reusing the same serivce account in this way, you can avoid having to create many STS trust relationships for each generated service account.

```yaml
auth:
  iam:
    roleArn: arn:aws:iam::123456789012:role/dev-role
    serviceAccount: aws-source-sa
```

For more details on authenticating with AWS, please take a look at our [dedicated guide on AWS credentials](../guides/credentials/awscredentials.md).

!!! Note

    The TriggerMesh event source for Amazon EventBridge configures EventBridge to send events to an [Amazon
    SQS queue][sqs-docs]. See section SQS Queue below for details.

Events produced have the following attributes:

* type `com.amazon.events.event`

See the [Kubernetes object reference](../../reference/sources/#sources.triggermesh.io/v1alpha1.AWSEventBridgeSource) for more details.

### SQS Queue _(optional)_

The TriggerMesh event source for Amazon EventBridge configures EventBridge to send event notifications to an [Amazon
SQS queue][sqs-docs].

By default, the source creates and manages a SQS queue for that purpose on behalf of the user.

Alternatively, in case you prefer not to delegate this responsibility to the event source, it is possible to provide
your own SQS queue as an event destination. In this scenario, it is your own responsibility to configure the queue as needed.

[sqs-docs]: https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/welcome.html
