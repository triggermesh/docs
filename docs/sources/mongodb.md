# MongoDB Source

Consumes change events from a MongoDB collection.

With `tmctl`:

```
tmctl create source mongodb --connectionString mongodb://localhost:27017 --database <database> --collection <collection>
```


On Kubernetes:

```yaml
apiVersion: sources.triggermesh.io/v1alpha1
kind: MongoDBSource
metadata:
  name: sample
spec:
  connectionString: mongodb://localhost:27017
  database: test-database
  collection: test-collection
  sink:
    ref:
      apiVersion: eventing.triggermesh.io/v1alpha1
      kind: RedisBroker
      name: triggermesh
```

Events produced have the following attributes:

* type: `io.triggermesh.mongodb.event`

See the [Kubernetes object reference](../../reference/sources/#sources.triggermesh.io/v1alpha1.MongoDBSource) for more details.

MongoDBSource will start when it can connect to the specified MongoDB instance. Controller logs and events can provide detailed information about the process. A Status summary is added to the MongoDBSource object informing of all the conditions that the source needs.

When ready, the status.ready will be True.

```shell
kubectl get mongodbsource
NAME     READY   REASON   URL   SINK                                                                              AGE
sample   True                   http://broker-ingress.knative-eventing.svc.cluster.local/namespace/default         1m
```

