# Tekton Pipeline Event Target for Knative Eventing

This event target integrates with Tekton pipelines using received Cloud Event
messages to trigger a pipeline run or a task run.

## Prerequisites

Tekton Pipelines must be installed on the same cluster as the Tekton Pipeline
event target.  For instructions on how to install Tekton, please see their
[installation guide](https://tekton.dev/docs/getting-started/).

In addition, the event target assumes the target pipelines and tasks
exist in the cluster.

## Controller Deployment

### Kubernetes Manifests

// TODO use our images

### From Code

You can use the [ko](https://github.com/google/ko) tool to compile and deploy from source.

```console
ko create -f ./config
```

## Creating a Tekton Pipeline Target

Once the Tekton Pipeline Target Controller has been deployed along with the
defined Tekton objects, then the target can be created by defining the TektonTarget object:

```yaml
apiVersion: targets.triggermesh.io/v1alpha1
kind: TektonTarget
metadata:
  name: <TARGET-NAME>
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
 -H "Ce-Type: dev.knative.source.tekton" \
 -H "Ce-Source: awesome/instance" \
 -H "Ce-Id: 536808d3-88be-4077-9d7a-a3f162705f79" \
 -d '{"buildtype": "task","name": "tekton-test","params":{"greeting":"Hi from TriggerMesh"}}'
```

## Tekton Pipeline Target Message Format

The Tekton Pipeline Target message format must contain at least:
  - buildtype (can be one of task or pipeline)
  - name (this is the name of the pipeline or task object being invoked)
  - params (optional JSON object of key/value pairs that the Tekton CRD is expecting)