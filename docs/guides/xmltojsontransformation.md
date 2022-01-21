# Using an XMLtoJSONTransformation
The `XMLToJSONTransformation` object in Triggermesh exposes a service that can be used to accept an XML 
Cloudevent and return a JSON representation of the data.

## Deploying an XMLToJSONTransformation Bridge Inside Triggermesh
A `XMLToJSONTransformation` can be configured to either reply to the event sender. Or, if a `Sink`
is provided, the `XMLToJSONTransformation` will send the transformed data to the `Sink`. For this example,
we will use the `Sink` to send the transformed data to a `EventDisplay`. 

### Deploying an Event Display
The `EventDisplay` is a simple web application that can be used to display the transformed data. It can 
be deployed as follows:

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
With the `event-display` in place, the `XMLToJSONTransformation` object can be now deployed as follows:

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
The `PingSource` object is a simple source that can be configured to send Cloudevents on a Cron schedule.
We will be using it here to send an XML Cloudevent to the `XMLToJSONTransformation` object every 1 minute.

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
With our example Bridge in place, we can now view the transformed data in the `EventDisplay`.

* First, we will need to retrieve the `EventDisplay` pod name. We can do this by running the following command:
```cmd
kubectl -n <NAMESPACE> get pods
```

This command should return an output similar to the following:
```cmd
NAME                                                             READY   STATUS    RESTARTS   AGE
xmltojsontransformation-demo-00001-deployment-7f45697d45-4bngq   2/2     Running   0          5m42s
event-display-00001-deployment-5c97f6c58c-ndjhl                  2/2     Running   0          5m2s
```

* Now that we have the pod name, we can run the following command to view the transformed data in the `EventDisplay` pod logs:

```cmd
kubectl -n <NAMESPACE> logs event-display-00001-deployment-5c97f6c58c-ndjhl user-container
```

This command should return an output similar to the following:
```cmd
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


