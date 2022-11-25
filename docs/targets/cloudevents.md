# CloudEvents Target

Sends events over HTTP in [CloudEvents](https://github.com/cloudevents/spec/blob/main/cloudevents/spec.md) format.

With `tmctl`:

```
tmctl create target cloudevents --endpoint <endpoint>
```

On Kubernetes:

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

The `spec.endpoint` parameter is a destination that points to an HTTP URL that will receive the ingested CloudEvents.

!!! example "Using a reference"
    ```yaml
    spec:
      endpoint: https://external.systen/mypath
    ```

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

Accepts events of any type.

See the [Kubernetes object reference](../../reference/targets/#targets.triggermesh.io/v1alpha1.CloudEventsTarget) for more details.
