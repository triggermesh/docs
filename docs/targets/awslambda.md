# AWS Lambda target

Sends events to an [AWS Lambda](https://aws.amazon.com/lambda/) function, as referred to by its ARN.

With `tmctl`:

```
tmctl create target awslambda --arn <arn> --auth.credentials.accessKeyID <access key> --auth.credentials.secretAccessKey <secret key>
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
kind: AWSLambdaTarget
metadata:
  name: triggermesh-aws-lambda
spec:
  arn: arn:aws:lambda:us-west-2:043455440429:function:snslistener
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

There is an optional toggle flag indicating if the full CloudEvent should be sent
to the lambda function. By default, this is disabled which means only the event payload
will be sent.

Accepts events of any type.

Responds with events with the following attributes:

* type `io.triggermesh.targets.aws.lambda.result`
* source `arn:aws:lambda:...`, the Lambda's ARN value as configured by the target
* Schema of the `data` attribute: []()

You can test the Target by sending it an event using `curl`:

```console
curl -v http://triggermesh-aws-lambda.default.svc.cluster.local \
 -X POST \
 -H "Content-Type: application/json" \
 -H "Ce-Specversion: 1.0" \
 -H "Ce-Type: dev.knative.source.aws" \
 -H "Ce-Source: awesome/instance" \
 -H "Ce-Id: 536808d3-88be-4077-9d7a-a3f162705f79" \
 -d '{"greeting":"Hi from TriggerMesh"}'
```

See the [Kubernetes object reference](../../reference/targets/#targets.triggermesh.io/v1alpha1.AWSLambdaTarget) for more details.

For more information about using AWS Lambda, please refer to the [AWS documentation][docs].

[ce]: https://cloudevents.io/
[docs]: https://docs.aws.amazon.com/lambda/
[ce-jsonformat]: https://github.com/cloudevents/spec/blob/v1.0/json-format.md
