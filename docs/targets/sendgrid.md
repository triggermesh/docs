# Event Target for SendGrid

This event target receives [CloudEvents][ce] and utilizes [SendGrid][sg] to enable the creation and delivery of Email messages via event-data and event-occurrence, respectively.

## Prerequisites

* Register a [SendGrid account][sgSU]
* Retrieve a [SendGrid API token][api]

## Deploying an Instance of the Target

Open the Bridge creation screen and add a target of type `SendGrid`.

![Adding a SendGrid target](../images/sendgrid-target/create-bridge-1.png)

In the Target creation form, provide a name for the event Target, and add the following information:

* **Default sender name**: Define a default 'name' to be assigned in the `From:` section of the email to be created, if the received event does not contain a **FromName** property.
* **Default sender email**: Define a default email address to be assigned in the `From:` section of the email to be created, if the received event does not contain a **FromEmail** property.
* **Default recipient name**: Define a default name to be assigned in the `To:` section of the email to be created, if the received event does not contain a **FromEmail** property.
* **Default recipient email**: Define a default 'email address' to be assigned in the `To:` section of the email to be created, if the received event does not contain a **ToEmail** property.
* **API Secret**: Reference to a [TriggerMesh secret][tm-secret] containing an [API token][api] for authenticating requests

![SendgridTarget form](../images/sendgrid-target/create-bridge-2.png)

After selecting the `Save` button, the console will self-navigate to the Bridge editor. Proceed by adding the remaining components to the Bridge.

After submitting the bridge, and allowing some configuration time, a green check mark on the main _Bridges_ page indicates that the bridge with a SendGrid event Target was successfully created.

![Bridge status](../images/bridge-status-green.png)

For more information about using SendGrid, please refer to the [SendGrid documentation][docs].

### Event Type

The SendGrid event target can consume events of any type[^s]

The SendGrid event Target accepts a [JSON][ce-jsonformat] payload with the following properties that will overwrite their respective `spec` parameters.[^s]

| Name  |  Type |  Comment | Required
|---|---|---|---|
| **FromName** | string | Sender's name |false |
| **FromEmail** | string | Sender's email | false |
| **ToName** | string | Recipient's name | false |
| **ToEmail** | string | Recipient's email | false |
| **Message** | string | Contents of the message body | false |

If the **Message** key value is omitted within an event, the body of the email will contain the entire CloudEvent.

### Example

The Target uses the `Event Source` to assign the `subject` of new emails in the following format:

```go
"Notification from " + string(event.Source()) + " Knative Event"
```

The entire cloud event is passed into the email `body` by default.

When a **Message** property is present in the payload, its associated value is used to propagate the `body` of the email.

[sgSU]:https://signup.sendgrid.com/
[sg]:https://sendgrid.com/
[api]:https://sendgrid.com/docs/ui/account-and-settings/api-keys/

[ce]: https://cloudevents.io/
[ce-jsonformat]: https://github.com/cloudevents/spec/blob/v1.0/json-format.md
[tm-secret]:https://docs.triggermesh.io/guides/secrets/
[docs]: https://sendgrid.com/docs/

[^s]: *Note*: If there is not a default value specified at the spec for all of the available fields, an event *MUST* contain all of the following, save **Message**, or the Target **will** **fail**
