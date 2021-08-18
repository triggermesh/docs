# Event Target for Google Firestore 

This event target receives [CloudEvents][ce] over HTTP and sends them to [Google Firestore](https://cloud.google.com/firestore)

## Prerequisite(s)

- Google Cloud Console account.
- A service account and it's associated JSON credentials.

## Deploying an Instance of the Target

Open the Bridge creation screen and add a target of type `Google Firestore`.

In the Target creation form, give a name to the event Target and add the following information:

- **Credentials**: Reference to a [TriggerMesh secret](../guides/secrets.md) containing the JSON credentials of a Service Account.
- **Project ID**: The Google Cloud Console Project ID.
- **Default Collection**: The default collection to publish data.

After clicking the `Save` button, you will be taken back to the Bridge editor. Proceed by adding the remaining
components to the Bridge, then submit it.

A ready status on the main _Bridges_ page indicates that the Google Firestore target is ready to accept events.

For more information about using Google Firestore, please refer to the [documentation][https://firebase.google.com/docs/firestore].

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