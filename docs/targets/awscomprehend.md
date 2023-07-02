# Amazon Comprehend target

Send events to [Amazon Comprehend](https://aws.amazon.com/comprehend/)

With `tmctl`:

```
tmctl create target awscomprehend --region <region> --language <language> --auth.credentials.accessKeyID <access key> --auth.credentials.secretAccessKey <secret key>
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
kind: AWSComprehendTarget
metadata:
  name: triggermesh-aws-comprehend
spec:
  region: us-west-1
  language: en
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

This target accepts events of any type and analyzes each of the key values sentiment. It then combines the scores and returns the analysis in a response event of type `io.triggermesh.targets.aws.comprehend.result`.

You can test the Target by sending it an event using `curl`:

```
curl -v "10.1.215.232:8080" \
       -X POST \
       -H "Ce-Id: 536808d3-88be-4077-9d7a-a3f162705f79" \
       -H "Ce-Specversion: 1.0" \
       -H "Ce-Type: io.triggermesh.sendgrid.email.send" \
       -H "Ce-Source: dev.knative.samples/helloworldsource" \
       -H "Content-Type: application/json" \
       -d '{"fromEmail":"I LOVE YOU"}'
```

Response:
```
{"positive":0.999502420425415,"negative":0.00006757258961442858,"mixed":0.00005553230221266858,"result":"Positive"}
```
```
curl -v "localhost:8080" \
       -X POST \
       -H "Ce-Id: 536808d3-88be-4077-9d7a-a3f162705f79" \
       -H "Ce-Specversion: 1.0" \
       -H "Ce-Type: io.triggermesh.sendgrid.email.send" \
       -H "Ce-Source: dev.knative.samples/helloworldsource" \
       -H "Content-Type: application/json" \
       -d '{"fromEmail":"I LOVE YOU", "other":"you are great", "another":"awesome job!"}'
```
Response:
```
{"positive":2.979724109172821,"negative":0.001508750458015129,"mixed":0.004781584390002536,"result":"Positive"}
```
```
curl -v "localhost:8080" \
       -X POST \
       -H "Ce-Id: 536808d3-88be-4077-9d7a-a3f162705f79" \
       -H "Ce-Specversion: 1.0" \
       -H "Ce-Type: io.triggermesh.sendgrid.email.send" \
       -H "Ce-Source: dev.knative.samples/helloworldsource" \
       -H "Content-Type: application/json" \
       -d '{"fromEmail":"you suck", "other":"hate you", "another":"go to hell"}'
```
Response:
```
{"positive":0.05191964528057724,"negative":2.70785391330719,"mixed":0.08987980522215366,"result":"Negative"}
```

See the [Kubernetes object reference](../../reference/targets/#targets.triggermesh.io/v1alpha1.AWSComprehendTarget) for more details.

For more information about using Amazon Comprehend, please refer to the [documentation](https://docs.aws.amazon.com/comprehend/).

[ce]: https://cloudevents.io/
