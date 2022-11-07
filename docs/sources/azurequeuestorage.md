# Azure Queue Storage source

## Kubernetes

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
