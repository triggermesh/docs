# Azure Service Bus Queue source

## Kubernetes

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
      apiVersion: eventing.knative.dev/v1
      kind: Broker
      name: default
```
