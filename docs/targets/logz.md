# Event Target for Logz.io

This event Target receives [CloudEvents][ce] and ships messages to [Logz.io](https://logz.io/).

## Prerequisite(s)

- Logz.io account
- Logz.io shipping [token](https://docs.logz.io/user-guide/tokens/)

Consult the [Secrets](../guides/secrets.md) guide for more information about how to add the Logz.io shipping token as a secret.

## Deploying an Instance of the Target

* **Shipping Token**: Reference to a [TriggerMesh secret](../guides/secrets.md) containing the Logz.io [shipping token](https://docs.logz.io/user-guide/tokens/log-shipping-tokens/) as discussed in the [prerequisites](#prerequisites).
* **Logs Listener URL**: An API endpoint that can be found above your shipping token in the Logz.io dashboard.

## Kubernetes

**Secret**

```yaml
apiVersion: v1
kind: Secret
metadata:
  name: logz
type: Opaque
stringData:
  token: my_token  # Update this value with a valid shipping token
```

**Target**

```yaml
apiVersion: targets.triggermesh.io/v1alpha1
kind: LogzTarget
metadata:
  name: tmlogz
spec:
  logsListenerURL: listener.logz.io
  shippingToken:
    secretKeyRef:
      name: logz
      key: token
```

## Event Types

A Logz event Target accepts the following CloudEvent types:

### io.triggermesh.logz.ship

The Logz event Target can also consume events of type `io.triggermesh.logz.ship`, and will produce responses typed `io.triggermesh.logz.ship.response`.

The payload contains a [JSON][ce-json] structure with elements to execute the API request:

- `message`: The message to log within Logz.io

## Examples

Create a Logz message:

- **Event Type**: `io.triggermesh.logz.ship`
- **Data**:
```json
{ "message":"hello world" }
```

Sending information to logz

```cmd
curl -v http://logztarget-tmlogz.logz.svc.cluster.local \
 -X POST \
 -H "Content-Type: application/json" \
 -H "Ce-Specversion: 1.0" \
 -H "Ce-Type: any.event.type" \
 -H "Ce-Source: some.origin/intance" \
 -H "Ce-Id: 536808d3-88be-4077-9d7a-a3f162705f79" \
 -d '{"message":"Hello from TriggerMesh using GoogleSheet!"}'
 ```

[ce]: https://cloudevents.io/
[ce-json]: https://github.com/cloudevents/spec/blob/v1.0/json-format.md
