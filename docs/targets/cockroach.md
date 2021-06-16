# Event Target for CockroachDB

This event target receives [CloudEvents][ce] over HTTP and sends them to [CockroachDB](https://www.cockroachlabs.com/product/)

## Prerequisite(s)

- A CockroachDB cloud deployment.
- A [connection string](https://www.cockroachlabs.com/docs/v21.1/connection-parameters) for the deployment.

## Deploying an Instance of the Target

Open the Bridge creation screen and add a target of type `CockroachDB`.

In the Target creation form, give a name to the event Target and add the following information:

- **Connection String**: Reference to a [TriggerMesh secret](../guides/secrets.md) containing the JSON credentials of a Service Account.
- **Default Table Name**: The default table to publish data 

After clicking the `Save` button, you will be taken back to the Bridge editor. Proceed to adding the remaining
components to the Bridge, then submit it.

A ready status on the main _Bridges_ page indicates that the CockroachDB target is ready to accept events.

For more information about using CockroachDB, please refer to the [documentation][https://www.cockroachlabs.com/docs/cockroachcloud/index.html].

## Event Types
### Arbitrary
This target will consume arbitrary events and upload them into the pre-configured default table with the Cloudevent ID as the Primary key. 

### io.triggermesh.cockroach.query

Events of this type contain nuanced data that is used to query a CockroachDB.

This type expects a [JSON][ce-jsonformat] payload with the following properties:

| Name  |  Type |  Comment | Example
|---|---|---|---|
| **query** | string | A Base64 encoded query string | "U0VMRUNUICogRlJPTSBkZW1v" |


[ce]: https://cloudevents.io/
[ce-jsonformat]: https://github.com/cloudevents/spec/blob/v1.0/json-format.md
