# Google Cloud Pub/Sub target

Sends events to a [Google Cloud Pub/Sub](https://cloud.google.com/pubsub) topic.

With `tmctl`:

```
tmctl create target googlecloudpubsub --topic <topic> --credentialsJson $(cat ./creds.json) --event-types my.type
```

On Kubernetes:

```yaml
apiVersion: targets.triggermesh.io/v1alpha1
kind: GoogleCloudPubSubTarget
metadata:
  name: googlecloudpubsub
spec:
  topic: <topic>
  credentialsJson:
    secretKeyRef:
      name: googlecloudpubsub
      key: creds
```

This target consumes events of any type.

See the [Kubernetes object reference](../../reference/sources/#targets.triggermesh.io/v1alpha1.GoogleCloudPubSubTarget) for more details.

## Prerequisite(s)

- Google Cloud Console account.
- A service account and it's associated JSON credentials.
- a pre-existing Google Cloud Pub/Sub topic.

[ce]: https://cloudevents.io/
[ce-jsonformat]: https://github.com/cloudevents/spec/blob/v1.0/json-format.md
[sample-manifest]: https://github.com/triggermesh/triggermesh/tree/main/config/samples/targets/googlecloudpubsub
[clone]: https://github.com/triggermesh/triggermesh/archive/refs/heads/main.zip
