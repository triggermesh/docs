# Logz.io target

Sends events to [Logz.io](https://logz.io/).

With `tmctl`:

```
tmctl create target logz --shippingToken <shippingToken> --logsListenerURL <logsListenerURL>
```

On Kubernetes:

Secret

```yaml
apiVersion: v1
kind: Secret
metadata:
  name: logz
type: Opaque
stringData:
  token: my_token  # Update this value with a valid shipping token
```

Target

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

* **Shipping Token**: contains the Logz.io [shipping token](https://docs.logz.io/user-guide/tokens/log-shipping-tokens/)
* **Logs Listener URL**: An API endpoint that can be found above your shipping token in the Logz.io dashboard.

The Logz target accepts events of type `io.triggermesh.logz.ship`, and responds with events of type `io.triggermesh.logz.ship.response`.

The payload contains a [JSON][ce-json] structure called `message`, which is the message to log in Logz.io.

You can test the Target by sending it an event using `curl`:

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

See the [Kubernetes object reference](../../reference/targets/#targets.triggermesh.io/v1alpha1.LogzTarget) for more details.

## Prerequisite(s)

- Logz.io account
- Logz.io shipping [token](https://docs.logz.io/user-guide/tokens/)

[ce]: https://cloudevents.io/
[ce-json]: https://github.com/cloudevents/spec/blob/v1.0/json-format.md
