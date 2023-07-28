# Salesforce source

This event source acts as a consumer of the [Salesforce stream API][salesforce-stream-api-docs].

With `tmctl`:

```
tmctl create source salesforce --auth.clientID <clientID> --auth.server <server> --auth.user <user> --auth.certKey certKey.txt --subscription.channel <channel> --subscription.replayID <replayID>
```

On Kubernetes:

```yaml
apiVersion: sources.triggermesh.io/v1alpha1
kind: SalesforceSource
metadata:
  name: sample
spec:
  subscription:
    channel: /data/ChangeEvents
    replayID: -2

  auth:
    clientID: salesforce.client_id
    server: https://login.salesforce.com
    user: woodford@example.com
    certKey:
      value: my-key

  sink:
    ref:
      apiVersion: eventing.triggermesh.io/v1alpha1
      kind: RedisBroker
      name: triggermesh
```

- **Broker** to send the events to.
- **Client ID** as retrieved from Salesforce Connected App.
- **Server** for authentication at Salesforce.
- **User** for the Salesforce account.
- **Channel** as configured at the Salesforce stream.

Events produced have the following attributes:

* type `com.salesforce.stream.message`

See the [Kubernetes object reference](../../reference/sources/#sources.triggermesh.io/v1alpha1.SalesforceSource) for more details.

!!! info Guide
    
    A complete guide to creating up a Salesforce application and setting up the TriggerMesh Salesforce source can be found [here](../guides/patterns/salesforcesource.md). 