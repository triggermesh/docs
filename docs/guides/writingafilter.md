# Writing an Event Filter

Filters are an important part of TriggerMesh's event routing mechanism. They allow for filtering events based on the content of the payload. This content-based event filtering is expressed with Google's
[Common Expression Language](https://opensource.google/projects/cel) within the TriggerMesh `Filter` API specification.

!!! Info "Prerequisites"
    You need a working TriggerMesh platform installation. See the [installation steps](installation.md)
    You can verify that the API is available with the following command:
    
    ```console
    $ kubectl get crd|grep filters.routing
      filters.routing.triggermesh.io                       2021-10-06T09:01:33Z
    ```

To demonstrate filtering in TriggerMesh we are going to setup the event flow depicted in the diagram below. Two sources of kind `PingSource` are going to send events on a schedule, those events will get filtered an only the one who pass the filter will get displayed on the final event target. The final target is the [Sockeye application](https://github.com/n3wscott/sockeye), a microservice with displays the content of a [CloudEvent](https://cloudevents.io/).

![](../assets/images/filter-diagram.png)

Let's create all the required objects:

- [x] The sockeye target which serves as an event display
- [x] The two `PingSource`
- [x] The `Filter`

## Event display

First of all, we need to have a tool to see filtering results. Create a `sockeye`
service by saving the following YAML manifest in a file called `sockeye.yaml` and applying it to your Kubernetes cluster:

```yaml
apiVersion: serving.knative.dev/v1
kind: Service
metadata:
  name: sockeye
spec:
  template:
    spec:
      containers:
        - image: docker.io/n3wscott/sockeye:v0.7.0@sha256:e603d8494eeacce966e57f8f508e4c4f6bebc71d095e3f5a0a1abaf42c5f0e48
```

```
kubectl apply -f sockeye.yaml
```

Open the web interface in a browser:

```shell
browse $(kubectl get ksvc sockeye -o=jsonpath='{.status.url}')
```

## Event producers

Next, create the two
[PingSources](https://knative.dev/docs/developer/eventing/sources/ping-source) to
produce CloudEvents by saving the following YAML manifests in two files and applying them to your Kubernetes cluster with `kubectl apply`:

```yaml
apiVersion: sources.knative.dev/v1
kind: PingSource
metadata:
  name: ps-filter-demo-1
spec:
  schedule: "*/1 * * * *"
  contentType: "application/json"
  data: '{
   "name": "TriggerMesh",
	"sub": {
		"array": ["hello", "Filter"]
	    }
    }'
  sink:
    ref:
      apiVersion: routing.triggermesh.io/v1alpha1
      kind: Filter
      name: filter-demo
```

The second source uses a different payload to show you how the `Filter` expression can be used to express complex fitlering rules.


```yaml
apiVersion: sources.knative.dev/v1
kind: PingSource
metadata:
  name: ps-filter-demo-2
spec:
  schedule: "*/1 * * * *"
  contentType: "application/json"
  data: '{
      "answer": 42
    }'
  sink:
    ref:
      apiVersion: routing.triggermesh.io/v1alpha1
      kind: Filter
      name: filter-demo
```

## Filter events

Finally, create the `Filter` object that would filter events from the first PingSource. Once again save the following YAML manifest in a file and apply it to your Kubernetes cluster with `kubectl apply`.

```yaml
apiVersion: routing.triggermesh.io/v1alpha1
kind: Filter
metadata:
  name: filter-demo
spec:
  expression: $sub.array.0.(string) == "hello" && $name.(string) != "TriggerMesh" || $answer.(int64) == 42
  sink:
    ref:
      apiVersion: serving.knative.dev/v1
      kind: Service
      name: sockeye
```

Only events from the second source should appear in the `sockeye` web interface as shown in the screenshot below:

![](../assets/images/sockeye-filter.png)


!!! tip "Play with your Filter as Code"
    You can play around by modifying the filter expression and re-applying it with `kubectl`. This gives you a declarative event filter which you can manage with your [GitOps workflow](https://www.weave.works/technologies/gitops/)

## Specification

The object specification can be found in the API
[reference](../apis/routing.md).
