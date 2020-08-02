# Event target for Elasticsearch

This event target receives [CloudEvents][ce] over HTTP and index their payload intoElasticsearch.

## Prerequisites

A Elasticsearch cluster and a set of credentials for indexing documents.

You can get started by using:

- [Elastic Cloud on Kubernetes][eck]
- [Elascic Cloud][elasticcloud]

## Create the Elasticsearch target integration

Create the Elasticsearch target integration in 2 steps:

1. Retrieve credentials for Elasticsearch.
2. Create the Elasticsearch target.

### Elasticsearch credentials

Credentials for Elasticsearch  which could be in the form:

- User and password to the Elasticsearch cluster.
- An APIKey instead of User and password.

Additionaly when using a self signed you will need to either inform the `CACertificate` or set the `SkipVerify`.

### Deploy Elasticsearch target

At Triggermesh add a new secret depending on the credentials set:

- For username and password create a secret that contain a `password` key.
- For API key create a secret that contain a `key` key.

Then create a bridge that includes a Elasticsearch target:

- `Name` is an internal identifier inside the bridge.
- `Index` is the Elasticsearch index where documents will be indexed.
- `Addresses` server address list.
- `Skip verify` for skipping server certificate verification.
- `CA certificate` is the Base64 encoding of the CA certificate for the server.

Credential fields can be provided either through username and password, or API key:

- `Username` is the username for connecting.
- `Password` secret with `password` key.


- `APÎ Key` secret with `key`.


## Events

Elasticsearch Target will forward any JSON payload at the CloudEvent to be indexed. There is no requirement nor filters on the cloud events fields, the only requirement is that the payload data is a valid JSON.

It would be desirable that the JSON conforms to the index mapping at elasticsearch.

### Example

```console
curl -v http://elasticsearchtarget \
 -X POST \
 -H "Content-Type: application/json" \
 -H "Ce-Specversion: 1.0" \
 -H "Ce-Type: my.data.type" \
 -H "Ce-Source: some.origin/intance" \
 -H "Ce-Id: 536808d3-88be-4077-9d7a-a3f162705f79" \
 -d '{"message":"thanks for indexing this message","from": "Triggermesh targets", "some_number": 12}'
```

[ce]: https://cloudevents.io
[eck]: https://github.com/elastic/cloud-on-k8s
[elasticcloud]: https://www.elastic.co/cloud/