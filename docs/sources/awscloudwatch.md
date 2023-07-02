# AWS CloudWatch source

Consumes events from [AWS CloudWatch Metrics](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/working_with_metrics.html).

With `tmctl`:

!!! warning "Work in progress"
    This component is not yet available with `tmctl`.

On Kubernetes:

```yaml
apiVersion: sources.triggermesh.io/v1alpha1
kind: AWSCloudWatchSource
metadata:
  name: sample
spec:
  region: us-west-2
  pollingInterval: 2m

  metricQueries:
  - name: testquery
    metric:
      period: 60
      stat: p90
      unit: Milliseconds
      metric:
        metricName: Duration
        namespace: AWS/Lambda
        dimensions:
        - name: FunctionName
          value: lambdadumper

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

Events produced have the following attributes:

* type `com.amazon.cloudwatch.metrics.message`
    * Schema of the `data` attribute: [com.amazon.cloudwatch.metrics.message.json](https://raw.githubusercontent.com/triggermesh/triggermesh/main/schemas/com.amazon.cloudwatch.metrics.message.json)
* type `com.amazon.cloudwatch.metrics.metric`
    * Schema of the `data` attribute: [com.amazon.cloudwatch.metrics.metric.json](https://raw.githubusercontent.com/triggermesh/triggermesh/main/schemas/com.amazon.cloudwatch.metrics.metric.json)

See the [Kubernetes object reference](../../reference/sources/#sources.triggermesh.io/v1alpha1.AWSCloudWatchSource) for more details.
