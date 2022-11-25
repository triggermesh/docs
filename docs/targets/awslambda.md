# AWS Lambda target

Sends events to an [AWS Lambda](https://aws.amazon.com/lambda/) function.

With `tmctl`:

```
tmctl create target awslambda --arn <arn> --awsApiKey <awsApiKey> --awsApiSecret <awsApiSecret>
```

On Kubernetes:

```yaml
apiVersion: targets.triggermesh.io/v1alpha1
kind: AWSLambdaTarget
metadata:
  name: triggermesh-aws-lambda
spec:
  arn: arn:aws:lambda:us-west-2:043455440429:function:snslistener
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

## Prerequisite(s)

- AWS API key and secret
- ARN for the Lambda to invoke

For more information about using AWS Lambda, please refer to the [AWS documentation][docs].

[ce]: https://cloudevents.io/
[docs]: https://docs.aws.amazon.com/lambda/
[ce-jsonformat]: https://github.com/cloudevents/spec/blob/v1.0/json-format.md
