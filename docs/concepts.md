The following diagram depicts the core concepts of the TriggerMesh Cloud-Native Integration Platform: Source, Target, Function, Transformation, Filter, Splitter.

![](./assets/images/concepts.png)

TriggerMesh allows you to integrate applications (on-premises or cloud services) by defining event sources and targets which are seen as the start and the end of a so-called Bridge. While events flow through the Bridge, they can undergo splitting, filtering and transformation. Transformation of events can be done declaratively or through a function.

To route events, TriggerMesh makes use of the Knative Eventing primitives (e.g Brokers, Channels, Triggers).

Each component of a Bridge can be defined using an API object available through the TriggerMesh platform or through Knative.

To facilitate writing your integrations, we provide a language called the TriggerMesh Integration Language (TIL). 

## Sources

All sources are listed and documented in the [reference](apis/sources/)

The specificiation of each source is available through `kubectl explain`. For instance:

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

## Targets

All targets are listed and documented in the [reference](apis/targets)

The specification of each target is available through `kubectl explain`. For instance:

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

## Transformation

## Function

## Routing

## Bridge

## TriggerMesh Integration Language (TIL)
