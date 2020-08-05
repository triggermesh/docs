# Event Target for Sendgrid

This event target receives [CloudEvents][ce] and utilizes [Sendgrid][sg] to enable the creation and delivery of Email messages via event-data and event-occurrence, respectively.

## Prerequisites

In order to use the TriggerMesh event target for Splunk, an administrator must:

* Register a [Sendgrid account][sgSU]
* Retrieve from Sendgrid an [API token][api]

## Deploying an instance of the Target

Open the Bridge creation screen and add a target of type `Sendgrid`.

<!-- ![Adding a $TARGET target](../images/$TARGET-target/create-bridge-1.png) -->

In the Target creation form, give a name to the event Target and add the following information:

* **message**: Assign a default message for the Email body. (optional)
* **fromName**: Assign a default sender's name. (optional)
* **fromEmail**: Assign a default sender's Email. (optional)
* **toName**:  Assign a default reciever's name. (optional)
* **toEmail**: Assign a default reciever's Email. (optional)
* **apiKey**: Reference to a [TriggerMesh secret][tm-secret] containing a [API token][api] for authenticating requests

<!-- ![$TARGET target form](../images/$TARGET-target/create-bridge-2.png) -->

After clicking the `Save` button, you will be taken back to the Bridge editor. Proceed to adding the remaining
components to the Bridge, then submit it.

A ready status on the main _Bridges_ page indicates that the $TARGET target is ready to accept events.

![Bridge status](../images/bridge-status-green.png)

For more information about using Sendgrid, please refer to the [Sendgrid documentation][docs].

### Example

```console
curl -v http://sendgridTarget \
       -X POST \
       -H "Ce-Id: 536808d3-88be-4077-9d7a-a3f162705f79" \
       -H "Ce-Specversion: 1.0" \
       -H "Ce-Type: dev.knative.samples.helloworld" \
       -H "Ce-Source: dev.knative.samples/helloworldsource" \
       -H "Content-Type: application/json" \
       -d '{"FromEmail":"dev@triggermesh.com.","ToEmail":"jeffthenaef@gmail.com", \
         "FromName":"SendgridTarget","ToName":"endUser","Message":"hello"}'
```

A list of possible keys:

* **message**: Assign the contents of the Email body.
* **fromName**: Assign the sender's name
* **fromEmail**: Assing the sender's Email
* **toName**:  Assign the reciever's name
* **toEmail**: Assing the reciever's Email

If the "message" key value is omited. The body of the email will contain the entire cloud event

[sgSU]:https://signup.sendgrid.com/
[sg]:https://sendgrid.com/
[api]:https://sendgrid.com/docs/ui/account-and-settings/api-keys/

[ce]: https://cloudevents.io/
[ce-jsonformat]: https://github.com/cloudevents/spec/blob/v1.0/json-format.md
[tm-secret]:https://docs.triggermesh.io/guides/secrets/
[docs]: https://sendgrid.com/docs/
