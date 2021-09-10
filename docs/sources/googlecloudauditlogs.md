# Event Source for Google Cloud Audit Logs

This event source receives messages from a [Google Cloud Audit Logs][gc-auditlogs] Sink by subscribing
to a [Google Cloud Pub/Sub][gc-auditlogs-events] topic.

## Prerequisite(s)

- Event Source for Google Cloud Pub/Sub
- Service Name: The name of the API service performing the operation. For example, "pubsub.googleapis.com".
- Method Name: The name of the service method or operation. For API calls, this should be 
               the name of the API method. For example, "google.pubsub.v1.Publisher.CreateTopic".
- Resource Name (Optional): The resource or collection that is the target of the operation. The name is
                            a scheme-less URI, not including the API service name. [Google Cloud Audit Logs Types][gc-auditlogs-types]

### Event Source for Google Cloud Pub/Sub

Cloud Audit Logs events support [multiple destinations][gc-auditlogs-destinations] in this case are instead sent to a Google Cloud
Pub/Sub topic. Follow the instructions at [Event Source for Google Cloud Pub/Sub](./googlecloudpubsub.md) for setting up
a Pub/Sub topic and running an instance of the Pub/Sub event source.

!!! note
    The topic needs to be previously created, it will not be automatically created with the audit logs sink creation.

### Audit Logs Sink

Below is an example of command which applies to create an Audit Logs Sink configured to get events from Pub/Sub topics creations with a
Pub/Sub topic called `triggermesh-auditlogs-source` set as event destination using the [`gsutil`][gsutil] command-line tool.

```console
$ gcloud pubsub topics create triggermesh-auditlogs-source
Created topic [projects/my-project/topics/triggermesh-auditlogs-source].

$ gcloud logging sinks create pubsub-sink pubsub.googleapis.com/projects/my-project/topics/triggermesh-auditlogs-source
  --log-filter="protoPayload.methodName="google.pubsub.v1.Publisher.CreateTopic" AND
  protoPayload.serviceName="pubsub.googleapis.com" AND protoPayload."@type"="type.googleapis.com/google.cloud.audit.AuditLog""

Created [https://logging.googleapis.com/v2/projects/my-project/sinks/triggermesh-audit-pubsub].
Please remember to grant `serviceAccount:`p123124124123`-123456@gcp-sa-logging.iam.gserviceaccount.com` the Pub/Sub Publisher role on the topic.
More information about sinks can be found at https://cloud.google.com/logging/docs/export/configure_export

```

[gc-auditlogs]: https://cloud.google.com/logging/docs/audit
[gc-auditlogs-events]: https://cloud.google.com/pubsub/docs/audit-logging
[gc-auditlogs-types]: https://cloud.google.com/logging/docs/reference/audit/auditlog/rest/Shared.Types/AuditLog
[gc-auditlogs-destinations]: https://cloud.google.com/logging/docs/export/configure_export_v2#supported-destinations
[gsutil]: https://cloud.google.com/logging/docs/audit
