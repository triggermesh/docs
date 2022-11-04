# Event Target for Tekton Pipeline

This event Target receives [CloudEvents][ce] over HTTP and will use it to
create a [Tekton][tekton] `TaskRun` or `PipelineRun` object.

## Prerequisite(s)

- Tekton Task

## Creating a Tekton Task

Refer to the [Tekton documentation][tekton] for information about how to create
tasks and pipelines.

## Creating a Tekton Pipeline Target

Once the Tekton Pipeline Target has been deployed along with the
requisite Tekton objects, then the target can be created by defining a TektonTarget object:

```yaml
apiVersion: targets.triggermesh.io/v1alpha1
kind: TektonTarget
metadata:
  name: triggermesh-tekton-target
spec:
  reapPolicy:
    success: 5m  # clean up all successfully completed task runs
    fail: 1h  # clean up all failed task runs
```

## Tekton Target as an Event Sink

Tekton Target is addressable and can be used as an event sink for other
Knative components.

```yaml
apiVersion: eventing.knative.dev/v1beta1
kind: Trigger
metadata:
  name: <TRIGGER-NAME>
spec:
  broker: <BROKER-NAME>
  filter:
    attributes:
      type:  <MESSAGE-TYPES-TEKTON-FORMATTED>
  subscriber:
    ref:
      apiVersion: targets.triggermesh.io/v1alpha1
      kind: TektonTarget
      name: <TARGET-NAME>
```

## Triggering a Tekton Pipeline Run via the Target

The Tekton Pipeline Target can be triggered as a normal web service using a
tool such as `curl` within the cluster.  A sample message would resemble the
following:

```console
curl -v http://tektontarget-helloworld5d0adf0209a48c23fa958aa1b8ecf0b.default.svc.cluster.local \
 -X POST \
 -H "Content-Type: application/json" \
 -H "Ce-Specversion: 1.0" \
 -H "Ce-Type: io.triggermesh.tekton.run" \
 -H "Ce-Source: awesome/instance" \
 -H "Ce-Id: 536808d3-88be-4077-9d7a-a3f162705f79" \
 -d '{"buildtype": "task","name": "tekton-test","params":{"greeting":"Hi from TriggerMesh"}}'
```

## Tekton Pipeline Target Message Format

The Tekton Pipeline Target message format must contain at least:
  - buildtype (can be one of task or pipeline)
  - name (this is the name of the pipeline or task object being invoked)
  - params (optional JSON object of key/value pairs that the Tekton CRD is expecting)

## Reaping prior Tekton TaskRuns and PipelineRuns

To allow for reaping of old run objects, the `TektonTarget` Spec supports defining
a duration interval (in the form of `\d+[mhd]` for minute, hour, or day) for how
long to keep the run objects before purging.

  - `reapPolicy.success` Age of run objects to keep that succeeded
  - `reapPolicy.fail` Age of the run objects to keep that failed

To trigger the reaping, a [CloudEvent][ce] type of `io.triggermesh.tekton.reap`
must be sent to the target.

## Event Types

### io.triggermesh.targets.tekton

Events of this type intend to create a new Tekton `PipelineRun` or `TaskRun` object.

This type expects a [JSON][ce-jsonformat] payload with the following properties:

| Name  |  Type |  Comment |
|---|---|---|
| **buildType**| string  |  The run object type consisting of `task` or `pipeline` |
| **name** |  string | The Tekton `task` or `pipeline` object to invoke  |
| **params**| map[string]string | Dictionary mapping of parameters to pass to the Tekton task or pipeline|

No response events are created with this Target type.

---
**NOTE:**
`TaskRun` and `PipelineRun` objects nor their associated pods are deleted after execution.
It is up to the user to perform the clean-up.

---

[ce]: https://cloudevents.io/
[ce-jsonformat]: https://github.com/cloudevents/spec/blob/v1.0/json-format.md
[tekton]: https://tekton.dev/
