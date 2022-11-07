# Amazon EventBridge source

## Kubernetes

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
