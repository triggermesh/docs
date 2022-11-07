# Azure IoT Hub source

## Kubernetes

```yaml
apiVersion: sources.triggermesh.io/v1alpha1
kind: AzureIOTHubSource
metadata:
  name: sample
spec:
  auth:
    sasToken:
      connectionString:
        value: HostName=triggermeshdemo.azure-devices.net;SharedAccessKeyName=demo;SharedAccessKey=<redacted>
  sink:
    ref:
      apiVersion: eventing.knative.dev/v1
      kind: broker
      name: default
```
