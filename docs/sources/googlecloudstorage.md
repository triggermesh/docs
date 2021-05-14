# Event Source for Google Cloud Storage

This event source receives change notifications emerging from a [Google Cloud Storage][gc-storage] bucket by subscribing
to a [Google Cloud Pub/Sub][gc-storage-events] topic.

## Prerequisite(s)

- Event Source for Google Cloud Pub/Sub
- Storage Bucket
- Notification Configuration

### Event Source for Google Cloud Pub/Sub

Change notifications from Cloud Storage buckets can not be consumed directly, but are instead sent to a Google Cloud
Pub/Sub topic. Follow the instructions at [Event Source for Google Cloud Storage](./googlecloudpubsub.md) for setting up
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

!!! note
    It is currently not possible to manage Pub/Sub notifications via the Cloud Console.

[gc-storage]: https://cloud.google.com/storage/docs/introduction
[gc-storage-events]: https://cloud.google.com/storage/docs/pubsub-notifications
[gc-storage-howto]: https://cloud.google.com/storage/docs/how-to
[gc-storage-svcacc]: https://cloud.google.com/storage/docs/projects#service-accounts
[gc-storage-setup]: https://cloud.google.com/storage/docs/reporting-changes
[gsutil]: https://cloud.google.com/storage/docs/gsutil
