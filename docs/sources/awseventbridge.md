# Amazon EventBridge source

Consumes events from [AWS EventBridge](https://aws.amazon.com/eventbridge/)).

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
      apiVersion: eventing.knative.dev/v1
      kind: Broker
      name: default
```

Alternatively you can use an IAM role for authentication instead of an access key and secret (Amazon EKS only):

```yaml
auth:
  iamrole: arn:aws:iam::123456789012:role/foo
```

Events produced have the following attributes:

* type `com.amazon.events.event`

See the [Kubernetes object reference](../../reference/sources/#sources.triggermesh.io/v1alpha1.AWSEventBridgeSource) for more details.
