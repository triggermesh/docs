# Google Cloud IoT source

Consumes events from [Google Cloud IoT](https://cloud.google.com/iot-core).

With `tmctl`:

```
tmctl create
```

On Kubernetes:

```yaml
apiVersion:
```

Events produced have the following attributes:

* type ``
* source ``
* Schema of the `data` attribute: []()

See the [Kubernetes object reference](../../reference/sources/#sources.triggermesh.io/v1alpha1.) for more details.

## CLI

Coming soon.

## Kubernetes

```yaml
apiVersion: sources.triggermesh.io/v1alpha1
kind: GoogleCloudIoTSource
metadata:
  name: sample
spec:
  registry: projects/my-project/locations/my-location/registries/my-registry

  serviceAccountKey:
    value: >-
      {
        "type": "service_account",
        "project_id": "my-project",
        "private_key_id": "0000000000000000000000000000000000000000",
        "private_key": "-----BEGIN PRIVATE KEY-----\nMIIE...\n-----END PRIVATE KEY-----\n",
        "client_email": "triggermesh-iot-source@my-project.iam.gserviceaccount.com",
        "client_id": "000000000000000000000",
        "auth_uri": "https://accounts.google.com/o/oauth2/auth",
        "token_uri": "https://oauth2.googleapis.com/token",
        "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
        "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/triggermesh-iot-source%40my-project.iam.gserviceaccount.com"
      }
  sink:
    ref:
      apiVersion: eventing.knative.dev/v1
      kind: Broker
      name: default
```
