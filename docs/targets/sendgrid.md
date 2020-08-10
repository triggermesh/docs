# Event Target for SendGrid

This event target receives [CloudEvents][ce] and utilizes [SendGrid][sg] to enable the creation and delivery of Email messages via event-data and event-occurrence, respectively.

## Prerequisites

* Register a [SendGrid account][sgSU]
* Retrieve a [SendGrid API token][api]

## Deploying an Instance of the Target

Open the Bridge creation screen and add a target of type `SendGrid`.

![Adding a SendGrid target](../images/sendgrid-target/create-bridge-1.png)

In the Target creation form, provide a name for the event Target, and add the following information:

* **Default sender name**: Assign a default sender name. (optional)
* **Default sender email**: Assign a default sender email. (optional)
* **Default recipient name**:  Assign a default recipient's  name. (optional)
* **Default recipient email**: Assign a default recipient's email. (optional)
* **API Secret**: Reference to a [TriggerMesh secret][tm-secret] containing an [API token][api] for authenticating requests

![SendgridTarget form](../images/sendgrid-target/create-bridge-2.png)

After clicking the `Save` button, the console will self-navigate to the Bridge editor. Proceed by adding the remaining components to the Bridge.

After submitting the bridge, and allowing some configuration time, a green check mark on the main _Bridges_ page indicates that the bridge with a Sendgrid event Target was successfully created.

![Bridge status](../images/bridge-status-green.png)

For more information about using SendGrid, please refer to the [SendGrid documentation][docs].

### Example

The SendGrid event Target can consume events of any type.

This Target accepts a [JSON][ce-jsonformat] payload with the following properties:
| Name  |  Type |  Comment | Required
|---|---|---|---|
| **FromName**| string  |Sender's name. |false |
| **FromEmail**| string  |Sender's email. | false |
|  **ToEmail** |  string |Recipient's email.| false |
|  **ToName** |  string |Recipient's name.| false |
|**Message**|string| Contents of the message body |false |

If the **Message** key value is omited within an event, the body of the email will contain the entire cloud event

[sgSU]:https://signup.sendgrid.com/
[sg]:https://sendgrid.com/
[api]:https://sendgrid.com/docs/ui/account-and-settings/api-keys/

[ce]: https://cloudevents.io/
[ce-jsonformat]: https://github.com/cloudevents/spec/blob/v1.0/json-format.md
[tm-secret]:https://docs.triggermesh.io/guides/secrets/
[docs]: https://sendgrid.com/docs/
