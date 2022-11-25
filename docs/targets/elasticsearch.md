# Elasticsearch target

Sends events to [Elasticsearch](https://www.elastic.co/elasticsearch/).

With `tmctl`:

```
tmctl create target elasticsearch --connection $(cat ./connection.txt) --indexName <indexName>
```

On Kubernetes:

```yaml
apiVersion: targets.triggermesh.io/v1alpha1
kind: ElasticsearchTarget
metadata:
  name: <TARGET-NAME>
spec:
  connection:
    addresses:
      - <ELASTICSEARCH-URL>
    skipVerify: <true|false>
    caCert: <ELASTICSEARCH-CA-CERTIFICATE>
    apiKey:
      secretKeyRef:
        name: <SECRET-CONTAINING-APIKEY>
        key: <SECRET-KEY-CONTAINING-APIKEY>
    username: <ELASTICSEARCH-USERNAME>
    password:
      secretKeyRef:
        name: <SECRET-CONTAINING-PASSWORD>
        key: <SECRET-KEY-CONTAINING-PASSWORD>
  indexName: <ELASTICSEARCH-INDEX>
```

Connection must include at least one address, including protocol scheme and port.

- example: `https://elasticsearch-server:9200`

The connection must be filled with one of:

- `username` and `password`
- `apiKey`

If the Elasticsearch cluster is being served using a self-signed certificate the CA can be added, or TLS verify can be skipped:

- `caCert` for adding the PEM string for the certificate.
- `skipVerify` set to true for skip checking certificates.

Received events will be indexed using `indexName` as the elasticsearch index.

Here is an example with real values:

```yaml
apiVersion: targets.triggermesh.io/v1alpha1
kind: ElasticsearchTarget
metadata:
  name: es-indexing
spec:
  connection:
    addresses:
    - https://elasticsearch-host:9200
    skipVerify: true
    username: elastic
    password:
      secretKeyRef:
        name: elasticsearch
        key: password
  indexName: tmindex
  eventOptions:
    payloadPolicy: error
```


Accepts events of any type. Elasticsearch Target will forward any valid JSON payload.

Ideally, the JSON conforms to the index mapping at elasticsearch.

You can test the Target by sending it an event using `curl`:

```console
curl -v http://elasticsearchtarget-es-indexinge5d0adf0209a48c23fa958aa1b8ecf0b.default.svc.cluster.local \
 -X POST \
 -H "Content-Type: application/json" \
 -H "Ce-Specversion: 1.0" \
 -H "Ce-Type: something.to.index.type" \
 -H "Ce-Source: some.origin/intance" \
 -H "Ce-Id: 536808d3-88be-4077-9d7a-a3f162705f79" \
 -d '{"message":"thanks for indexing this message","from": "TriggerMesh targets", "some_number": 12}'
```

See the [Kubernetes object reference](../../reference/targets/#targets.triggermesh.io/v1alpha1.ElasticsearchTarget) for more details.

## Prerequisites

A Elasticsearch cluster and a set of credentials:

- Elastic Cloud on Kubernetes [ECK](https://github.com/elastic/cloud-on-k8s/) is the simplest way to get started, Elastic Cloud or any other Elasticsearch cluster. Version 7.x is preferred.
- User and password to the Elasticsearch cluster.
- An APIKey instead of User and password.
- CACertificate if using self-signed certificate and `SkipVerify` is not configured.

[eck]: https://github.com/elastic/cloud-on-k8s
[elasticcloud]: https://www.elastic.co/cloud/
[es]:https://www.elastic.co/elasticsearch/
[docs]:https://www.elastic.co/guide/index.html
[ce]: https://cloudevents.io
