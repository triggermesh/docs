# Azure Event Hubs Target

## Kubernetes

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

Sample deploying with a connection string.

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
