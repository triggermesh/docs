# Memory Broker

On Kubernetes:

```yaml
apiVersion: eventing.triggermesh.io/v1alpha1
kind: MemoryBroker
metadata:
  name: <broker instance name>
spec:
  memory:
    bufferSize: <maximum number of events>
  broker:
    port: <HTTP port for ingesting events>
    observability:
      valueFromConfigMap: <kubernetes ConfigMap that contains observability configuration>
```

The only `MemoryBroker` specific parameter is `spec.memory.bufferSize` which indicates the available size of the internal queue that the broker manages. When the maximum number of items is reached, new ingest requests will block and might eventually time out. This parameter is optional and defaults to 10000.

The `spec.broker` section contains generic Broker parameters:

- `spec.broker.port` that the Broker service will be listening at. Optional, defaults to port 80.
- `spec.broker.observability` can be set to the name of a ConfigMap at the same namespace that contains observability settings (documentation coming soon). This parameter is optional.
