# CloudEvents Target

The TriggerMesh `CloudEventsTarget` API object is used to export CloudEvents to external systems via HTTP.

## Configuring a CloudEventsTarget Object

The CloudEventsTarget accepts parameters to set the endpoint where CloudEvents will be sent and authentication.

### Configuring CloudEvents Endpoint

The `spec.endpoint` parameter is a destination that points to an HTTP URL that will receive the ingested CloudEvents.

!!! example "Using a reference"
    ```yaml
    spec:
      endpoint: https://external.systen/mypath
    ```

### Configuring Credentials (Optional)

If the external system requires [Basic Authentication](https://datatracker.ietf.org/doc/html/rfc2617) this component can be configured to use credentials by means of Kubernetes secrets.

The credentials are defined under `spec.credentials.basicAuths`:

!!! example "Credentials"
    ```yaml
    spec:
      credentials:
        basicAuth:
          username: user
          password:
            valueFromSecret:
              name: ce-target-password
              key: password
    ```

## Using the CloudEventsTarget

Lets now create a complete CloudEventsTarget
Given the configuration options depicted in the preceding sections we can create this example CloudEventsTarget by creating this object at a TriggerMesh cluster:

!!! example "Example CloudEventsTarget"
    ```yaml
    apiVersion: targets.triggermesh.io/v1alpha1
    kind: CloudEventsTarget
    metadata:
      name: sample
    spec:
      endpoint: https://external.systen/mypath
      credentials:
        basicAuth:
          username: user
          password:
            # The ce-target-password secret containing a password key must exist.
            valueFromSecret:
              name: ce-target-password
              key: password
    ```

Write the example YAML object above to a file replacing endpoint and credentials to suit your needs, then apply it to your cluster:

```console
kubectl apply -f my-cloudeventstarget.yaml
```

The running object might be used now as a Trigger's subscriptor to consume CloudEvents from a Broker and forward them to an external endpoint.
