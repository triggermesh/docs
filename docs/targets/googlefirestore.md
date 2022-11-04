# Event Target for Google Firestore

This event target receives [CloudEvents][ce] over HTTP and sends them to [Google Firestore](https://cloud.google.com/firestore)

## Prerequisite(s)

- Google Cloud Console account.
- A service account and it's associated JSON credentials.

## Kubernetes

```yaml
apiVersion: targets.triggermesh.io/v1alpha1
kind: GoogleCloudFirestoreTarget
metadata:
  name: googlecloudfirestore
spec:
  defaultCollection: ''
  projectID: ''
  discardCloudEventContext: true
  credentialsJson:
    secretKeyRef:
      name: googlecloudfirestore
      key: creds
```

## Sending arbitrary events
The target will accept arbitrary events and use the Event ID as the Document name
```
curl -v "http://googlecloudfirestoretarget-googlecloudfirestore.dmo.svc.cluster.local" \
       -X POST \
       -H "Ce-Id: 536808d3-88be-4077-9dsdf7a-a3f162s705f79" \
       -H "Ce-Specversion: 1.0" \
       -H "Ce-Type: io.triggermesh.arbitrary" \
       -H "Ce-Source: dev.knative.samples/helloworldsource" \
       -H "Content-Type: application/json" \
       -d '{"data":"hello World"}'
```

## Sending events of type io.triggermesh.google.firestore.write
If it is preferd to specify the collection on each call to the target, an event of type `io.triggermesh.google.firestore.write` can be sent.
The payload body must contain the following attributes:
 `collection` : Defines the firebase collection to be written under
 `document` : Defines the firebase document name to be written
 `data` : Defines the items to be written to the document

```
curl -v "http://broker-ingress.knative-eventing.svc.cluster.local/dmo/default" \
       -X POST \
       -H "Ce-Id: 536808d3-88be-4077-9d7a-a3f162705f79" \
       -H "Ce-Specversion: 1.0" \
       -H "Ce-Type: io.triggermesh.google.firestore.write" \
       -H "Ce-Source: dev.knative.samples/helloworldsource" \
       -H "Content-Type: application/json" \
       -d '{"collection":"eventtst","document":"doctests1","data":{"fromEmail":"bob@triggermesh.com","hello":"pls"}}'
```

## Sending events of type io.triggermesh.google.firestore.query.tables
Return all tables in a provided collection
```
curl -v "http://broker-ingress.knative-eventing.svc.cluster.local/dmo/default" \
       -X POST \
       -H "Ce-Id: 536808d3-88be-4077-9d7a-a3f162705f79" \
       -H "Ce-Specversion: 1.0" \
       -H "Ce-Type: io.triggermesh.google.firestore.query.tables" \
       -H "Ce-Source: dev.knative.samples/helloworldsource" \
       -H "Content-Type: application/json" \
       -d '{"collection":"eventtst"}'
```

## Sending events of type io.triggermesh.google.firestore.query.table
Return a selected table from a collection
```
curl -v "http://broker-ingress.knative-eventing.svc.cluster.local/dmo/default" \
       -X POST \
       -H "Ce-Id: 536808d3-88be-4077-9d7a-a3f162705f79" \
       -H "Ce-Specversion: 1.0" \
       -H "Ce-Type: io.triggermesh.google.firestore.query.table" \
       -H "Ce-Source: dev.knative.samples/helloworldsource" \
       -H "Content-Type: application/json" \
       -d '{"collection":"deploydemo","document":"536808d3-88be-4077-9d7a-a3f162s705f79"}'
```

## Event Types
### Arbitrary
This target will consume arbitrary events and upload them into a table with the Cloudevent ID as the document name.

The response event type will contain the original event type with `.response` appended to the end.

### io.triggermesh.google.firestore.write

Events of this type contain nuanced data that is used to specify the document, collection, and data on each call to the target.

This type expects a [JSON][ce-jsonformat] payload with the following properties:

| Name  |  Type |  Comment | Example
|---|---|---|---|
| **collection** | string | Defines the firebase collection to be written. | "eventtst" |
| **document** | string | Defines the firebase document name to be written. |  "doctestst" |
| **data** | map[string]interface{} | Defines the items to be written to the document. |  {"fromEmail":"bob@triggermesh.com","hello":"pls"} |

This event responds with an event of type: `io.triggermesh.google.firestore.write.response`

### io.triggermesh.google.firestore.query.tables

Events of this type contain nuanced data that is used to return all tables in a provided collection.

This type expects a [JSON][ce-jsonformat] payload with the following properties:

| Name  |  Type |  Comment | Example
|---|---|---|---|
| **collection** | string | Defines the firebase collection to be queried. | "eventtst" |

This event responds with an event of type: `io.triggermesh.google.firestore.query.tables.response`

### io.triggermesh.google.firestore.query.table

Events of this type contain nuanced data that is used to specify the document, collection, and data on each call to the target.

This type expects a [JSON][ce-jsonformat] payload with the following properties:

| Name  |  Type |  Comment | Example
|---|---|---|---|
| **collection** | string | Defines the firebase collection to be queried. | "eventtst" |
| **document** | string | Defines the firebase document name to retrieved. |  "536808d3-88be-4077-9d7a-a3f162s705f79" |

This event responds with an event of type: `io.triggermesh.google.firestore.query.table.response`

[ce]: https://cloudevents.io/
[ce-jsonformat]: https://github.com/cloudevents/spec/blob/v1.0/json-format.md
