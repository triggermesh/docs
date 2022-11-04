# Event Target for Zendesk

This event Target receives [CloudEvents][ce] and uses the Zendesk API to either create a new ticket or tag an existing one.

## Prerequisite(s)

- Zendesk API token

## Zendesk API Token

You can find the steps to obtain an API token in the [Zendesk API Docs](https://support.zendesk.com/hc/en-us/articles/226022787-Generating-a-new-API-token-).

Consult the [Secrets](../guides/secrets.md) guide for more information about
how to add the Zendesk API token as a secret.

## Deploying an Instance of the Target

- **Default Ticket Subject**: An optional ticket subject fallback if one is not provided in an incoming event.
- **Zendesk Subdomain**: Name of the Zendesk [Subdomain][zd-subdom], without the `zendesk.com` domain or `https://` scheme.
- **Zendesk Email**: Email address associated with the Zendesk account.
- **Zendesk API Token**: Reference to a [TriggerMesh secret](../guides/secrets.md) containing a [token][zd-token] to communicate with the Zendesk API, as discussed in the [prerequisites](#prerequisites).

For more information about using Zendesk, please refer to the [Zendesk documentation][docs].

## Creating a Zendesk Target

Once the Zendesk Target Controller has been deployed, A Kubernetes secret named `zendesk` must be created.

```yaml
apiVersion: v1
kind: Secret
metadata:
  name: zendesk
type: Opaque
stringData:
   token: <Zendesk token>
```

A ZendeskTarget can be created by using the following YAML:

```yaml
apiVersion: targets.triggermesh.io/v1alpha1
kind: ZendeskTarget
metadata:
  name: triggermesh-zendesk
spec:
  #subject provides a default Subject for new Zendesk tickets. Optional
  subject: '' #Example: tmTickets0
  subdomain: '' #Example: tmdev1
  email: '' #Example: jeff@triggermesh.com
  token:
     secretKeyRef:
       name: zendesktargetsecret
       key: token
```

`subdomain,` `email,` &  `token` are ***ALL REQUIRED*** to deploy.

### Zendesk Target as an Event Sink

A Zendesk Target is addressable which means it can be used as a Sink for Knative components.

```yaml
apiVersion: eventing.knative.dev/v1beta1
kind: Trigger
metadata:
  name: zendesk-sample-trigger
spec:
  broker: default
  subscriber:
    ref:
      apiVersion: targets.triggermesh.io/v1alpha1
      kind: ZendeskTarget
      name: triggermesh-zendesk
```

A sample sink binding to a Zendesk Target deployment.

```yaml
apiVersion: sources.triggermesh.io/v1alpha1
kind: <Sample Source>
metadata:
  name: <Sample Source Name>
spec:
  sampleToken:
    secretKeyRef:
      name: <sample>
      key: <sample key>
  sink:
    ref:
      apiVersion: targets.triggermesh.io/v1alpha1
      kind: ZendeskTarget
      name: triggermesh-zendesk
```

### Sending Messages to the Zendesk Target

A Zendesk Target will ONLY accept
[CloudEvents](https://github.com/cloudevents/spec) with a "Ce-Type" of either
`com.zendesk.ticket.create` OR `com.zendesk.tag.create`

* Event's of type `com.zendesk.ticket.create` Expect both a `subject` and `body` to be preset.

  - **Example of type : `com.zendesk.ticket.create`**
    ```sh
    curl -v https://zendesktarget-triggermesh-zendesk.jnlasersolutions.dev.munu.io  \
    -H "Content-Type: application/json" \
    -H "Ce-Specversion: 1.0" \
    -H "Ce-Type: com.zendesk.ticket.create" \
    -H "Ce-Source: some.origin/intance" \
    -H "Ce-Id: 536808d3-88be-4077-9d7a-a3f162705f79" \
    -d '{"subject": "Hello", "body" : "World"}'
    ```

* Event's of type `com.zendesk.tag.create` Expect both a `id` and `tag` to be preset.
  - **Example of type : `com.zendesk.tag.create`**
    ```sh
    curl -v https://zendesktarget-triggermesh-zendesk.jnlasersolutions.dev.munu.io  \
    -H "Content-Type: application/json" \
    -H "Ce-Specversion: 1.0" \
    -H "Ce-Type: com.zendesk.tag.create" \
    -H "Ce-Source: some.origin/intance" \
    -H "Ce-Id: 536808d3-88be-4077-9d7a-a3f162705f79" \
    -d '{"id":81 , "tag":"triggermesh"}'
    ```

## Event Types

A Zendesk event Target accepts the following [CloudEvent][ce] types:

### com.zendesk.ticket.create

Events of this type intend to create a new Zendesk ticket.

This type expects a [JSON][ce-jsonformat] payload with the following properties:

| Name  |  Type |  Comment |
|---|---|---|
| **subject**| string  |  The value of the subject field for this ticket |
|  **body** |  string | The value of the body field for this ticket  |

An example response from the Zendesk Target after consuming an event of this type:

```json
{
 "id":165,
 "url":"https://triggermesh.zendesk.com/api/v2/tickets/165.json",
 "subject":"Hello",
 "raw_subject":"Hello",
 "description":"World",
 "status":"open",
 "requester_id":412584624334,
 "submitter_id":412584624334,
 "assignee_id":412584624334,
 "group_id":360010761434,
 "due_at":"0001-01-01T00:00:00Z",
 "via":
   {
     "channel":"api",
     "source":{"from":{},"to":{},"rel":""},
     "satisfaction_rating":{"id":0,"score":"","comment":""},
     "brand_id":360004879834,
     "allow_attachments":true,
     "is_public":true,
     "created_at":"2020-08-05T20:00:11Z",
     "updated_at":"2020-08-05T20:00:11Z",
     "collaborators":{},
     "comment":{"created_at":"0001-01-01T00:00:00Z"}
   }
}
```

### com.zendesk.ticket.tag.add

Events of this type intend to assign a [tag][zd-tag] to a pre-existing Zendesk ticket.

This type expects a [JSON][ce-jsonformat] payload with the following properties:

| Name  |  Type |  Comment |
|---|---|---|
| **id** | int64 | The value of the id field for the ticket to be updated |
| **tag** | string | The value of the tag to assign to this ticket |

[ce]: https://cloudevents.io/
[ce-jsonformat]: https://github.com/cloudevents/spec/blob/v1.0/json-format.md

[docs]: https://developer.zendesk.com/rest_api

[zd-token]: https://support.zendesk.com/hc/en-us/articles/226022787-Generating-a-new-API-token-
[zd-subdom]: https://support.zendesk.com/hc/en-us/articles/221682747-Where-can-I-find-my-Zendesk-subdomain-
[zd-tag]:https://support.zendesk.com/hc/en-us/articles/203662096-About-tags
