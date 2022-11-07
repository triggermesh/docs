# Azure Event Hubs source

## Kubernetes

```yaml
apiVersion: sources.triggermesh.io/v1alpha1
kind: AzureEventHubSource
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
      apiVersion: eventing.knative.dev/v1
      kind: Broker
      name: default
```
