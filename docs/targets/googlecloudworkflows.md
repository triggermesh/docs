# Event Target for Google Cloud Workflows

This event target receives [CloudEvents][ce] over HTTP and sends them to [Google Cloud Workflows](https://cloud.google.com/workflows)

## Prerequisite(s)

- Google Cloud Console account.
- A service account and it's associated JSON credentials.

## Deploying an Instance of the Target

Open the Bridge creation screen and add a target of type `Google Cloud Workflows`.

In the Target creation form, give a name to the event Target and add the following information:

- **Credentials**: Reference to a [TriggerMesh secret](../guides/secrets.md) containing the JSON credentials of a Service Account.

After clicking the `Save` button, you will be taken back to the Bridge editor. Proceed to adding the remaining
components to the Bridge, then submit it.

A ready status on the main _Bridges_ page indicates that the Google Cloud Workflows target is ready to accept events.

For more information about using Google Cloud Workflows, please refer to the [documentation][https://cloud.google.com/workflows/docs].

## Event Types
### io.trigermesh.google.workflows.run

Events of this type contain nuanced data that is used to run a Google Workflow

This type expects a [JSON][ce-jsonformat] payload with the following properties:

| Name  |  Type |  Comment | Example
|---|---|---|---|
| **parent** | string | Project and location in which the workflow should be created. Format:  projects/{project}/locations/{location} | "projects/ultra-hologram-297914/locations/us-central1" |
| **executionName** | string |  The resource name of the execution. Format: `projects/{project}/locations/{location}/workflows/{workflow}/executions/{execution}`| "demowf" | 



[ce]: https://cloudevents.io/
[ce-jsonformat]: https://github.com/cloudevents/spec/blob/v1.0/json-format.md
