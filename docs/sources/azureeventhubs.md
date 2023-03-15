# Azure Event Hubs source

Consumes events from [Azure Event Hubs](https://learn.microsoft.com/en-us/azure/event-hubs/event-hubs-about).

With `tmctl`:

```
tmctl create source azureeventhubs --eventHubID <hubID> --auth.servicePrincipal.tenantID <tenantID> --auth.servicePrincipal.clientID <clientID> --auth.servicePrincipal.clientSecret <clientSecret>
```

On Kubernetes:

```yaml
apiVersion: sources.triggermesh.io/v1alpha1
kind: AzureEventHubsSource
metadata:
  name: sample
spec:
  eventHubID: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MyGroup/providers/Microsoft.EventHub/namespaces/MyNamespace/eventhubs/MyEvents

  auth:
    servicePrincipal:
      tenantID:
        valueFromSecret:
          name: azure
          key: tenantID
      clientID:
        valueFromSecret:
          name: azure
          key: clientID
      clientSecret:
        valueFromSecret:
          name: azure
          key: clientSecret

  sink:
    ref:
      apiVersion: eventing.triggermesh.io/v1alpha1
      kind: RedisBroker
      name: triggermesh
```

Events produced have the following attributes:

* type `com.azure.eventhub.event`

See the [Kubernetes object reference](../../reference/sources/#sources.triggermesh.io/v1alpha1.AzureEventHubsSource) for more details.
