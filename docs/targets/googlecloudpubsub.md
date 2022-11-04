# Event Target for Google Cloud Pub Sub

This event target receives [CloudEvents][ce] over HTTP and sends them to a pre-defined Google Cloud Pub Sub Topic.

## Prerequisite(s)

- Google Cloud Console account.
- A service account and it's associated JSON credentials.
- a pre-existing Google Cloud Pub Sub Topic.

## Deploying an Instance of the Target

Credentials: JSON credentials of a valid Service Account.

Topic: name of the Google Cloud Pub Sub Topic to which you want to send events.

## Kubernetes

```yaml
apiVersion: targets.triggermesh.io/v1alpha1
kind: GoogleCloudPubSubTarget
metadata:
  name: googlecloudpubsub
spec:
  topic: ''
  credentialsJson:
    secretKeyRef:
      name: googlecloudpubsub
      key: creds
```

## Event Types

### Arbitrary
This target consumes events of any type.

[ce]: https://cloudevents.io/
[ce-jsonformat]: https://github.com/cloudevents/spec/blob/v1.0/json-format.md
[sample-manifest]: https://github.com/triggermesh/triggermesh/tree/main/config/samples/targets/googlecloudpubsub
[clone]: https://github.com/triggermesh/triggermesh/archive/refs/heads/main.zip
