# Google Cloud Storage source

This event source receives change notifications from a [Google Cloud Storage][gc-storage] bucket by subscribing to a [Google Cloud Pub/Sub][gc-storage-events] topic.

With `tmctl`:

```
tmctl create source googlecloudstorage --bucket <bucket> --pubsub.project <project> --serviceAccountKey $(cat ./key.txt)
```

On Kubernetes:

```yaml
apiVersion: sources.triggermesh.io/v1alpha1
kind: GoogleCloudStorageSource
metadata:
  name: sample
spec:
  bucket: my-bucket

  pubsub:
    project: my-project
    # Alternatively, provide a pre-existing Pub/Sub topic:
    # topic: projects/my-project/topics/my-topic

  eventTypes:
  - OBJECT_FINALIZE
  - OBJECT_DELETE

  objectNamePrefix: myprefix

  serviceAccountKey:
    value: >-
      {
        "type": "service_account",
        "project_id": "my-project",
        "private_key_id": "0000000000000000000000000000000000000000",
        "private_key": "-----BEGIN PRIVATE KEY-----\nMIIE...\n-----END PRIVATE KEY-----\n",
        "client_email": "triggermesh-storage-source@my-project.iam.gserviceaccount.com",
        "client_id": "000000000000000000000",
        "auth_uri": "https://accounts.google.com/o/oauth2/auth",
        "token_uri": "https://oauth2.googleapis.com/token",
        "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
        "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/triggermesh-storage-source%40my-project.iam.gserviceaccount.com"
      }
  sink:
    ref:
      apiVersion: eventing.triggermesh.io/v1alpha1
      kind: RedisBroker
      name: triggermesh
```

Produces events of the following types:

* com.google.cloud.storage.objectfinalize
* com.google.cloud.storage.objectmetadataupdate
* com.google.cloud.storage.objectdelete
* com.google.cloud.storage.objectarchive

For details on these event types, refer to the official documentation for [Pub/Sub notifications for Cloud Storage](https://cloud.google.com/storage/docs/pubsub-notifications).

See the [Kubernetes object reference](../../reference/sources/#sources.triggermesh.io/v1alpha1.GoogleCloudStorageSource) for more details.

## Prerequisite(s)

- Event Source for Google Cloud Pub/Sub
- Storage Bucket
- Notification Configuration

### Event Source for Google Cloud Pub/Sub

Change notifications from Cloud Storage buckets can not be consumed directly, but are instead sent to a Google Cloud
Pub/Sub topic. Follow the instructions at [Event Source for Google Cloud Pub/Sub](./googlecloudpubsub.md) for setting up
a Pub/Sub topic and running an instance of the Pub/Sub event source.

!!! note
    As an alternative to a manual creation, the Pub/Sub topic will be created automatically while enabling the
    [Notification Configuration](#notification-configuration) if it doesn't already exist.

### Storage Bucket

You can create a Cloud Storage bucket by following the instructions from the [Cloud Storage How-To
Guides][gc-storage-howto].

### Notification Configuration

Change notifications need to be enabled in the selected bucket by applying a _notification configuration_. Follow the
instructions at [Using Pub/Sub notifications for Cloud Storage][gc-storage-setup] to add a new notification
configuration using the [`gsutil`][gsutil] command-line tool.

Below is an example of command which applies a notification configuration to a bucket called `eventsource-dev`, with a
Pub/Sub topic called `triggermesh-storage-source` set as event destination.

```console
$ gsutil notification create -t triggermesh-storage-source -f json gs://eventsource-dev
Created Cloud Pub/Sub topic projects/my-project/topics/triggermesh-storage-source
Created notification config projects/_/buckets/eventsource-dev/notificationConfigs/1
```

```console
$ gsutil notification list gs://eventsource-dev
projects/_/buckets/eventsource-dev/notificationConfigs/1
        Cloud Pub/Sub topic: projects/my-project/topics/triggermesh-storage-source
```

[gc-storage]: https://cloud.google.com/storage/docs/introduction
[gc-storage-events]: https://cloud.google.com/storage/docs/pubsub-notifications
[gc-storage-howto]: https://cloud.google.com/storage/docs/how-to
[gc-storage-svcacc]: https://cloud.google.com/storage/docs/projects#service-accounts
[gc-storage-setup]: https://cloud.google.com/storage/docs/reporting-changes
[gsutil]: https://cloud.google.com/storage/docs/gsutil
