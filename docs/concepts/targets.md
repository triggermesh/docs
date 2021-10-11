A target is an event receiver which performs some processing on messages. An event target may act as a gateway between the Bridge and an external service.

Although a target may be considered the destination for an event, it may in turn reply with another event (acknowledgment, error, ...) generating further events. These additional events may need to be managed with separate Bridges.

## Examples

Examples of Targets include Datadog, Elasticsearch, Salesforce, Twilio, ZenDesk, or any number of cloud-based destinations such as Amazon SQS or Google Cloud Firestore.

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
