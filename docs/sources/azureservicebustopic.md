# Azure Service Bus Topic source

## Kubernetes

```yaml
apiVersion: sources.triggermesh.io/v1alpha1
kind: AzureServiceBusTopicSource
metadata:
  name: sample
spec:
  topicID: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MyGroup/providers/Microsoft.ServiceBus/namespaces/MyNamespace/topics/MyTopic

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
