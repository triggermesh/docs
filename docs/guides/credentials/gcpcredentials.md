# Google Cloud credentials

## Using a Google Service account

TriggerMesh connectors for Google Cloud generally need to use a Google Cloud service account, and an associated service account key, to access the underlying Google Cloud services.

To create a Service Account, open [IAM & Admin](https://console.cloud.google.com/iam-admin) from the project you are using, and [create a service account](https://cloud.google.com/iam/docs/service-accounts-create) that will be used by the TriggerMesh component. You can give the service account a name such as *triggermesh*.

During creation, you can give the service account the permissions that TriggerMesh needs to be able to do its job. These permissions are specific to the service you need to use, and are documented in the connector's dedicated documentation pages. For example, the [Google Cloud Pub/Sub source](../../sources/googlecloudpubsub.md) requires at least the pubsub.subscriptions.consume and pubsub.subscriptions.get permissions, which are available in the [Pub/Sub Subscriber](https://cloud.google.com/iam/docs/understanding-roles#pubsub.subscriber) and [Pub/Sub Viewer](https://cloud.google.com/iam/docs/understanding-roles#pubsub.viewer) IAM Roles, respectively. However, if you want TriggerMesh to also create the Pub/Sub topic for you (rather than you referencing an existing topic), then the service account additionally requires the [Pub/Sub Editor](https://cloud.google.com/iam/docs/understanding-roles#pubsub.editor) role. 

Create a key for the service account and save it in JSON format in a file, for instance: *serviceaccountkey.json*. Keep this key somewhere handy as you'll reference it when creating a TriggerMesh source for Google Cloud.

The example below shows how you can reference a service account key from a file when creating a Google Cloud Storage source with tmctl:

```sh
tmctl create source googlecloudstorage --bucket <bucket name> \
                                       --pubsub.project <project name> \
                                       --serviceAccountKey $(cat serviceaccountkey.json) \
                                       --eventTypes OBJECT_FINALIZE
```

The second example below shows how to embed a service account key in a TriggerMesh manifest for a GCS source:

```yaml
apiVersion: sources.triggermesh.io/v1alpha1
kind: GoogleCloudStorageSource
metadata:
  name: sample
spec:
  bucket: my-bucket
  topic: projects/my-project/topics/my-topic
  eventTypes:
  - OBJECT_FINALIZE
  - OBJECT_DELETE

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

## Using Workload Identity when running TriggerMesh on GKE

As stated in the [Google Cloud documentation](https://cloud.google.com/kubernetes-engine/docs/concepts/workload-identity), "Workload Identity is the recommended way for your workloads running on Google Kubernetes Engine (GKE) to access Google Cloud services in a secure and manageable way".

To use Workload Identity with TriggerMesh, you can follow the steps below.

You'll need a GKE cluster ready with [Workload Identity configured](https://cloud.google.com/kubernetes-engine/docs/how-to/workload-identity).

Allow the triggermesh service account to impersonate the IAM:

```
gcloud iam service-accounts add-iam-policy-binding my-sa@my-project.iam.gserviceaccount.com \
    --role roles/iam.workloadIdentityUser \
    --member "serviceAccount:my-project.svc.id.goog[triggermesh/triggermesh-controller]"
```

Also allow the service account for the TriggerMesh component you're using to impersonate the IAM (example shown for the Pub/Sub source):

```
gcloud iam service-accounts add-iam-policy-binding my-sa@my-project.iam.gserviceaccount.com \
    --role roles/iam.workloadIdentityUser \
    --member "serviceAccount:my-project.svc.id.goog[my-namespace/googlecloudpubsubsource-adapter]"
```

Annotate the triggermesh-controller service account:

```
kubectl annotate serviceaccount triggermesh-controller \
    --namespace triggermesh \
    iam.gke.io/gcp-service-account=my-sa@my-project.iam.gserviceaccount.com
```

Finally add the following parameter to the Google source (example shown with Pub/Sub source):

```yaml
apiVersion: sources.triggermesh.io/v1alpha1
kind: GoogleCloudPubSubSource
metadata:
  name: sample
spec:
  topic: projects/my-project/topics/my-topic
  auth:
    gcpServiceAccount: my-sa@my-project.iam.gserviceaccount.com
  sink:
    ref:
      apiVersion: eventing.triggermesh.io/v1alpha1
      kind: RedisBroker
      name: triggermesh
```

### Specifying a custom Kubernetes Service Account name

By default, TriggerMesh generates a Kubernetes Service Account (KSA) name for the component to use, with a default naming convention based on the name of the Google Service Account. If you'd prefer to customize the name of the KSA, you can optionally specify it in the resource's manifest, using the parameter called *kubernetesServiceAccount*. If specified, this name will be used for the Kubernetes Service account that will be created and bound to the gcpServiceAccount to act as an IAM service account.

Expanding on the previous example, the manifest would look like the following:

```yaml
apiVersion: sources.triggermesh.io/v1alpha1
kind: GoogleCloudPubSubSource
metadata:
  name: sample
spec:
  topic: projects/my-project/topics/my-topic
  auth:
    gcpServiceAccount: my-sa@my-project.iam.gserviceaccount.com
    kubernetesServiceAccount: <my-custom-ksa-name>
  sink:
    ref:
      apiVersion: eventing.triggermesh.io/v1alpha1
      kind: RedisBroker
      name: triggermesh
```