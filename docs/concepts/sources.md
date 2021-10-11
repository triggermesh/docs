Sources are the origin of data and events for ingestion into TriggerMesh.
A source emits events into the messaging system (Bridge) by sending to a designated event receiver. An event source often acts as a gateway between an external service and the messaging system.

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
