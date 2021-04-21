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

    ![Salesforce connected app](../images/salesforce/salesforce-connected-app.png)

    - Select the connected app you just created from the list and then click `Manage`.
    - Click `Edit policies`.
    - Set `Permitted users` to `Admin approved users are pre-authorized`.
    - Click `Save`.

    ![Connected app policies](../images/salesforce/connected-app-policies.png)

    - Select the connected app from the list and then click `Manage`.
    - Click `Manage Profiles`.
    - Add permissions on the data this user will have access to.
    - Click `Save`.

2. Retrieve OAuth data to configure TriggerMesh Target.
    - Select the connected app from the list and then click `View`.
    - Copy the `Consumer Key`.
    - Reveal and copy the `Consumer Secret`.

## Certificate Key Secret

The TriggerMesh Salesforce integration needs a certificate key secret to sign requests for the Salesforce API.
A [secret needs to be created at TriggerMesh][tm-secret] that contains that certificate key.
The file name containing the key will need to be renamed to `certKey`. After that, go to **Secrets > Add Secret > File Upload**.

![Upload secret](../images/salesforce/file-upload-secret.png)

## Deploying an Instance of the Target

Open the Bridge creation screen and add a Target of type Salesforce.

![Adding a Salesforce Target](../images/salesforce/target/salesforce-target-creation.png)

In the Target creation form, provide a name for the event Target, and add the following information:

* **Client ID**: The client ID as retrieved from the Salesforce connected app.
* **Server**: The server used for Salesforce authentication.
* **User**: User for the Salesforce account.
* **Reply Events Policy**: Indicates when event responses should be sent back from this target.

After clicking the `Save` button, the console will self-navigate to the Bridge editor. Proceed by adding the remaining components to the Bridge.

After submitting the Bridge, and allowing for some configuration time, a green check mark on the main _Bridges_ page indicates that the Bridge with was successfully created.

![Bridge status](../images/bridge-status-green.png)

## Event Types

The Salesforce event Target expects an event type of `io.triggermesh.salesforce.apicall` to perform a request against the Salesforce API, and will producedresponses typed `io.triggermesh.salesforce.apicall.response`. The CloudEvent data should contain a request as defined in [this schema](../schemas/salesforce.apicall.json).

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

Returned errors structure is defined in [this schema](../schemas/triggermesh.error.json).

## Examples

Create a Salesforce Account object:

* **Event Type**: `io.triggermesh.salesforce.apicall`
* **Data**:
```json
{
  "action": "POST",
  "resource": "sobjects",
  "object": "account",
  "payload": { "Name": "Jane Doe" }
}
```

Update a Salesforce Account object:

* **Event Type**: `io.triggermesh.salesforce.apicall`
* **Data**:
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

* **Event Type**: `io.triggermesh.salesforce.apicall`
* **Data**:
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
* **Event Type**: `io.triggermesh.salesforce.apicall`
* **Data**:
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
