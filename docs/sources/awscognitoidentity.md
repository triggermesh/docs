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

Events produced have the following attributes:

* type `com.amazon.cognito-identity.sync_trigger`
* Schema of the `data` attribute: [com.amazon.cognito-identity.sync_trigger.json](https://raw.githubusercontent.com/triggermesh/triggermesh/main/schemas/com.amazon.cognito-identity.sync_trigger.json)

See the [Kubernetes object reference](../../reference/sources/#sources.triggermesh.io/v1alpha1.AWSCognitoIdentitySource) for more details.
