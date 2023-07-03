# Amazon Kinesis target

Sends events to [Amazon Kinesis](https://aws.amazon.com/kinesis/).

With `tmctl`:

```
tmctl create target awskinesis --partition <partition> --arn <arn> --auth.credentials.accessKeyID <access key> --auth.credentials.secretAccessKey <secret key>
```

On Kubernetes:

Secret

```yaml
apiVersion: v1
kind: Secret
metadata:
  name: aws
type: Opaque
stringData:
  AWS_ACCESS_KEY_ID: "<AWS Access Key ID>"
  AWS_SECRET_ACCESS_KEY: "<AWS Secret Access Key>"
```

Target

```yaml
apiVersion: targets.triggermesh.io/v1alpha1
kind: AWSKinesisTarget
metadata:
  name: triggermesh-aws-kinesis
spec:
  arn: arn:aws:kinesis:us-west-2:<PROJECT_ID>:stream/cabtest
  partition: "test"
  auth:
    credentials:
      accessKeyID:
        valueFromSecret:
          name: aws
          key: AWS_ACCESS_KEY_ID
      secretAccessKey:
        valueFromSecret:
          name: aws
          key: AWS_SECRET_ACCESS_KEY
```

When TriggerMesh is running on Amazon EKS, you can use an IAM role for authentication rather than an access key and secret. In this case, TriggerMesh will generate a Kubernetes service account for you that will leverage this IAM role. You also have the option of specifying your own service account name, and if a service account with the same name already exists and it is already managed by the TriggerMesh controller, then it will be reused. By reusing the same serivce account in this way, you can avoid having to create many STS trust relationships for each generated service account.

```yaml
auth:
  iam:
    roleArn: arn:aws:iam::123456789012:role/dev-role
    serviceAccount: aws-source-sa
```

For more details on authenticating with AWS, please take a look at our [dedicated guide on AWS credentials](../guides/credentials/awscredentials.md).

`partition` is the Kinesis partition to publish the events to.

There is an optional toggle flag indicating if the full CloudEvent should be sent
to Kinesis. By default, this is disabled which means only the event payload
will be sent.

Accepts events of any type.

Responds with events with the following attributes:

* type `io.triggermesh.targets.aws.kinesis.result`
* source `arn:aws:kinesis:...`, the Kinesis ARN value as configured by the target
* Schema of the `data` attribute: []()

See the [Kubernetes object reference](../../reference/targets/#targets.triggermesh.io/v1alpha1.AWSKinesisTarget) for more details.

## Prerequisite(s)

- AWS API key and secret
- ARN for the Kinesis stream
- A Kinesis partition name to publish the events to

For more information about using Amazon Kinesis, please refer to the [AWS documentation][docs].

[ce]: https://cloudevents.io/
[docs]: https://docs.aws.amazon.com/kinesis/
[ce-jsonformat]: https://github.com/cloudevents/spec/blob/v1.0/json-format.md
