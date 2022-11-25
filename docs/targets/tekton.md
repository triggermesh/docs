# Tekton target

Sends events to Tekton to create [Tekton][tekton] `TaskRun` or `PipelineRun` objects.

With `tmctl`:

```
tmctl create target tekton
```

On Kubernetes:

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

Tekton Target accepts events of type `io.triggermesh.targets.tekton`, which create a new Tekton `PipelineRun` or `TaskRun` object.

This type expects a [JSON][ce-jsonformat] payload with the following properties:

| Name  |  Type |  Comment |
|---|---|---|
| **buildType**| string  |  The run object type consisting of `task` or `pipeline` |
| **name** |  string | The Tekton `task` or `pipeline` object to invoke  |
| **params**| map[string]string | Dictionary mapping of parameters to pass to the Tekton task or pipeline|

No response events are created with this Target type.

---
**NOTE:**
On Kubernetes, neither of `TaskRun` and `PipelineRun` objects nor their associated pods are deleted after execution. It is up to the user to perform the clean-up.

---

Reaping prior Tekton TaskRuns and PipelineRuns

To allow for reaping of old run objects, the `TektonTarget` Spec supports defining
a duration interval (in the form of `\d+[mhd]` for minute, hour, or day) for how
long to keep the run objects before purging.

  - `reapPolicy.success` Age of run objects to keep that succeeded
  - `reapPolicy.fail` Age of the run objects to keep that failed

To trigger the reaping, a [CloudEvent][ce] type of `io.triggermesh.tekton.reap`
must be sent to the target.

You can test the Target by sending it an event using `curl`:

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

See the [Kubernetes object reference](../../reference/targets/#targets.triggermesh.io/v1alpha1.TektonTarget) for more details.

## Prerequisite(s)

- Tekton Task or Pipeline

Refer to the [Tekton documentation][tekton] for information about how to create
tasks and pipelines.

[ce]: https://cloudevents.io/
[ce-jsonformat]: https://github.com/cloudevents/spec/blob/v1.0/json-format.md
[tekton]: https://tekton.dev/
