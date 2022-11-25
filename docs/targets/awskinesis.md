# Amazon Kinesis target

Sends events to [Amazon Kinesis](https://aws.amazon.com/kinesis/).

With `tmctl`:

```
tmctl create target awskinesis --partition <partition> --arn <arn> --awsApiKey <awsApiKey> --awsApiSecret <awsApiSecret>
```

On Kubernetes:

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
