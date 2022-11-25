# Google Cloud Workflows target

Sends events to [Google Cloud Workflows](https://cloud.google.com/workflows).

With `tmctl`:

```
tmctl create target googlecloudworkflows --credentialsJson $(cat ./creds.json)
```

On Kubernetes:

Secret

```yaml
apiVersion: v1
kind: Secret
metadata:
  name: googlecloudworkflows
type: Opaque
stringData:
  creds: |-
    {
      "type": "service_account",
      "project_id": "dev",
      "private_key_id": "e1e4ad14a8d234adf4963d398863ad12444df",
      "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvQQWFNBgkqhkiG9w0BAQEFAASCB...R6Y=\n-----END PRIVATE KEY-----\n",
      "client_email": "tst-27@dev.iam.gserviceaccount.com",
      "client_id": "11547922342598721477",
      "auth_uri": "https://accounts.google.com/o/oauth2/auth",
      "token_uri": "https://oauth2.googleapis.com/token",
      "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
      "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/gstst-27%40dev.iam.gserviceaccount.com"
    }
```

Target

```yaml
apiVersion: targets.triggermesh.io/v1alpha1
kind: GoogleCloudWorkflowsTarget
metadata:
  name: googlecloudworkflows
spec:
  credentialsJson:
    secretKeyRef:
      name: googlecloudworkflows
      key: creds
```

Accepts events with the following attributes:

* type `io.trigermesh.google.workflows.run`

Events of this type contain the data necessary to run a Google Workflow.

This type expects a [JSON][ce-jsonformat] payload with the following properties:

| Name  |  Type |  Comment | Example
|---|---|---|---|
| **parent** | string | Project and location in which the workflow should be created. Format:  `projects/{project}/locations/{location}` | "projects/ultra-hologram-297914/locations/us-central1" |
| **executionName** | string |  The resource name of the execution. Format: `projects/{project}/locations/{location}/workflows/{workflow}/executions/{execution}`| "demowf" |

You can test the Target by sending it an event using `curl`:

```
curl -v http://googlecloudworkflowstarget-googlecloudworkflows.dmo.svc.cluster.local \
 -X POST \
 -H "Content-Type: application/json" \
 -H "Ce-Specversion: 1.0" \
 -H "Ce-Type: io.trigermesh.google.workflows.run" \
 -H "Ce-Source: some.origin/intance" \
 -H "Ce-Id: 536808d3-88be-4077-9d7a-a3f162705f79" \
 -d '{"parent":"projects/ultra-hologram-297914/locations/us-central1/workflows/demowf","executionName":"projects/ultra-hologram-297914/locations/us-central1/workflows/demowf/executions/testex"}'
 ```

See the [Kubernetes object reference](../../reference/targets/#targets.triggermesh.io/v1alpha1.GoogleCloudWorkflowsTarget) for more details.

## Prerequisite(s)

- Google Cloud Console account.
- A service account and it's associated JSON credentials.

For more information about using Google Cloud Workflows, please refer to the [documentation][https://cloud.google.com/workflows/docs].

[ce]: https://cloudevents.io/
[ce-jsonformat]: https://github.com/cloudevents/spec/blob/v1.0/json-format.md
