# Event Target for Logz.io

This event Target receives [CloudEvents][ce] and ships messages to [Logz.io](https://logz.io/).

## Prerequisite(s)

- Logz.io account
- Logz.io shipping [token](https://docs.logz.io/user-guide/tokens/)

Consult the [Secrets](../guides/secrets.md) guide for more information about how to add the Logz.io shipping token as a secret.

## Deploying an Instance of the Target

Open the Bridge creation screen and add a Target of type `Logz`.

![Adding a Logz Target](../images/logz-target/create-bridge-1.png)

In the Target creation form, provide a name for the event Target, and add the following information:

* **Shipping Token**: Reference to a [TriggerMesh secret](../guides/secrets.md) containing the Logz.io [shipping token](https://docs.logz.io/user-guide/tokens/log-shipping-tokens/) as discussed in the [prerequisites](#prerequisites).
* **Logs Listener URL**: An API endpoint that can be found above your shipping token in the Logz.io dashboard.

![Adding a Target](../images/logz-target/create-bridge-2.png)

After clicking the `Save` button, the console will self-navigate to the Bridge editor. Proceed by adding the remaining components to the Bridge.

After submitting the Bridge, and allowing for some configuration time, a green check mark on the main _Bridges_ page indicates that the Bridge with was successfully created.

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

[ce]: https://cloudevents.io/
[ce-json]: https://github.com/cloudevents/spec/blob/v1.0/json-format.md
