# Azure Service Bus Topic source

!!! warning "Deprecated"
    This component is deprecated as of 1.25 and will be removed in a future release. 
    
    Please use the [AzureServiceBus source](azureservicebus.md) instead, which supports both queues and topics in a single component, much like its new companion the [AzureServiceBus target](../targets/azureservicebus.md).

Consumes events from [Azure Service Bus](https://learn.microsoft.com/en-us/azure/service-bus-messaging/service-bus-messaging-overview) topics.

With `tmctl`:

```
tmctl create source azureservicebustopic --topicID <topicID> --auth.servicePrincipal.tenantID <tenantID> --auth.servicePrincipal.clientID <clientID> --auth.servicePrincipal.clientSecret <clientSecret>
```

On Kubernetes:

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
      apiVersion: eventing.triggermesh.io/v1alpha1
      kind: RedisBroker
      name: triggermesh
```

Events produced have the following attributes:

* type `com.microsoft.azure.servicebus.message`
* Schema of the `data` attribute: [com.microsoft.azure.servicebus.message.json](https://raw.githubusercontent.com/triggermesh/triggermesh/main/schemas/com.microsoft.azure.servicebus.message.json)

See the [Kubernetes object reference](../../reference/sources/#sources.triggermesh.io/v1alpha1.AzureServiceBusTopicSource) for more details.
