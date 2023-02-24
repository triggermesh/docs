# Solace target

Sends events to [Solace](https://solace.com/). 

With `tmctl`:

```
tmctl create target solace --url amqp://192.168.1.1:5672 --queueName <name>
```

On Kubernetes:

```yaml
apiVersion: targets.triggermesh.io/v1alpha1
kind: SolaceTarget
metadata:
  name: sample
spec:
  url: amqp://192.168.1.1:5672
  queueName: test
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
```

You can use the optional `discardCloudEventContext: true` parameter to omit CloudEvents context attributes from the event written to Solace.

Accepts events of any type.

See the [Kubernetes object reference](../../reference/sources/#sources.triggermesh.io/v1alpha1.SolaceTarget) for more details.