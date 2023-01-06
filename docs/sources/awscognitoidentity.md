# AWS Cognito identity

Consumes events from [AWS Cognito Identity Pools](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-identity.html).

With `tmctl`:

```
tmctl create source awscognitoidentity --arn <arn> --auth.credentials.accessKeyID <keyID> --auth.credentials.secretAccessKey <key>
```

On Kubernetes:

```yaml
apiVersion: sources.triggermesh.io/v1alpha1
kind: AWSCognitoIdentitySource
metadata:
  name: sample
spec:
  arn: arn:aws:cognito-identity:us-west-2:123456789012:identitypool/triggermeshtest

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

Alternatively you can use an IAM role for authentication instead of an access key and secret, for Amazon EKS only:

```yaml
auth:
  iamrole: arn:aws:iam::123456789012:role/foo
```

To setup an IAM role for service accounts, please refer to the [official AWS documentation](https://docs.aws.amazon.com/eks/latest/userguide/iam-roles-for-service-accounts.html).

Events produced have the following attributes:

* type `com.amazon.cognito-identity.sync_trigger`
* Schema of the `data` attribute: [com.amazon.cognito-identity.sync_trigger.json](https://raw.githubusercontent.com/triggermesh/triggermesh/main/schemas/com.amazon.cognito-identity.sync_trigger.json)

See the [Kubernetes object reference](../../reference/sources/#sources.triggermesh.io/v1alpha1.AWSCognitoIdentitySource) for more details.
