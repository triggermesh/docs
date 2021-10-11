A target is an event receiver which performs some processing. An event target may act as a gateway between the Bridge and an external service.

Although a target may be considered the destination for an event, it may in turn reply with another event (acknowledgment, error, ...) generating further events. These additional events may need to be managed with separate Bridges.

## Examples

Examples of Targets include Datadog, Elasticsearch, Salesforce, Twilio, ZenDesk, or any number of cloud-based destinations such as Amazon SQS or Google Cloud Firestore.

All targets available can be found by listing the CRDs like so

```console
$ kubectl get crd|grep targets|awk '{print $1}'
alibabaosstargets.targets.triggermesh.io
awscomprehendtargets.targets.triggermesh.io
awsdynamodbtargets.targets.triggermesh.io
awseventbridgetargets.targets.triggermesh.io
awskinesistargets.targets.triggermesh.io
awslambdatargets.targets.triggermesh.io
awss3targets.targets.triggermesh.io
awssnstargets.targets.triggermesh.io
awssqstargets.targets.triggermesh.io
confluenttargets.targets.triggermesh.io
datadogtargets.targets.triggermesh.io
dbtargets.components.extensions.triggermesh.io
elasticsearchtargets.targets.triggermesh.io
googlecloudfirestoretargets.targets.triggermesh.io
googlecloudstoragetargets.targets.triggermesh.io
googlecloudworkflowstargets.targets.triggermesh.io
googlesheettargets.targets.triggermesh.io
hasuratargets.targets.triggermesh.io
httptargets.targets.triggermesh.io
infratargets.targets.triggermesh.io
jiratargets.targets.triggermesh.io
logztargets.targets.triggermesh.io
oracletargets.targets.triggermesh.io
salesforcetargets.targets.triggermesh.io
sendgridtargets.targets.triggermesh.io
slacktargets.targets.triggermesh.io
splunktargets.targets.triggermesh.io
tektontargets.targets.triggermesh.io
twiliotargets.targets.triggermesh.io
uipathtargets.targets.triggermesh.io
zendesktargets.targets.triggermesh.io
```

There is an example of [Creating a Target](../guides/creatingatarget.md) available under Guides.

## API Reference

All TriggerMesh-provided targets are listed and documented in the [API Reference](../apis/targets.md)

## Specifications

The specification of each target is available through `kubectl explain`. For example:

```console
kubectl explain awslambdatarget.spec
KIND:     AWSLambdaTarget
VERSION:  targets.triggermesh.io/v1alpha1

RESOURCE: spec <Object>

DESCRIPTION:
     Desired state of event target.

FIELDS:
   arn	<string>
     ARN of the Lambda function that will receive events. The expected format is
     documented at
     https://docs.aws.amazon.com/service-authorization/latest/reference/list_awslambda.html

   awsApiKey	<Object>
     API Key to interact with the Amazon Lambda API. For more information about
     AWS security credentials, please refer to the AWS General Reference at
     https://docs.aws.amazon.com/general/latest/gr/aws-security-credentials.html

   awsApiSecret	<Object>
     API Secret to interact with the Amazon Lambda API. For more information
     about AWS security credentials, please refer to the AWS General Reference
     at
     https://docs.aws.amazon.com/general/latest/gr/aws-security-credentials.html

   discardCloudEventContext	<boolean>
     Produce a new cloud event based on the response from the lambda function.
```
