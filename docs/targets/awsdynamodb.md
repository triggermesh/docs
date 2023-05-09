# AWS DynamoDB target

Sends events to [AWS DynamoDB](https://aws.amazon.com/dynamodb/).

With `tmctl`:

```
tmctl create target dynamodb --arn <arn> --auth.credentials.accessKeyID <access key> --auth.credentials.secretAccessKey <secret key>
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
kind: AWSDynamoDBTarget
metadata:
  name: triggermesh-aws-dynamodb
spec:
  arn: arn:aws:dynamodb:us-west-1:<PROJECT_ID>:table/test
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

Alternatively you can use an IAM role for authentication instead of an access key and secret, for Amazon EKS only:

```yaml
auth:
  iamrole: arn:aws:iam::123456789012:role/foo
```

For details on authenticating with AWS, please take a look at our [dedicated guide on AWS credentials](../guides/credentials/awscredentials.md).

Accepts events of any type.

Responds with events with the following attributes:

* type `io.triggermesh.targets.aws.dynamodb.result`

You can test the Target by sending it an event using `curl`:

```console
curl -v http://awstarget-triggermesh-aws-dynamodb.d.svc.cluster.local \
 -X POST \
 -H "Content-Type: application/json" \
 -H "Ce-Specversion: 1.0" \
 -H "Ce-Type: io.triggermesh.aws.dynamodb.item.put" \
 -H "Ce-Subject: <TABLE_NAME>" \
 -H "Ce-Source: awesome/instance" \
 -H "Ce-Id: 536808d3-88be-4077-9d7a-a3f162705f79" \
 -d '{"Message":"Hi from TriggerMesh"}'
```

Events can overwrite the default table name set at the spec by providing a table name at the `Ce-Source` attribute.

See the [Kubernetes object reference](../../reference/targets/#targets.triggermesh.io/v1alpha1.AWSDynamoDBTarget) for more details.
