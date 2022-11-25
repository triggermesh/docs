# Salesforce source

This event source acts as a consumer of the [Salesforce stream API][salesforce-stream-api-docs].

With `tmctl`:

```
tmctl create source salesforce --auth.clientID <clientID> --auth.server <server> --auth.user <user> --auth.certKey <certKey> --subscription.channel <channel> --subscription.replayID <replayID>
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
      apiVersion: eventing.knative.dev/v1
      kind: Broker
      name: default
```

- **Broker** to send the events to.
- **Client ID** as retrieved from Salesforce Connected App.
- **Server** for authentication at Salesforce.
- **User** for the Salesforce account.
- **Channel** as configured at the Salesforce stream.

Events produced have the following attributes:

* type `com.salesforce.stream.message`

See the [Kubernetes object reference](../../reference/sources/#sources.triggermesh.io/v1alpha1.SalesforceSource) for more details.

## Prerequisite(s)

- Salesforce Account
- Salesforce Stream Channel
- Certificate Key Secret

### Salesforce Account

Salesforce source uses [OAuth JWT credentials][salesforce-oauth-jwt] for service authentication.

1. First, you will need to generate an X509 certificate for signing and verifying requests.
We will be using `OpenSSL` but any other certificate generation tool should work.

    ```sh
    openssl req -x509 -sha256 -nodes -days 36500 -newkey rsa:2048 -keyout tm-sf.key -out tm-sf.crt
    ```

1. At Salesforce site select `Setup > Apps > App Manager`, click on `New Connected App`.

    - Fill in mandatory fields, then click `Enable OAuth Settings`.
    - A callback URL is mandatory but can be filled with any HTTPS data.
    - Enable `Use digital signatures` and upload the public cert (`tm-sf.crt` in the example above).
    - Add Scopes for `api` and `refresh_token, offline_access`.
    - Save.

    ![Salesforce connected app](../assets/images/salesforce/salesforce-connected-app.png)

    - Select the Connected App from the list and at the click on `Manage`.
    - Click `Edit policies`.
    - Set Permitted users to `Admin approved users are pre-authorized`.
    - Save.

    ![Connected app policies](../assets/images/salesforce/connected-app-policies.png)

    - Select the Connected App from the list and at the click on `Manage`.
    - Click `Manage Profiles`.
    - Add permissions on the data this user will have access to.
    - Save.

1. Retrieve OAuth data to configure TriggerMesh Source.

   - Select the Connected App from the list and at the click on `View`.
   - Copy `Consumer Key`
   - Reveal and copy `Consumer Secret`

### Salesforce Stream Channel

Refer to [Salesforce stream API][salesforce-stream-api-docs] on how to create stream channels:

- Change Data Capture events: `/data/ChangeEvents`
- PushTopics for streams based on single entity SOQL queries: `/topic/TicketsSold`
- Standard Platform Events for Salesforce event monitoring: `/event/LoginEventStream`
- Custom Platform Events for your SOQL platform events: `/event/MyCustom__e`

Each Streaming event type has a distinct [set of features][salesroce-event-features]

### Certificate Key Secret

The TriggerMesh Salesforce integration needs the certificate key to sign authentication requests with the Salesforce API.
A secret needs to be created at TriggerMesh that contains that certificate key.
The file name containing the key will need to be renamed to `certKey`, then select `Secrets` > `+ ADD SECRET`, `File Upload`

[salesforce-stream-api-docs]: https://developer.salesforce.com/docs/atlas.en-us.api_streaming.meta/api_streaming/
[salesforce-oauth-jwt]: https://help.salesforce.com/articleView?id=remoteaccess_oauth_jwt_flow.htm
[salesroce-event-features]: https://developer.salesforce.com/docs/atlas.en-us.api_streaming.meta/api_streaming/event_comparison.htm
[ce]: https://cloudevents.io/
