# Transforming XML to JSON

The TriggerMesh `XMLToJSONTransformation` API object can be used to process a Cloudevent containing XML and return a JSON representation.

![](./../assets/images/xmltojsontransformation.png)

## Configuring an XML to JSON event flow XML

This guide shows you how to configure an event flow which transforms incoming CloudEvent in XML to their JSON representation. It has four steps:

* Deploy the `EventDisplay` service.
* Deploy the `XMlToJSONTransformation`.
* Deploy a Source that emits XML data.
* Check the results in the logs of `EventDisplay` Pod. 

A `XMLToJSONTransformation` can be configured to either reply to the event sender or to send the transformed data to a `Sink` if one is provided. In this guide, we will use a `Sink` to send the transformed data to a so-called `EventDisplay` service. 

### Deploying an Event Display
Let's first deploy the end of our event flow. The `EventDisplay` is a simple application that can be used to display CloudEvents. It can 
be deployed by writing the following YAML in a file and using `kubectl apply -f <manifest.yaml>`:

```yaml
apiVersion: serving.knative.dev/v1
kind: Service
metadata:
    name: event-display
spec:
  template:
    spec:
      containers:
        - image: gcr.io/knative-releases/knative.dev/eventing-contrib/cmd/event_display@sha256:46d5a66f300c3ced590835d379a0e9badf413ae7ab60f21a2550ecedbc9eb9d3
```

### Deploying an XMLToJSONTransformation Object
With the `event-display` in place, the `XMLToJSONTransformation` object can now be deployed in the same manner using the following manifest:

!!! Tip
    Below we use a `Sink` to declare where the response go. If you omit the `Sink` the response will go back to the Sender.

```yaml
apiVersion: flow.triggermesh.io/v1alpha1
kind: XMLToJSONTransformation
metadata:
  name: demo
spec:
  sink:
    ref:
      apiVersion: serving.knative.dev/v1
      kind: Service
      name: event-display
```

### Deploying a `PingSource` Object.

Finally, we deploy an event source that emits CloudEvent with XML. We can do this with the `PingSource` which sends Cloudevents on a 
schedule.

The YAML manifest below shows that we will send a _note_ in XML every minute. Write the following YAML in a file and apply it with `kubectl apply -f <manifest.yaml>`.

```yaml
apiVersion: sources.knative.dev/v1
kind: PingSource
metadata:
  name: pingxml
spec:
  schedule: "*/1 * * * *"
  contentType: application/xml
  data: '<note><to>Tove</to><from>Jani</from><heading>Reminder</heading><body>Dont forget me this weekend</body></note>'
  sink:
    ref:
      apiVersion: flow.triggermesh.io/v1alpha1
      kind: XMLToJSONTransformation
      name: demo
```

### Viewing the Transformation's Output in the Event Display
With our event flow in place, we can now view the transformed data in the `EventDisplay`.

We need to retrieve the `EventDisplay` Pod name by running the following command:

```cmd
kubectl get pods
NAME                                                             READY   STATUS    RESTARTS   AGE
xmltojsontransformation-demo-00001-deployment-7f45697d45-4bngq   2/2     Running   0          5m42s
event-display-00001-deployment-5c97f6c58c-ndjhl                  2/2     Running   0          5m2s
```

With the Pod name, we can run the following command to view the transformed data in the `EventDisplay` Pod logs:

```cmd
kubectl logs event-display-00001-deployment-5c97f6c58c-ndjhl user-container
☁️  cloudevents.Event
Validation: valid
Context Attributes,
  specversion: 1.0
  type: dev.knative.sources.ping
  source: /apis/v1/namespaces/t/pingsources/pingxml
  id: be4a7e9f-a475-4555-895e-84bcf075a85c
  time: 2022-01-21T17:29:00.426355338Z
  datacontenttype: application/json
Data,
  {
    "note": {
      "body": "Dont forget me this weekend",
      "to": "Tove",
      "from": "Jani",
      "heading": "Reminder"
    }
  }
```

We see our beautiful sample note now in JSON format.

