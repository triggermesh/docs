## Azure Storage Queue source for knative eventing

This event source is meant to be used as a Container Source with a Knative cluster to consume Google PubSub messages and send them to a Knative service/function.

### Local build

```
GO111MODULE=on go mod download
go build .
```

### Local Usage

Define a few environment variables:

```
export PROJECT="testbed-xxxx" 
export SUBSCRIPTION="test-sub" 
export GOOGLE_APPLICATION_CREDENTIALS="/path/to/creds.json:/tmp/creds.json"
```

Then run the local binary in your shell and send pubsub messages via the Google cloud console.


### Local Docker build

If you don't have a local Go environment, use Docker:

```
docker run -ti -e PROJECT="testbed-xxxx"  \
               -e SUBSCRIPTION="test-sub" \
               -e GOOGLE_APPLICATION_CREDENTIALS="/path/to/creds.json:/tmp/creds.json" \
               gcr.io/triggermesh/gcssource:latest
```

### Kubernetes Usage

Download google creds json to a file named `/path/to/creds.json` and create secret with

```
kubectl create secret generic pubsub --from-file=/path/to/creds.json
```

Edit the deployment manifest to specify the correct variables and then apply it:

```
kubectl apply -f deployment.yaml
```

### Knative usage

Create a secret containing your Google application credentials the same way as above.

Edit the Container source manifest and apply it:

```
kubectl apply -f googlepubsub-source.yaml
```

