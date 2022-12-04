# Redis Broker

The Redis Broker uses a backing Redis instance to store events, thereby providing durability that is suitable for production uses cases where event loss in not acceptable during crashes or restarts.

The management of the Redis instance is greatly simplified by TriggerMesh. It is also possible to point the Broker to any Redis instance, such as a managed instance from a cloud provider.  

With `tmctl`:

!!! warning "Work in progress"
    This component is not yet available with `tmctl`. By default, Brokers created with `tmctl` are [Memory Brokers](memorybroker.md). However, when you export your configuration to Kubernetes manifests using `tmctl dump`, TriggerMesh will export a `Redis Broker`, thereby providing message durability by default. You can switch to a Memory Broker if you prefer by updating the exported manifest.

    TriggerMesh will add support for Redis Broker in `tmctl` in the future.  

On Kubernetes:

```yaml
apiVersion: eventing.triggermesh.io/v1alpha1
kind: RedisBroker
metadata:
  name: <broker instance name>
spec:
  redis:
    connection: <Provides a connection to an external Redis instance. Optional>
        url: <redis URL. Required>
        username: <redis username, referenced using a Kubernetes secret>
          secretKeyRef:
            name: <Kubernetes secret name>
            key: <Kubernetes secret key>
        password: <redis password, referenced using a Kubernetes secret>
          secretKeyRef:
            name: <Kubernetes secret name>
            key: <Kubernetes secret key>
        tlsEnabled: <boolean that indicates if the Redis server is TLS protected. Optional, defaults to false>
        tlsSkipVerify: <boolean that skips verifying TLS certificates. Optional, defaults to false>
    stream: <Redis stream name. Optional, defaults to a combination of namespace and broker name>
    streamMaxLen: <maximum number of items the Redis stream can host. Optional, defaults to unlimited>
  broker:
    port: <HTTP port for ingesting events>
    observability:
      valueFromConfigMap: <kubernetes ConfigMap that contains observability configuration>
```

The only `RedisBroker` specific parameters are:

- `spec.redis.connection`. When not used the broker will spin up a managed Redis Deployment. However for production scenarios that require HA and hardened security it is recommended to provide the connection to a user managed Redis instance.
- `spec.stream` is the Redis stream name to be used by the broker. If it doesn't exists the Broker will create it.
- `spec.streamMaxLen` is the maximum number of elements that the stream will contain.

The `spec.broker` section contains generic Broker parameters:

- `spec.broker.port` that the Broker service will be listening at. Optional, defaults to port 80.
- `spec.broker.observability` can be set to the name of a ConfigMap at the same namespace that contains observability settings (documentation coming soon). This parameter is optional.
