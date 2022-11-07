# AWS Cognito identity

## Kubernetes

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
