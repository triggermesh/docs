# SendGrid target

Sends events to [SendGrid][sg].

With `tmctl`:

```
tmctl create target sendgrid --apiKey <apiKey>
```

On Kubernetes:

Secret

```yaml
apiVersion: v1
kind: Secret
metadata:
  name: sendgrid
type: Opaque
stringData:
  apiKey: ''  # Update this value with a valid Sendgrid API key
```

Target

```yaml
apiVersion: targets.triggermesh.io/v1alpha1
kind: SendGridTarget
metadata:
  name: triggermesh-email
spec:
  defaultFromName: Knative
  defaultToName: bar
  defaultToEmail: bob@gmail.com
  defaultFromEmail: bar@gmail.com
  defaultSubject: Hello World
  apiKey:
    secretKeyRef:
      name: sendgrid
      key: apiKey
```

- **Default sender name**: Define a default 'name' to be assigned in the `From:` section of the email to be created, if the received event does not contain a `FromName` property.
- **Default sender email**: Define a default email address to be assigned in the `From:` section of the email to be created, if the received event does not contain a `FromEmail` property.
- **Default recipient name**: Define a default name to be assigned in the `To:` section of the email to be created, if the received event does not contain a `FromEmail` property.
- **Default recipient email**: Define a default 'email address' to be assigned in the `To:` section of the email to be created, if the received event does not contain a `ToEmail` property.
- **Default subject**: Define a default subject to be assigned to the outgoing email to be created, if the received event does not contain a `subject` property.
- **API Secret**: Contains an [API token][api] for authenticating requests.

**Note:** If there is not a default value specified for all of the optional fields, the event received by that deployment *MUST* contain all of the information noted in the [Event Types](#event-types), except for `Message`, or the Target **will fail**.

Depending on how the Sendgrid Target is to be used, defaults can be configured for all available parameters and the Target can accept arbitrary events. Or none of the defaults can be set and these parameters can be passed in at runtime via the event payload.

The SendGrid event Target accepts a [JSON][ce-jsonformat] payload with the following properties that will overwrite their respective `spec` parameters.

| Name  |  Type |  Comment | Required
|---|---|---|---|
| **FromName** | string | Sender's name |false |
| **FromEmail** | string | Sender's email | false |
| **ToName** | string | Recipient's name | false |
| **ToEmail** | string | Recipient's email | false |
| **Message** | string | Contents of the message body | false |
| **Subject** | string | Assigns a subject to the email | false |

When a **Message** property is **not** present, the entire cloud event is passed into the email `body` by default.

You can test the Target by sending it an event using `curl`:

```
curl -v "localhost:8080" \
       -X POST \
       -H "Ce-Id: 536808d3-88be-4077-9d7a-a3f162705f79" \
       -H "Ce-Specversion: 1.0" \
       -H "Ce-Type: io.triggermesh.sendgrid.email.send" \
       -H "Ce-Source: dev.knative.samples/helloworldsource" \
       -H "Content-Type: application/json" \
       -d '{"fromEmail":"richard@triggermesh.com","toEmail":"bob@gmail.com","fromName":"richard","toName":"bob","message":"hello","subject":"Hello World"}'
```

An example email sent from the Sendgrid Target with the **Message** parameter omitted from the curl example above will look as follows:

```email
from: richard <richard@triggermesh.com>
to:	bob <bob@gmail.com>
date:	Sep 12, 2020, 12:41 AM
subject: Hello World

Validation: valid Context Attributes, specversion: 1.0 type: dev.knative.samples.helloworld source: dev.knative.samples/helloworldsource id: 536808d3-88be-4077-9d7a-a3f162705f79 time: 2020-09-12T04:41:00.000610299Z datacontenttype: application/json Extensions, knativearrivaltime: 2020-09-12T04:41:00.006331845Z knativehistory: default-kne-trigger-kn-channel.midimansland.svc.cluster.local Data, { "FromEmail":"richard@triggermesh.com","ToEmail":"bob@gmail.com", \
         "FromName":"richard","ToName":"bob","Subject":"Hello World" }
```

See the [Kubernetes object reference](../../reference/targets/#targets.triggermesh.io/v1alpha1.SendGridTarget) for more details.

## Prerequisite(s)

- [SendGrid account][sgSU]
- [SendGrid API token][api]

For more information about using SendGrid, please refer to the [SendGrid documentation][docs].

[sgSU]:https://signup.sendgrid.com/
[sg]:https://sendgrid.com/
[api]:https://sendgrid.com/docs/ui/account-and-settings/api-keys/

[ce]: https://cloudevents.io/
[ce-jsonformat]: https://github.com/cloudevents/spec/blob/v1.0/json-format.md
[docs]: https://sendgrid.com/docs/
