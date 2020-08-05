# Event Target for Tekton

This event target receives arbitrary [CloudEvents][ce] over HTTP and sends them to a Tekton
in a [JSON format][ce-jsonformat].
<!-- 
This event target receives [CloudEvents][ce] and utilizes [Twilio](https://www.twilio.com/) to enable the creation and delivery of SMS messages via event-data and event-occurrence, respectively. -->

## Prerequisites

1. [Pipelines][pipe] must be installed on the same cluster as the Tekton Pipeline event target.  For instructions on how to install Tekton, please see their [installation guide](https://tekton.dev/docs/getting-started/).

1. The event target assumes the target [pipelines][pipe] and tasks exist in the cluster.

## Deploying an instance of the Target

Open the Bridge creation screen and add a target of type `Tekton`.

<!-- ![Adding a Tekton target](../images/tekton-target/create-bridge-1.png) -->

In the Target creation form, give a name to the event Target and give the target a name.

<!-- ![Tekton target form](../images/tekton-target/create-bridge-2.png) -->

After clicking the `Save` button, you will be taken back to the Bridge editor. Proceed to adding the remaining
components to the Bridge, then submit it.

A ready status on the main _Bridges_ page indicates that the Tekton target is ready to accept events.

![Bridge status](../images/bridge-status-green.png)

For more information about using Tekton, please refer to the [Tekton documentation][docs].

## Event types

The Tekton event target can consume events of any type; however, the JSON message format must contain at least:

* **Buildtype**: Can be one of task or pipeline
* **Name**: The name of the pipeline or task object being invoked
* **Params**: JSON object of key/value pairs that the Tekton CRD is expecting (optional)

### Example

```console
curl -v http://tektontarget.svc.cluster.local \
 -X POST \
 -H "Content-Type: application/json" \
 -H "Ce-Specversion: 1.0" \
 -H "Ce-Type: dev.knative.source.tekton" \
 -H "Ce-Source: awesome/instance" \
 -H "Ce-Id: 536808d3-88be-4077-9d7a-a3f162705f79" \
 -d '{"buildtype": "task","name": "tekton-test","params":{"greeting":"Hi from TriggerMesh"}}'
```


[ce]: https://cloudevents.io/
[ce-jsonformat]: https://github.com/cloudevents/spec/blob/v1.0/json-format.md
[tm-secret]:https://docs.triggermesh.io/guides/secrets/

[docs]: https://github.com/tektoncd/pipeline#-tekton-pipelines

[pipe]:https://www.openshift.com/learn/topics/pipelines

