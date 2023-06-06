# AWS CloudWatch Logs source

Consumes logs from [Amazon CloudWatch Logs](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/WhatIsCloudWatchLogs.html).

With `tmctl`:

```
tmctl create source awscloudwatchlogs --arn <arn> --auth.credentials.accessKeyID <keyID> --auth.credentials.secretAccessKey <key>
```

On Kubernetes:

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
Events produced have the following attributes:

* type `com.amazon.logs.log`
* source `<arn>`
* Schema of the `data` attribute: [com.amazon.logs.log.json](https://raw.githubusercontent.com/triggermesh/triggermesh/main/schemas/com.amazon.logs.log.json)

See the [Kubernetes object reference](../../reference/sources/#sources.triggermesh.io/v1alpha1.AWSCloudWatchLogsSource) for more details.
