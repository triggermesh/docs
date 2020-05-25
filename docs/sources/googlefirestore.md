# Google Cloud Firestore Source for Knative Eventing

For building ContainerSource for Google Cloud Firestore that pulls events from Firestore and sends them to Knative service/channel

## Local Build

```
GO111MODULE=on go mod download
go build .
```

## Local Usage

- Download Google Cloud Service Account file
- Define these environment variables

```
export DOCUMENT_PATH=<users/marie>
export EVENT_TYPE=<create/delete/update/write>
export GOOGLE_APPLICATION_CREDENTIALS=</tmp/key.json>
export CREDENTIALS=<value-from-your-sa-file>
```

Here, `GOOGLE_APPLICATION_CREDENTIALS` denotes where you want to save your sa file

- Then run `./googlefirestore`


## Local Docker Build

- If you don't have a local Go environment, use Docker:

```
docker run -ti -e DOCUMENT_PATH=<> -e EVENT_TYPE=<create/delete/update/write> -e GOOGLE_APPLICATIN_CREDENTIALS=</tmp/key.json> -e CREDENTIALS=<sa> gcr.io/triggermesh/googlefirestore:latest
```

## Knative

- Create a secret with your Google Application Credentials

```
kubectl create secret generic google-secret --from-file=key.json=<path-to-service-account-file>
```

- Create the ContainerSource with

```
sed 's/EVENT_TYPE_VALUE/<event-type>/g;s/DOCUMENT_PATH_VALUE/<document-path>/g;s/GOOGLE_APPLICATION_CREDENTIALS_VALUE/<google-path>/g' firestore-source.yaml | kubectl apply -f -
```

Here, Replace `<>` with your desired value ( write `users\/marie` for `users/marie` path value)