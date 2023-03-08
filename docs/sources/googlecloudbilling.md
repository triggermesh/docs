# Google Cloud Billing source

This event source receives messages from a [Google Cloud Billing][gc-billing] Budget
over a [Google Cloud Pub/Sub][gc-billing-events] topic.

With `tmctl`:

```
tmctl create source googlecloudbilling --billingAccountId <billingAccountId> --budgetId <budgetId> --pubsub.project <project> --serviceAccountKey=/tmp/test
```

On Kubernetes:

```yaml
apiVersion: sources.triggermesh.io/v1alpha1
kind: GoogleCloudBillingSource
metadata:
  name: sample
spec:
  billingAccountId: myBillingAccountId
  budgetId: mybudgetId

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
        "client_email": "triggermesh-billing-source@my-project.iam.gserviceaccount.com",
        "client_id": "000000000000000000000",
        "auth_uri": "https://accounts.google.com/o/oauth2/auth",
        "token_uri": "https://oauth2.googleapis.com/token",
        "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
        "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/triggermesh-billing-source%40my-project.iam.gserviceaccount.com"
      }
  sink:
    ref:
      apiVersion: eventing.triggermesh.io/v1alpha1
      kind: RedisBroker
      name: triggermesh
```

Events produced have the following attributes:

* type `com.google.cloud.billing.notification`

See the [Kubernetes object reference](../../reference/sources/#sources.triggermesh.io/v1alpha1.GoogleCloudBillingSource) for more details.

## Prerequisite(s)

- Billing Account ID: The identifier for the Cloud Billing account owning the budget. For example, 01D4EE-079462-DFD6EC.
- Budget ID: The identifier for the Cloud Billing budget. You can locate the budget's ID in your budget under "Manage notifications".
             The ID is displayed after you select Connect a Pub/Sub topic to this budget. For example, de72f49d-779b-4945-a127-4d6ce8def0bb.

### Service Account

A Service Account is required to authenticate the event source and allow it to interact with Google
Cloud Billing budget.

The service account must be granted an IAM Role with at least the following permissions:

- `billing.budgets.get`
- `billing.budgets.update`

The following set of permissions is also required to allow this source to manage the Pub/Sub topic and subscription:

- `pubsub.subscriptions.create`
- `pubsub.subscriptions.delete`

The predefined `roles/billing.costsManager` and `roles/pubsub.editor` roles are an example of roles that are suitable for use with the TriggerMesh event
source for Google Cloud Billing.

Create a key for this service account and save it. This key must be in JSON format. It is required to be
able to run an instance of the Google Cloud Billing event source.

## Known Issues

Because the Google Cloud Billing API doesn't allow disabling a Budget's notifications programmatically,
budget notifications will remain enabled even after the deletion of the event source. The destination
Pub/Sub topic will nevertheless be deleted, effectively causing the interruption of budget notifications.

[gc-billing]: https://cloud.google.com/billing/docs
[gc-billing-events]: https://cloud.google.com/billing/docs/how-to/budgets-programmatic-notifications
