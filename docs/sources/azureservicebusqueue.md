# Azure Service Bus Queue source

!!! warning "Deprecated"
    This component is deprecated as of 1.25 and will be removed in a future release. 
    
    Please use the [AzureServiceBus source](azureservicebus.md) instead, which supports both queues and topics in a single component, much like its new companion the [AzureServiceBus target](../targets/azureservicebus.md).

Consumes events from [Azure Service Bus](https://learn.microsoft.com/en-us/azure/service-bus-messaging/service-bus-messaging-overview) queues.

With `tmctl`:

```
tmctl create source azureservicebusqueue --queueID <queueID> --auth.sasToken.connectionString.value <token>
```

On Kubernetes:

```yaml
apiVersion: sources.triggermesh.io/v1alpha1
kind: AzureServiceBusQueueSource
metadata:
  name: sample
spec:
  queueID: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MyGroup/providers/Microsoft.ServiceBus/namespaces/MyNamespace/queues/MyQueue

  auth:
    sasToken:
      connectionString:
        value: Endpoint=sb://mynamespace.servicebus.windows.net/;SharedAccessKeyName=ReadOnly;SharedAccessKey=aHpDel7ZCURMDyixudUeciLODz9SxImqqbEXAMPLEKEY;EntityPath=myqueue

  sink:
    ref:
      apiVersion: eventing.triggermesh.io/v1alpha1
      kind: RedisBroker
      name: triggermesh
```

Events produced have the following attributes:

* type `com.microsoft.azure.servicebus.message`
* Schema of the `data` attribute: [com.microsoft.azure.servicebus.message.json](https://raw.githubusercontent.com/triggermesh/triggermesh/main/schemas/com.microsoft.azure.servicebus.message.json)

See the [Kubernetes object reference](../../reference/sources/#sources.triggermesh.io/v1alpha1.AzureServiceBusQueueSource) for more details.
