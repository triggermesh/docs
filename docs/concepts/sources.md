Sources are the origin of data and events for ingestion into TriggerMesh. An event source often acts as a gateway between an external service and the Bridge. Sources may be irregular events, periodic data updates, batch processes, or even continuous event streams.

## Examples

Examples of Sources include GitHub, IBM DB2 and Oracle databases, Salesforce, ZenDesk, or any number of cloud-based events such as Amazon S3, Azure Activity Log, or Google Cloud Audit Logs.

All sources available can be found by listing the CRDs like so:

```console
$ kubectl get crd -o jsonpath='{.items[?(@.spec.group=="sources.triggermesh.io")].spec.names.kind}'
AWSCloudWatchLogsSource AWSCloudWatchSource AWSCodeCommitSource AWSCognitoIdentitySource AWSCognitoUserPoolSource AWSDynamoDBSource AWSKinesisSource AWSPerformanceInsightsSource AWSS3Source AWSSNSSource AWSSQSSource AzureActivityLogsSource AzureBlobStorageSource AzureEventGridSource AzureEventHubSource AzureIOTHubSource AzureQueueStorageSource AzureServiceBusQueueSource GoogleCloudAuditLogsSource GoogleCloudBillingSource GoogleCloudPubSubSource GoogleCloudRepositoriesSource GoogleCloudStorageSource HTTPPollerSource OCIMetricsSource SalesforceSource SlackSource TwilioSource WebhookSource ZendeskSource
```

There is an example of [Creating a Source](../guides/creatingasource.md) available under Guides.

## API Reference

All TriggerMesh-provided sources are listed and documented in the [API Reference](../reference/sources.md).

## Knative Event Sources

There are a number of additional [event sources provided by Knative](https://knative.dev/docs/developer/eventing/sources/).

## Current TriggerMesh Sources

- Azure
    - [Azure Activity Logs](./azureactivitylogs.md): Consume Activity Logs from a given Azure Subscription.
    - [Azure Blob Storage](./azureblobstorage.md): Subscribe to events from an Azure storage account.
- AWS
    - [AWS CodeCommit](./awscodecommit.md): Capture notifications from an AWS CodeCommit repository.
    - [Amazon Cognito User Pool](./awscognitouserpool.md): Capture notifications from an Amazon Cognito User Pool.
    - [Amazon DynamoDB](./awsdynamodb.md): Capture activity from an Amazon DynamoDB table.
    - [Amazon Kinesis](./awskinesis.md): Forward messages from an Amazon Kinesis Data Stream.
    - [Amazon S3](./awss3.md): Subscribe to event notifications from an Amazon S3 bucket.
    - [Amazon SNS](./awssns.md): Subscribe to messages from a Amazon SNS topic.
    - [Amazon SQS](./awssqs.md): Capture messages from an Amazon SQS queue.
- [Github](./github.md): Consume Github events as Cloudevents
- Google Cloud
    - [Google Cloud Audit Logs](./googlecloudauditlogs.md): Capture messages from a Google Cloud Audit Logs Sink.
    - [Google Cloud Billing](./googlecloudbilling.md): Capture budget notifications from Google Cloud Billing.
    - [Google Cloud Pub/Sub](./googlecloudpubsub.md): Receive messages from a Google Cloud Pub/Sub topic.
    - [Google Cloud Repositories](./googlecloudrepositories.md): Capture change notifications from a Google Cloud Repository.
    - [Google Cloud Storage](./googlecloudstorage.md): Capture change notifications from a Google Cloud Storage bucket.
- [Webhook](./webhook.md): Generic Webhook integration.
- [HTTP Poller](./httppoller.md): Generic HTTP Poller.
- [OCIMetrics](./ocimetrics.md): Oracle Cloud Infrastructure Metrics
- [Salesforce](./salesforce.md): Consume messages from Salesforce Streaming API.
- [Slack](./slack.md): Consume messages from Slack API.
- [Zendesk](./zendesk.md): Source events from Zendesk, such as the creation of new tickets.


## Specifications

The specification of each source is available through `kubectl explain`. For example:

```console
kubectl explain googlecloudstoragesource.spec
KIND:     GoogleCloudStorageSource
VERSION:  sources.triggermesh.io/v1alpha1

RESOURCE: spec <Object>

DESCRIPTION:
     Desired state of the event source.

FIELDS:
   bucket	<string> -required-
     Name of the Cloud Storage bucket to receive change notifications from. Must
     meet the naming requirements described at
     https://cloud.google.com/storage/docs/naming-buckets

   eventTypes	<[]string>
     Types of events to receive change notifications for. Accepted values are
     listed at
     https://cloud.google.com/storage/docs/pubsub-notifications#events. All
     types are selected when this attribute is not set.

   pubsub	<Object> -required-
     Attributes related to the configuration of Pub/Sub resources associated
     with the Cloud Storage bucket.

   serviceAccountKey	<Object> -required-
     Service account key used to authenticate the event source and allow it to
     interact with Google Cloud APIs. Only the JSON format is supported.

   sink	<Object> -required-
     The destination of events received via change notifications.
```
