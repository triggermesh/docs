# Amazon SQS target

Sends events to [Amazon SQS](https://aws.amazon.com/sqs/).

With `tmctl`:

```
tmctl create target awssqs --arn <arn> --awsApiKey <awsApiKey> --awsApiSecret <awsApiSecret>
```

On Kubernetes:

```yaml
apiVersion: targets.triggermesh.io/v1alpha1
kind: AWSSQSTarget
metadata:
  name: triggermesh-aws-sqs
spec:
  arn: arn:aws:sqs:us-west-2:<PROJECT_ID>:cab-knative-event-test
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
to SQS. By default, this is disabled which means only the event payload
will be sent.

Accepts events of any type.

Responds with events with the following attributes:

* type `io.triggermesh.targets.aws.sqs.result`
* source `arn:aws:sqs:...`, the SQS ARN value as configured by the target

You can test the Target by sending it an event using `curl`:

See the [Kubernetes object reference](../../reference/targets/#targets.triggermesh.io/v1alpha1.AWSSQSTarget) for more details.

## Prerequisite(s)

- AWS API key and secret
- ARN for the SQS queue to invoke

For more information about using AWS Simple Queue Service, please refer to the [AWS documentation][docs].

[ce]: https://cloudevents.io/
[docs]: https://docs.aws.amazon.com/sqs/
[ce-jsonformat]: https://github.com/cloudevents/spec/blob/v1.0/json-format.md
