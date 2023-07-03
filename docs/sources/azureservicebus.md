# Azure Service Bus source

Consumes events from an [Azure Service Bus](https://learn.microsoft.com/en-us/azure/service-bus-messaging/service-bus-messaging-overview) queue or topic.

With `tmctl`:

```
tmctl create source azureservicebus --queueID <queueID> --auth.sasToken.connectionString.value <token>
```

Use `--topicID <topicID>` instead of `--queueID <queueID>` to consume from a topic. 

On Kubernetes:

```yaml
apiVersion: sources.triggermesh.io/v1alpha1
kind: AzureServiceBusSource
metadata:
  name: sample
spec:
  queueID: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MyGroup/providers/Microsoft.ServiceBus/namespaces/MyNamespace/queues/MyQueue
  # Alternatively a topic ID
  # topicID: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MyGroup/providers/Microsoft.ServiceBus/namespaces/MyNamespace/topics/MyTopic

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
  
  maxConcurrent: 10

  sink:
    ref:
      apiVersion: eventing.triggermesh.io/v1alpha1
      kind: RedisBroker
      name: triggermesh
```

`maxConcurrent`is an optional parameter that defaults to 10, and controls how many events are processed in parallel by the component. 

Events produced have the following attributes:

* type `com.microsoft.azure.servicebus.message`
* Schema of the `data` attribute: [com.microsoft.azure.servicebus.message.json](https://raw.githubusercontent.com/triggermesh/triggermesh/main/schemas/com.microsoft.azure.servicebus.message.json)

See the [Kubernetes object reference](../../reference/sources/#sources.triggermesh.io/v1alpha1.AzureServiceBusSource) for more details.
