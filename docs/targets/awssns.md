# Amazon SNS target

Sends event to [Amazon SNS](https://aws.amazon.com/sns/).

With `tmctl`:

```
tmctl create target awssns --arn <arn> --awsApiKey <awsApiKey> --awsApiSecret <awsApiSecret>
```

On Kubernetes:

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

There is an optional toggle flag indicating if the full CloudEvent should be sent
to SNS. By default, this is disabled which means only the event payload
will be sent.

Accepts events of any type.

Responds with events with the following attributes:

* type `io.triggermesh.targets.aws.sns.result`
* source `arn:aws:sns:...`, the SNS ARN value as configured by the target

See the [Kubernetes object reference](../../reference/targets/#targets.triggermesh.io/v1alpha1.AWSSNSTarget) for more details.

## Prerequisite(s)

- AWS API key and secret
- ARN for the SNS topic to invoke

For more information about using AWS Simple Notification Service, please refer to the [AWS documentation][docs].

[ce]: https://cloudevents.io/
[docs]: https://docs.aws.amazon.com/sns/
[ce-jsonformat]: https://github.com/cloudevents/spec/blob/v1.0/json-format.md
