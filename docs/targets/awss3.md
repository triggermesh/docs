# Amazon S3 target

Sends events to [Amazon S3](https://aws.amazon.com/s3/).

With `tmctl`:

```
tmctl create target awss3 --arn <arn> --auth.credentials.accessKeyID <access key> --auth.credentials.secretAccessKey <secret key>
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
kind: AWSS3Target
metadata:
  name: triggermesh-aws-s3-test
spec:
  arn: arn:aws:s3:::bucket
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

Alternatively you can use an IAM role for authentication instead of an access key and secret (Amazon EKS only):

```yaml
auth:
  iamrole: arn:aws:iam::123456789012:role/foo
```

There is an optional toggle flag indicating if the full CloudEvent should be sent
to S3 bucket. By default, this is disabled which means only the event payload
will be sent.

Accepts events of any type, with a special rule for `io.triggermesh.awss3.object.put` for which the target
will store the payload body regardless of the `Discard CloudEvent context attributes` setting.

The Amazon S3 bucket key used to store the event is defined by the `ce-subject` attribute.
If `ce-subject` is not set, the default key will be: **ce-type**/**ce-source**/**ce-time**.

Attributes for the `put`operation are:

* type `io.triggermesh.awss3.object.put`
* subject: `string`, the key to use with the assigned bucket for the Target
* `data` contains the payload to store

Responds with events with the following attributes:

* type `io.triggermesh.targets.aws.s3.result`
* source `arn:aws:s3:...`, the S3's bucket ARN value as configured by the target
* `data` contains a JSON response from the Target invocation with the Etag associated with the request

See the [Kubernetes object reference](../../reference/targets/#targets.triggermesh.io/v1alpha1.AWSS3Target) for more details.

## Prerequisite(s)

- AWS API key and secret
- ARN for the S3 bucket to store the event

The ARN for the S3 bucket must include the account number and region of a
pre-defined [access point][aws-s3-ap].

For more information about using Amazon S3, please refer to the [AWS documentation][docs].

[ce]: https://cloudevents.io/
[docs]: https://docs.aws.amazon.com/s3/
[aws-s3-ap]: https://docs.aws.amazon.com/AmazonS3/latest/dev/access-points.html
[ce-jsonformat]: https://github.com/cloudevents/spec/blob/v1.0/json-format.md
