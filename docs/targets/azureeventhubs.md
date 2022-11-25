# Azure Event Hubs target

Sends events to [Azure Event Hubs](https://azure.microsoft.com/en-us/products/event-hubs/#overview).

With `tmctl`:

```
tmctl create target azureeventhubs --eventHubID <eventHubID> --auth.servicePrincipal.tenantID <tenantID> --auth.servicePrincipal.clientID <clientID> --auth.servicePrincipal.clientSecret <clientSecret>
```

On Kubernetes, with servicePrincipal authentication:

```yaml
apiVersion: sources.triggermesh.io/v1alpha1
kind: AzureEventHubsTarget
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
```

On Kubernetes, with connection string authentication:

```yaml
apiVersion: targets.triggermesh.io/v1alpha1
kind: AzureEventHubsTarget
metadata:
  name: sample
spec:
  eventHubID: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MyGroup/providers/Microsoft.EventHub/namespaces/MyNamespace/eventhubs/MyEvents

  auth:
    sasToken:
      connectionString:
        valueFromSecret:
          name: azure
          key: connectionString
```

See the [Kubernetes object reference](../../reference/targets/#targets.triggermesh.io/v1alpha1.AzureEventHubsTarget) for more details.
