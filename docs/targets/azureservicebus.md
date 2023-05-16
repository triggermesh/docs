# Azure Service Bus target

Sends events to an [Azure Service Bus](https://learn.microsoft.com/en-us/azure/service-bus-messaging/service-bus-messaging-overview) queue or topic.

With `tmctl`:

```sh
tmctl create target azureservicebus --queueID <queueID> --auth.servicePrincipal.tenantID <tenantID> --auth.servicePrincipal.clientID <clientID> --auth.servicePrincipal.clientSecret <clientSecret>
```

Use `--topicID <topicID>` instead of `--queueID <queueID>` to produce to a topic. 

On Kubernetes:

```yaml
apiVersion: targets.triggermesh.io/v1alpha1
kind: AzureServiceBusTarget
metadata:
  name: sample
spec:
  topicID: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MyGroup/providers/Microsoft.ServiceBus/namespaces/MyNamespace/topics/MyTopic
  # Alternatively a queue ID
  # queueID: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MyGroup/providers/Microsoft.ServiceBus/namespaces/MyNamespace/queues/MyQueue

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

Accepts events of any type. 

Responds with events of type `io.triggermesh.azure.servicebus.put.response`.

See the [Kubernetes object reference](../../reference/targets/#targets.triggermesh.io/v1alpha1.AzureServiceBusTarget) for more details.

