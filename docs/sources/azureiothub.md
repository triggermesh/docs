# Azure IoT Hub source

Consumes events from [Azure IoT Hub](https://azure.microsoft.com/en-in/products/iot-hub/).

With `tmctl`:

```
tmctl create source azureiothub --auth.sasToken.connectionString.value <token>
```

On Kubernetes:

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
      apiVersion: eventing.triggermesh.io/v1alpha1
      kind: RedisBroker
      name: triggermesh
```

Events produced have the following attributes:

* type `com.microsoft.azure.iothub.message`

See the [Kubernetes object reference](../../reference/sources/#sources.triggermesh.io/v1alpha1.AzureIOTHubSource) for more details.
