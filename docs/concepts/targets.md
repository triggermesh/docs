A target is an event receiver which performs some processing on the received data. An event target may act as a gateway between the Bridge and an external service.

Although a target may be considered the destination for an event, it may in turn reply with another event (acknowledgment, error, ...) generating further events. These additional events may need to be managed with separate Bridges.

## Examples

Examples of Targets include Datadog, Elasticsearch, Salesforce, Twilio, Zendesk, or any number of cloud-based destinations such as Amazon SQS or Google Cloud Firestore.

All targets available can be found by listing the CRDs like so

```console
$ kubectl get crd -o jsonpath='{.items[?(@.spec.group=="targets.triggermesh.io")].spec.names.kind}'
AlibabaOSSTarget AWSComprehendTarget AWSDynamoDBTarget AWSEventBridgeTarget AWSKinesisTarget AWSLambdaTarget AWSS3Target AWSSNSTarget AWSSQSTarget ConfluentTarget DatadogTarget ElasticsearchTarget GoogleCloudFirestoreTarget GoogleCloudStorageTarget GoogleCloudWorkflowsTarget GoogleSheetTarget HasuraTarget HTTPTarget InfraTarget JiraTarget LogzTarget OracleTarget SalesforceTarget SendGridTarget SlackTarget SplunkTarget TektonTarget TwilioTarget UiPathTarget ZendeskTarget
```

There is an example of [Creating a Target](../guides/creatingatarget.md) available under Guides.

## API Reference

All TriggerMesh-provided targets are listed and documented in the [API Reference](../reference/targets.md)

## Current TriggerMesh Targets
- Alibaba
    - [Alibaba OSS](./alibabaoss.md): Forward arbitrary events to an Alibaba Cloud OSS bucket.
- AWS
    - [Amazon Comprehend](./awscomprehend.md): Perform sentiment analysis on cloudevents.
    - [AWS Lambda](./awslambda.md): Forward event payload to AWS Lambda.
    - [Amazon S3](./awss3.md): Forward event payload to Amazon S3 bucket.
    - [Amazon SNS](./awssns.md): Forward event payload to AWS Simple Notification Service (SNS).
    - [Amazon SQS](./awssqs.md): Forward event payload to AWS Simple Queueing Service (SQS).
    - [Amazon Kinesis](./awskinesis.md): Forward event payload to Amazon Kinesis.
    - [Amazon EventBridge](./awseventbridge.md): Forward arbitrary events to Amazon EventBridge.
- [Confluent](./confluent.md): Forward events to Confluent Kafka.
- [Datadog](./datadog.md): Forward event payload to Datadog.
- [Elasticsearch](./elasticsearch.md): Send events to Elasticsearch to be indexed.
- [Google Cloud Workflows](./googlecloudworkflows.md): Execute Google Cloud Workflows with Cloudevents.
- [Google Firestore](./googlefirestore.md): Send events to Google Firestore
- [Google Sheets](./googlesheets.md): Append events to a GoogleSheets Sheet row.
- [Hasura](./hasura.md): Send GraphQL queries to Hasura.
- [HTTP](./http.md): Send HTTP queries to external services.
- [InfraJS](./infrajs.md): Advanced manipulation of CloudEvents.
- [Jira](./jira.md): Send requests to Jira API.
- [Logz.io](./logz.md): Forward events to Logz.io
- [Oracle](./oracle.md): Forward events to the Oracle Cloud.
- [Salesforce](./salesforce.md): Forward arbitrary events to Salesforce.
- [SendGrid](./sendgrid.md): Forward arbitrary events to SendGrid.
- [Slack](./slack.md): Forward events to Slack as messages to deliver immediately, scheduled, or as an update to a pre-existing message.
- [Splunk](./splunk.md): Forward arbitrary events to Splunk.
- [Tekton](./tekton.md): Use event to submit a Tekton build.
- [Twilio](./twilio.md): Send an SMS via Twilio in response to events.
- [Zendesk](./zendesk.md): Perform actions in Zendesk upon reception of certain events.

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
