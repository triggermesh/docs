## Kubernetes

```yaml
apiVersion: sources.triggermesh.io/v1alpha1
kind: AWSCloudWatchLogsSource
metadata:
  name: sample
spec:
  arn: 'arn:aws:logs:us-west-2:123456789012:log-group:/aws/lambda/lambdadumper:*'
  pollingInterval: 5m

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
