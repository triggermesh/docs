# Exporting CloudEvents

The Trigermesh `CloudEventsTarget` API object is used to export Cloudevents to external systems via HTTP.

## Configuring a CloudEventsTarget Object

The CloudEventsTarget accepts parameters to set the endpoint where CloudEvents will be sent and authentication. When succesfuly created it consumes and forwards to the configured an HTTP endpoint.

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

!!! example "Credentials for 2 users"
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
