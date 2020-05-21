## Azure Event Hub source for knative eventing

This event source is meant to be used as a Container Source with a Knative cluster to consume messages from a Azure Event Hub and send them to a Knative service/function.

## Azure Event Hub vs Azure Event Grid
[Azure Event Hubs](https://docs.microsoft.com/en-us/azure/event-hubs/event-hubs-about) is a Big Data streaming platform and event ingestion service, capable of receiving and processing millions of events per second. 

[Event Grid](https://docs.microsoft.com/en-us/azure/event-grid/overview) is a fully managed event routing service that enables you to easily manage events across many different Azure services and applications.

Event Hub ingests, buffers, stores and processes data while Event Grid manages events and acts as event routing service which takes the event (either Azure or custom) and pushes event notification to a defined endpoints ( like web hooks, functions, event hubs)

### Local build

```
GO111MODULE=on go mod download
go build .
```

### Local Usage

Define a few environment variables:

```
export AZURE_STORAGE_CONTAINER_NAME=default
export AZURE_STORAGE_ACCOUNT_NAME=<>
export AZURE_STORAGE_ACCOUNT_KEY=<>
```

Then just run the local binary in your shell and send messages via the Azure console.


### Local Docker build

If you don't have a local Go environment, use Docker:

```
docker run -ti -e AZURE_STORAGE_CONTAINER_NAME="container_name" \
               -e AZURE_STORAGE_ACCOUNT_NAME="fgfdgsdfg" \
               -e AZURE_STORAGE_ACCOUNT_KEY="dsgdgsfgsfdgdsf" \
               gcr.io/triggermesh/azureeventhub:latest
```

### Knative usage

Create secret called azurecreds with the creds file:

```
 kubectl create secret generic azurecreds                                                                                   --from-literal=azure_storage_account_name=<replace_with_key> \
                            --from-literal=azure_storage_account_key=<replace_with_key> \
```

Edit the Container source manifest and apply it:

```
kubectl apply -f eventhub-source.yaml
```

