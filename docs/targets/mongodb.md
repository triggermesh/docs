# Mongodb target

Send events to a MongoDB instance. 

With `tmctl`:

!!! warning "Work in progress"
    This component is not yet available with `tmctl`.


On Kubernetes:

Secret

```yaml
apiVersion: v1
kind: Secret
metadata:
  name: mongo-db-connection-string
type: Opaque
stringData:
  connection-string: mongodb+srv://<user>:<password>@<database_url>/?retryWrites=true&w=majority
```

Target

```yaml
apiVersion: targets.triggermesh.io/v1alpha1
kind: MongoDBTarget
metadata:
  name: mongo-db-target
spec:
  # The database to use by default if a `database` parameter is missing from the event payload(s)
  defaultDatabase: dummydb
  # The collection to use by default if a `database` parameter is missing from the event payload(s)
  defaultCollection: dummycol
  # A refrence to a kubernetes secret containing a connection string I.E mongodb+srv://<user>:<password>@<database_url>/?retryWrites=true&w=majority
  connectionString:
    valueFromSecret:
      name: mongo-db-connection-string
      key: connection-string
```

Accepts events with the following attributes: 

* type `*`

Send arbitrary events to have them inserted into the default collection and database set at the spec. 

* type `io.triggermesh.mongodb.insert`

Insert data and overwrite the default  collection and database set at the spec.

| Name  |  Type |  Comment |
|---|---|---|
| **database** | string | The name of the database.  |
| **collection** | string | The value of the collection. |
| **key** | string | This value will be used to assing a Key.  |
| **JSONMessage** | json.RawMessage | This value will be used to assing a Value. |

Example:

```bash
curl -v  http://localhost:8080 \
       -X POST \
       -H "Ce-Id: 536808d3-88be-4077-9d7a-a3f162705f79" \
       -H "Ce-Specversion: 1.0" \
       -H "Ce-Type: io.triggermesh.mongodb.insert" \
       -H "Ce-Source: sample/source" \
       -H "Content-Type: application/json" \
       -d '{"database":"test","collection": "test","JSONMessage":{"test":"testdd1","test2":"test3"}}'
```

* type `io.triggermesh.mongodb.update`

Update any pre-existing key:value pair(s) by providing key:value pairs for both the search and update parameters. 

| Name  |  Type |  Comment |
|---|---|---|
| **database** | string | The name of the database.  |
| **collection** | string | The value of the collection. |
| **searchKey** | string | The key to search for.  |
| **searchValue** | string | This value to match against.|
| **updateKey** | string | The value to replace a matching key.  |
| **updateValue** | string | the value to replace a matching value.  |

Example:

```bash
curl -v http://localhost:8080 \
       -X POST \
       -H "Ce-Id: 536808d3-88be-4077-9d7a-a3f162705f79" \
       -H "Ce-Specversion: 1.0" \
       -H "Ce-Type: io.triggermesh.mongodb.update" \
       -H "Ce-Source: sample/source" \
       -H "Content-Type: application/json" \
       -d '{"database":"test","collection": "test","searchKey":"test","searchValue":"testdd1","updateKey":"partstore","updateValue":"UP FOR GRABS"}'
```

* type `io.triggermesh.mongodb.query.kv`

Query existing items by providing a key:value pair to match documents against. This will return all documents in a collection that have a matching key:value pair. 

| Name  |  Type |  Comment |
|---|---|---|
| **database** | string | The name of the database.  |
| **collection** | string | The value of the collection. |
| **key** | string | the "Key" value to search  |
| **value** | string | the "Value" value to search |

Example:

```bash
curl -v http://localhost:8080 \
       -X POST \
       -H "Ce-Id: 536808d3-88be-4077-9d7a-a3f162705f79" \
       -H "Ce-Specversion: 1.0" \
       -H "Ce-Type: io.triggermesh.mongodb.query.kv" \
       -H "Ce-Source: sample/source" \
       -H "Content-Type: application/json" \
       -d '{"database":"test","Collection": "test","key":"partstore","value":"UP FOR GRABS"}'
```