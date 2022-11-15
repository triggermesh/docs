# Google Cloud Audit Logs source

This event source receives messages from [Google Cloud Audit Logs][gc-auditlogs] by subscribing
to a [Google Cloud Pub/Sub][gc-auditlogs-events] topic.

With `tmctl`:

```
tmctl create source googlecloudauditlogs --serviceName <serviceName> --methodName <methodName> --pubsub.project = <project> --serviceAccountKey $(cat ./key.txt)
```

On Kubernetes:

```yaml
apiVersion: sources.triggermesh.io/v1alpha1
kind: GoogleCloudAuditLogsSource
metadata:
  name: sample
spec:
  serviceName: pubsub.googleapis.com
  methodName: google.pubsub.v1.Publisher.CreateTopic

  pubsub:
    project: my-project
    # Alternatively, provide a pre-existing Pub/Sub topic:
    # topic: projects/my-project/topics/my-topic

  serviceAccountKey:
    value: >-
      {
        "type": "service_account",
        "project_id": "my-project",
        "private_key_id": "0000000000000000000000000000000000000000",
        "private_key": "-----BEGIN PRIVATE KEY-----\nMIIE...\n-----END PRIVATE KEY-----\n",
        "client_email": "triggermesh-auditlogs-source@my-project.iam.gserviceaccount.com",
        "client_id": "000000000000000000000",
        "auth_uri": "https://accounts.google.com/o/oauth2/auth",
        "token_uri": "https://oauth2.googleapis.com/token",
        "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
        "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/triggermesh-auditlogs-source%40my-project.iam.gserviceaccount.com"
      }
  sink:
    ref:
      apiVersion: eventing.knative.dev/v1
      kind: Broker
      name: default
```

Events produced have the following attributes:

* type `com.google.cloud.auditlogs.notification`

See the [Kubernetes object reference](../../reference/sources/#sources.triggermesh.io/v1alpha1.GoogleCloudAuditLogsSource) for more details.

## Prerequisite(s)

- Service Name: The name of the API service performing the operation. For example, "pubsub.googleapis.com".
- Method Name: The name of the service method or operation. For API calls, this should be
               the name of the API method. For example, "google.pubsub.v1.Publisher.CreateTopic".
- Resource Name (Optional): The resource or collection that is the target of the operation. The name is
                            a scheme-less URI, not including the API service name. [Google Cloud Audit Logs Types][gc-auditlogs-types]

### Service Account

A Service Account is required to authenticate the event source and allow it to interact with Google
Cloud Audit Logs.

The service account must be granted an IAM Role with at least the following permissions:

- `logging.sinks.get`
- `logging.sinks.create`
- `logging.sinks.delete`

The following set of permissions is also required because this source delegates the management of the Pub/Sub subscription to the Pub/Sub Source.

- `pubsub.subscriptions.create`
- `pubsub.subscriptions.delete`

The predefined `roles/logging.admin` and `roles/pubsub.editor` roles are an example of roles that are suitable for use with the TriggerMesh event
source for Google Cloud Audit Logs.

Create a key for this service account and save it. This key must be in JSON format. It is required to be
able to run an instance of the Google Cloud Audit Logs event source.

[gc-auditlogs]: https://cloud.google.com/logging/docs/audit
[gc-auditlogs-events]: https://cloud.google.com/pubsub/docs/audit-logging
[gc-auditlogs-types]: https://cloud.google.com/logging/docs/reference/audit/auditlog/rest/Shared.Types/AuditLog
