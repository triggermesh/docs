# IBM MQ target

Sends events to [IBM MQ](https://www.ibm.com/products/mq).

With `tmctl`:

```
--connectionName <connectionName> --channelName <channelName> --queueManager <queueManager> --queueName <queueName> --credentials.username <username> --credentials.password <password>
```

On Kubernetes:

```yaml
apiVersion: targets.triggermesh.io/v1alpha1
kind: IBMMQTarget
metadata:
  name: ibm-mq-target
spec:
  connectionName: ibm-mq.default.svc.cluster.local(1414)
  queueManager: QM1
  queueName: DEV.QUEUE.1
  channelName: DEV.APP.SVRCONN
  replyTo:
    queueName: DEV.QUEUE.2
  credentials:
    username:
      valueFromSecret:
        name: ibm-mq-secret
        key: username
    password:
      valueFromSecret:
        name: ibm-mq-secret
        key: password
```

Accepts events of any type, and supports a specific `io.triggermesh.ibm.mq.put` event.

Responds with events of type `io.triggermesh.ibm.mq.response`

See the [Kubernetes object reference](../../reference/targets/#targets.triggermesh.io/v1alpha1.IBMMQTarget) for more details.

## Creating an IBM MQ server for testing

Head to the [IBM MQ Source documentation](../sources/ibmmq.md) for guides on how to run a local IBM MQ server for testing.
