# Azure Queue Storage source

Consumes events from [Azure Queue Storage](https://learn.microsoft.com/en-us/azure/storage/queues/storage-queues-introduction).

With `tmctl`:

```
tmctl create source azurequeuestorage --accountName <accountName> --accountKey <accountKey> --queueName <queueName>
```

On Kubernetes:

```yaml
apiVersion: sources.triggermesh.io/v1alpha1
kind: AzureQueueStorageSource
metadata:
  name: sample
spec:
  accountName: demoaccount
  queueName: testqueue

  accountKey:
    valueFromSecret:
      name: azure-queue-storage
      key: account_key

  sink:
    ref:
      apiVersion: eventing.knative.dev/v1
      kind: broker
      name: default
```

Events produced have the following attributes:

* type `com.microsoft.azure.queuestorage`

See the [Kubernetes object reference](../../reference/sources/#sources.triggermesh.io/v1alpha1.AzureQueueStorageSource) for more details.
