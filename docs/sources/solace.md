# Solace source

Consumes events from [Solace](https://solace.com/). 

With `tmctl`:

```
tmctl create source solace --url amqp://192.168.1.1:5672 --queueName <name>
```

On Kubernetes:

```yaml
apiVersion: sources.triggermesh.io/v1alpha1
kind: SolaceSource
metadata:
  name: sample
spec:
  url: amqp://192.168.1.1:5672
  queueName: myqueue
  auth:
    saslEnable: true
    username:
      valueFromSecret:
        name: solace-secret
        key: username
    password:
      valueFromSecret:
        name: solace-secret
        key: password
  sink:
    ref:
      apiVersion: eventing.triggermesh.io/v1alpha1
      kind: RedisBroker
      name: triggermesh
```

Events produced have the following attributes:

* type `io.triggermesh.solace.event`

See the [Kubernetes object reference](../../reference/sources/#sources.triggermesh.io/v1alpha1.SolaceSource) for more details.