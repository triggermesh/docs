# IBM MQ Target

## Kubernetes

**Target**

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
