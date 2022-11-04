# Event Target for Salesforce

This event Target receives [CloudEvents][ce] and invokes a Salesforce endpoint.

## Prerequisite(s)

- Salesforce account
- Certificate key secret

## Salesforce Account

Salesforce Target uses [OAuth JWT credentials][salesforce-oauth-jwt] for service authentication.

First, you will need to generate an X509 certificate for signing and verifying requests. We will be using `OpenSSL`, but any other certificate generation tool will work.

```sh
openssl req -x509 -sha256 -nodes -days 36500 -newkey rsa:2048 -keyout tm-sf.key -out tm-sf.crt
```

1. On the Salesforce site select **Setup > Apps > App Manager**, click on **New Connected App**.
    - Fill in mandatory fields, then click **Enable OAuth Settings**.
    - A callback URL is mandatory but can be filled with any HTTPS data.
    - Enable `Use digital signatures` and upload the public cert (`tm-sf.crt` in the example above).
    - Add Scopes for `api`, `refresh_token`, and `offline_access`.
    - Click `Save`.

    ![Salesforce connected app](../../assets/images/salesforce/salesforce-connected-app.png)

    - Select the connected app you just created from the list and then click `Manage`.
    - Click `Edit policies`.
    - Set `Permitted users` to `Admin approved users are pre-authorized`.
    - Click `Save`.

    ![Connected app policies](../../assets/images/salesforce/connected-app-policies.png)

    - Select the connected app from the list and then click `Manage`.
    - Click `Manage Profiles`.
    - Add permissions on the data this user will have access to.
    - Click `Save`.

1. Retrieve OAuth data to configure TriggerMesh Target.
    - Select the connected app from the list and then click `View`.
    - Copy the `Consumer Key`.
    - Reveal and copy the `Consumer Secret`.

## Certificate Key Secret

The TriggerMesh Salesforce integration needs a certificate key secret to sign requests for the Salesforce API. Consult the [Secrets](../guides/secrets.md) guide for more information about how to add the certificate key as a secret.

## Deploying an Instance of the Target

- **Client ID**: The client ID as retrieved from the Salesforce connected app.
- **Server**: The server used for Salesforce authentication.
- **User**: User for the Salesforce account.
- **Reply Events Policy**: Indicates when event responses should be sent back from this target.

## Creating a Salesforce Token Secret

To access the Salesforce services OAuth JWT credentials are needed. The private key to sign certificates need to be created through a secret:

```yaml
apiVersion: v1
kind: Secret
metadata:
  name: salesforce
type: Opaque
stringData:
  certKey: |-
    -----BEGIN PRIVATE KEY-----
    ...certificate...contents...
    -----END PRIVATE KEY-----
```

## Creating a Salesforce Target

An example of a Salesforce target for a function would resemble the following:

```yaml
apiVersion: targets.triggermesh.io/v1alpha1
kind: SalesforceTarget
metadata:
  name: salesforce
spec:
  auth:
    clientID: my.salesforce.client.id
    server: https://login.salesforce.com
    user: woodford@triggermesh.com
    certKey:
      secretKeyRef:
        name: salesforce
        key: certKey
  apiVersion: v50.0
  eventOptions:
    payloadPolicy: always
```

- All fields in the `spec.auth` path are required.
- Field `apiVersion` is optional, when not informed the latest version will be used.
- Event options include the `payloadPolicy` which specifies if responses should be sent. Possible values are `always`, `error` and `never`. Default value is `always`.

### Sending Messages to the Salesforce Target

The Salesforce target accepts the event type `io.triggermesh.salesforce.apicall` and returns `io.triggermesh.salesforce.apicall.response`

The payload contains a JSON structure with elements to execute the API request:

- `action`: is the HTTP verb to use.
- `resource`: is the object family to use.
- `object`: is the object type to operate on.
- `record`: is the object instance.
- `query`: parametrized key/values for the API request.
- `payload`: body contents for the request.

All those parameters but payload are put together sequentially to build the request:

```txt
https://<salesforce-host>/services/data/<version>/<resource>/<object>/<record>?query
```

Please, refer to the [Salesforce API](https://developer.salesforce.com/docs/atlas.en-us.api_rest.meta/api_rest/intro_what_is_rest_api.htm) on how to fill in values to execute requests.

#### Examples

The Salesforce target will create an account when receiving this event.

```sh
curl -v -X POST http://localhost:8080  \
    -H "content-type: application/json"  \
    -H "ce-specversion: 1.0"  \
    -H "ce-source: curl-pablo"  \
    -H "ce-type: io.triggermesh.salesforce.apicall"  \
    -H "ce-id: 123-abc" \
    -H "ce-statefulid: my-stateful-12345" \
    -H "ce-somethingelse: hello-world" \
    -H "statefulid: hello-world" \
    -d '{
          "action": "POST",
          "resource": "sobjects",
          "object": "account",
          "payload": {"Name": "test"}
        }'
```

An account can be deleted.

```sh
curl -v -X POST http://localhost:8080  \
  -H "content-type: application/json"  \
  -H "ce-specversion: 1.0"  \
  -H "ce-source: curl-pablo"  \
  -H "ce-type: my-curl-type"  \
  -H "ce-id: 123-abc" \
  -H "ce-statefulid: my-stateful-12345" \
  -H "ce-somethingelse: hello-world" \
  -H "statefulid: hello-world" \
  -d '{
        "action": "DELETE",
        "resource": "sobjects",
        "object": "account",
        "record": "0014x000005Y9SNAA0"
      }'
```

Specific fields of an account can be retrieved by using the query parameter.

```sh
curl -v -X POST http://localhost:8080  \
  -H "content-type: application/json"  \
  -H "ce-specversion: 1.0"  \
  -H "ce-source: curl-pablo"  \
  -H "ce-type: my-curl-type"  \
  -H "ce-id: 123-abc" \
  -H "ce-statefulid: my-stateful-12345" \
  -H "ce-somethingelse: hello-world" \
  -H "statefulid: hello-world" \
  -d '{
        "action": "GET",
        "resource": "sobjects",
        "object": "account",
        "record": "0014x000005VB1lAAG",
        "query": {"fields": "AccountNumber,BillingPostalCode"}
      }'
```

Salesforce uses `PATCH` to update records

```sh
curl -v -X POST http://localhost:8080  \
  -H "content-type: application/json"  \
  -H "ce-specversion: 1.0"  \
  -H "ce-source: curl-pablo"  \
  -H "ce-type: my-curl-type"  \
  -H "ce-id: 123-abc" \
  -H "ce-statefulid: my-stateful-12345" \
  -H "ce-somethingelse: hello-world" \
  -H "statefulid: hello-world" \
  -d '{
        "action": "PATCH",
        "resource": "sobjects",
        "object": "account",
        "record": "0014x000005Y9SNAA0",
        "payload": {"Name": "test2", "BillingCity" : "San Francisco"}
      }'
```

## Event Types

The Salesforce event Target expects an event type of `io.triggermesh.salesforce.apicall` to perform a request against the Salesforce API, and will producedresponses typed `io.triggermesh.salesforce.apicall.response`. The CloudEvent data should contain a request as defined in [this schema](../../schemas/salesforce.apicall.json).

This type expects a [JSON][ce-jsonformat] payload with the following properties:

| Name | Comment |
|---|---|
| **action**|The HTTP verb to use (_Required_)|
| **resource**|The object family to use|
| **object**|The object type to operate on|
| **record**|The object instance|
| **query**|Parameterized key/values for the API request|
| **payload**|Body contents for the request|

All of the parameters, except for payload, are put together sequentially to build the request that will be sent to the Salesforce API:

```txt
https://<salesforce-host>/services/data/<version>/<resource>/<object>/<record>?query
```

For more information about using the Salesforce API, please refer to the [Salesforce API documentation][salesforce-api].

### Reply Events Policy

When a request is sent using this Target, a response might be produced containing the reply from Salesforce or an error. Depending on if there are other Targets listening to these new events you might want to configure the reply behavior from this component. There are three possible values for the reply events policy:

- `Never`: No response will be produced.
- `Error`: Only errors will be returned from the Target.
- `Always`: External responses or errors will be produced.

When a response is produced from a Target, the extended attribute `category` is added which will contain one of two values:

- `Success`: For when the request succeeds.
- `Error`: For when an error occurs.

Returned errors structure is defined in [this schema](../../schemas/triggermesh.error.json).

## Examples

Create a Salesforce Account object:

- **Event Type**: `io.triggermesh.salesforce.apicall`
- **Data**:
```json
{
  "action": "POST",
  "resource": "sobjects",
  "object": "account",
  "payload": { "Name": "Jane Doe" }
}
```

Update a Salesforce Account object:

- **Event Type**: `io.triggermesh.salesforce.apicall`
- **Data**:
```json
{
  "action": "PATCH",
  "resource": "sobjects",
  "object": "account",
  "record": "0014x000005Y9SNAA0",
  "payload": { "Name": "Janet Does", "BillingCity" : "San Francisco" }
}
```

Retrieve specific fields of a Salesforce Account:

- **Event Type**: `io.triggermesh.salesforce.apicall`
- **Data**:
```json
{
  "action": "GET",
  "resource": "sobjects",
  "object": "account",
  "record": "0014x000005Y9SNAA0",
  "query": { "fields": "AccountNumber,BillingCity" }
}
```

Delete a Salesforce Account object:
- **Event Type**: `io.triggermesh.salesforce.apicall`
- **Data**:
```json
{
  "action": "DELETE",
  "resource": "sobjects",
  "object": "account",
  "record": "0014x000005Y9SNAA0"
}
```

[ce]: https://cloudevents.io/
[ce-jsonformat]: https://github.com/cloudevents/spec/blob/v1.0/json-format.md
[salesforce-api]: https://developer.salesforce.com/docs/atlas.en-us.api_rest.meta/api_rest/intro_what_is_rest_api.htm
[salesforce-oauth-jwt]: https://help.salesforce.com/articleView?id=remoteaccess_oauth_jwt_flow.htm

[tm-secret]: ../guides/secrets.md
