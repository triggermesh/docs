# Azure EventGrid source

Consumes events from [Azure EventGrid](https://learn.microsoft.com/en-us/azure/event-grid/overview).

With `tmctl`:

!!! warning "Work in progress"
    This component is not yet available with `tmctl`.

On Kubernetes:

```yaml
apiVersion: sources.triggermesh.io/v1alpha1
kind: AzureEventGridSource
metadata:
  name: sample
spec:
  scope: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MyGroup/providers/Microsoft.Storage/storageAccounts/MyBlobStorage

  eventTypes:
  - Microsoft.Storage.BlobCreated
  - Microsoft.Storage.BlobDeleted

  endpoint:
    eventHubs:
      namespaceID: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MyGroup/providers/Microsoft.EventHub/namespaces/MyNamespace

  auth:
    servicePrincipal:
      tenantID:
        value: 00000000-0000-0000-0000-000000000000
      clientID:
        value: 00000000-0000-0000-0000-000000000000
      clientSecret:
        value: some_secret

  sink:
    ref:
      apiVersion: eventing.knative.dev/v1
      kind: Broker
      name: default
```

See the [Kubernetes object reference](../../reference/sources/#sources.triggermesh.io/v1alpha1.AzureEventGridSource) for more details.
