# Event Target for Amazon Comprehend

This event target receives [CloudEvents][ce] over HTTP and sends them to [Amazon Comprehend](https://aws.amazon.com/comprehend/)

## Prerequisite(s)

- AWS API key and secret.

## Deploying an Instance of the Target

- **AWS Secret**: Reference a [TriggerMesh secret](../guides/secrets.md) containing an AWS API key and Secret.
- **Region**: Denotes the region to run the Amazon Comprehend services from.
- **Language**: Denotes the language to expect in the events.

For more information about using Amazon Comprehend, please refer to the [documentation][https://docs.aws.amazon.com/comprehend/].

## Kubernetes

**Secret**

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

**Target**

```yaml
apiVersion: targets.triggermesh.io/v1alpha1
kind: AWSComprehendTarget
metadata:
  name: triggermesh-aws-comprehend
spec:
  region: us-west-1
  language: en
  awsApiKey:
    secretKeyRef:
      name: aws
      key: AWS_ACCESS_KEY_ID
  awsApiSecret:
    secretKeyRef:
      name: aws
      key: AWS_SECRET_ACCESS_KEY
```

## Examples

curl -v "10.1.215.232:8080" \
       -X POST \
       -H "Ce-Id: 536808d3-88be-4077-9d7a-a3f162705f79" \
       -H "Ce-Specversion: 1.0" \
       -H "Ce-Type: io.triggermesh.sendgrid.email.send" \
       -H "Ce-Source: dev.knative.samples/helloworldsource" \
       -H "Content-Type: application/json" \
       -d '{"fromEmail":"I LOVE YOU"}'

Response:
```
{"positive":0.999502420425415,"negative":0.00006757258961442858,"mixed":0.00005553230221266858,"result":"Positive"}
```

curl -v "localhost:8080" \
       -X POST \
       -H "Ce-Id: 536808d3-88be-4077-9d7a-a3f162705f79" \
       -H "Ce-Specversion: 1.0" \
       -H "Ce-Type: io.triggermesh.sendgrid.email.send" \
       -H "Ce-Source: dev.knative.samples/helloworldsource" \
       -H "Content-Type: application/json" \
       -d '{"fromEmail":"I LOVE YOU", "other":"you are great", "another":"awesome job!"}'

Response:
```
{"positive":2.979724109172821,"negative":0.001508750458015129,"mixed":0.004781584390002536,"result":"Positive"}
```

curl -v "localhost:8080" \
       -X POST \
       -H "Ce-Id: 536808d3-88be-4077-9d7a-a3f162705f79" \
       -H "Ce-Specversion: 1.0" \
       -H "Ce-Type: io.triggermesh.sendgrid.email.send" \
       -H "Ce-Source: dev.knative.samples/helloworldsource" \
       -H "Content-Type: application/json" \
       -d '{"fromEmail":"you suck", "other":"hate you", "another":"go to hell"}'

Response:
```
{"positive":0.05191964528057724,"negative":2.70785391330719,"mixed":0.08987980522215366,"result":"Negative"}
```

## Event Types
### Arbitrary
This target will consume arbitrary events and analyzes each of the key values sentiment. It then combines the scores and
returns the analysis in a response event of type `io.triggermesh.targets.aws.comprehend.result`


[ce]: https://cloudevents.io/
