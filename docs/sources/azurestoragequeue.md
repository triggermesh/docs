## Azure Storage Queue source for knative eventing

This event source is meant to be used as a Container Source with a Knative cluster to consume messages from a Azure Storage Queue and send them to a Knative service/function.

## Prerequisite(s)

- Azure Storage Queue

### Local build

```
GO111MODULE=on go mod download
go build .
```

### Local Usage

Define a few environment variables:

```
export AZURE_STORAGE_QUEUE_NAME=default
export AZURE_STORAGE_ACCOUNT_NAME=<>
export AZURE_STORAGE_ACCOUNT_KEY=<>
```

Then just run the local binary in your shell and send messages via the Azure console.


### Local Docker build

If you don't have a local Go environment, use Docker:

```
docker run -ti -e AZURE_STORAGE_QUEUE_NAME="queue_name" \
               -e AZURE_STORAGE_ACCOUNT_NAME="fgfdgsdfg" \
               -e AZURE_STORAGE_ACCOUNT_KEY="dsgdgsfgsfdgdsf" \
               gcr.io/triggermesh/azurestoragequeue:latest
```

### Knative usage

Create secret called awscreds with the creds file:

```
 kubectl create secret generic azurecreds --from-literal=azure_storage_account_name=<replace_with_key> \
                                          --from-literal=azure_storage_account_key=<replace_with_key> \
```

Edit the Container source manifest and apply it:

```
kubectl apply -f azurestoragequeue-source.yaml
```

