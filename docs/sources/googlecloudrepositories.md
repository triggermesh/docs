# Google Cloud Source Repositories source

This event source receives messages from a [Google Cloud Source Repository][gc-source-repositories]
over a [Google Cloud Pub/Sub][gc-source-repositories-events] topic.

With `tmctl`:

!!! warning "Work in progress"
    This component is not yet available with `tmctl`.

On Kubernetes:

```yaml
apiVersion: sources.triggermesh.io/v1alpha1
kind: GoogleCloudSourceRepositoriesSource
metadata:
  name: sample
spec:
  repository: projects/my-project/repos/my-repo

  publishServiceAccount: pubsub-publisher@my-project.iam.gserviceaccount.com

  serviceAccountKey:
    value: >-
      {
        "type": "service_account",
        "project_id": "my-project",
        "private_key_id": "0000000000000000000000000000000000000000",
        "private_key": "-----BEGIN PRIVATE KEY-----\nMIIE...\n-----END PRIVATE KEY-----\n",
        "client_email": "triggermesh-repositories-source@my-project.iam.gserviceaccount.com",
        "client_id": "000000000000000000000",
        "auth_uri": "https://accounts.google.com/o/oauth2/auth",
        "token_uri": "https://oauth2.googleapis.com/token",
        "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
        "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/triggermesh-repositories-source%40my-project.iam.gserviceaccount.com"
      }
  sink:
    ref:
      apiVersion: eventing.triggermesh.io/v1alpha1
      kind: RedisBroker
      name: triggermesh
```

Events produced have the following attributes:

* type `com.google.cloud.repositories.notification`

See the [Kubernetes object reference](../../reference/sources/#sources.triggermesh.io/v1alpha1.GoogleCloudSourceRepositoriesSource) for more details.

## Prerequisite(s)

- Service account
- Repository
- Pub/Sub Topic _(optional)_

### Service Account

A Service Account is required to authenticate the event source and allow it to interact with Google
Cloud Repositories.

The service account must be granted an IAM Role with at least the following permissions:

- `source.repos.updateRepoConfig`
- `iam.serviceAccounts.actAs`

The following set of permissions is also required to allow this source to manage the Pub/Sub topic and subscription:

- `pubsub.subscriptions.create`
- `pubsub.subscriptions.delete`

The predefined `roles/source.admin`, `roles/iam.serviceAccountUser` and `roles/pubsub.editor` roles are an example of roles that are suitable for use with the TriggerMesh event
source for Google Cloud Repositories.

Create a key for this service account and save it. This key must be in JSON format. It is required to be
able to run an instance of the Google Cloud Repositories event source.

### Repository

Full resource name of the Repository. For example, projects/my-project/repos/my-repo.

### Pub/Sub Topic _(optional)_
Full resource name of the Pub/Sub topic where change notifications originating from the
configured repo are sent to. If not supplied, a topic is created on behalf of the user, in the
GCP project referenced by the 'project' attribute. The expected format is described at
https://cloud.google.com/pubsub/docs/admin#resource_names

[gc-source-repositories]: https://cloud.google.com/source-repositories/docs
[gc-source-repositories-events]: https://cloud.google.com/source-repositories/docs/configuring-notifications
