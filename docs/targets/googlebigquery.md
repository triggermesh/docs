# Event Target for Google Bigquery 

This event target receives [CloudEvents][ce] over HTTP and sends them to [Google Bigquery](https://cloud.google.com/bigquery)

## Prerequisite(s)

- Google Cloud Console account.
- A service account and it's associated JSON credentials.

## Deploying an Instance of the Target

Open the Bridge creation screen and add a target of type `Google Bigquery`.

In the Target creation form, give a name to the event Target and add the following information:

- **Credentials**: Reference to a [TriggerMesh secret](../guides/secrets.md) containing the JSON credentials of a Service Account.
- **Project ID**: The Google Cloud Console Project ID
- **Default Dataset**: The default dataset to publish data
- **Default Table Name**: The default table to publish data 

After clicking the `Save` button, you will be taken back to the Bridge editor. Proceed to adding the remaining
components to the Bridge, then submit it.

A ready status on the main _Bridges_ page indicates that the Google Bigquery target is ready to accept events.

For more information about using Google Bigquery, please refer to the [documentation][https://cloud.google.com/bigquery/docs].

## Event Types
### Arbitrary
This target will consume arbitrary events and upload them into a table with the Cloudevent ID as the Primary key. 

### io.triggermesh.google.bigquery.query

Events of this type contain nuanced data that is used to register an Google Bigquery job. 

This type expects a [JSON][ce-jsonformat] payload with the following properties:

| Name  |  Type |  Comment | Example
|---|---|---|---|
| **query** | string | A Base64 encoded query string | "U0VMRUNUIG5hbWUgRlJPTSBiaWdxdWVyeS1wdWJsaWMtZGF0YS51c2FfbmFtZXMudXNhXzE5MTBfMjAxMyBMSU1JVCAxMDA=" |
| **location** | string | The location of the database instace |  "US" |



[ce]: https://cloudevents.io/
[ce-jsonformat]: https://github.com/cloudevents/spec/blob/v1.0/json-format.md