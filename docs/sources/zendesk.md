# Event Source for Zendesk

This event source registers itself as a notification receiver in Zendesk in order to capture events such as ticket
creations.

## Prerequisite(s)

- API Token

### API Token

An API token is required in order to let the TriggerMesh Zendesk event source create a corresponding [Target][zd-target]
and [Trigger][zd-trigger] in your Zendesk account. To create a new API token from the Zendesk Admin interface, follow
the instructions at [Generating a new API token ][zd-token].

## Deploying an Instance of the Source

Open the Bridge creation screen and add a source of type `Zendesk`.

![Adding a Zendesk source](../images/zendesk-source/create-bridge-1.png)

In the Source creation form, give a name to the event source and add the following information:

* **Email**: Email address associated with the Zendesk account.
* [**Subdomain**][zd-subdom]: Name of the Zendesk subdomain, without the `zendesk.com` domain or `https://` scheme.
* [**Token**][zd-token]: Reference to a [TriggerMesh secret][tm-secret] containing an API token to communicate with the
  Zendesk API, as described in the previous section.
* **Webhook username/password**: arbitrary user name and password, used to verify event callbacks.

![Zendesk source form](../images/zendesk-source/create-bridge-2.png)

After clicking the `Save` button, you will be taken back to the Bridge editor. Proceed to adding the remaining
components to the Bridge, then submit it.

![Bridge overview](../images/zendesk-source/create-bridge-3.png)

A ready status on the main _Bridges_ page indicates that the Zendesk [Target][zd-target] and [Trigger][zd-trigger] were
successfully created and that the event source is ready to forward events from Zendesk.

![Bridge status](../images/bridge-status-green.png)

## Verification of External Resources

To verify the successful deployment of the Zendesk event source, navigate to the [Targets][zd-target] tab of the
_Extensions_ screen in the Zendesk Admin interface, below the _Settings_ section. The event source instance should have
created a Target following the naming pattern `io.triggermesh.zendesksource.<user namespace>.<source name>`.

![Zendesk Target name](../images/zendesk-source/targets-1.png)

The Target is configured to include the webhook username and password defined earlier in each request header.

![Zendesk Target details](../images/zendesk-source/targets-2.png)

The Target is linked to a [Trigger][zd-trigger], which can be found by navigating to the _Triggers_ screen, below the
_Business rules_ section. This Trigger follows the same naming convention as the matching Target.

![Zendesk Trigger name](../images/zendesk-source/triggers-1.png)

The Trigger defines the condition on which a new event is generated and sent to the Target. In the example below, the
condition is the creation of a new ticket.

![Zendesk Trigger details](../images/zendesk-source/triggers-2.png)

If the Trigger is marked as `active`, it will be sending notifications to the HTTP(S) endpoint exposed by the instance
of the TriggerMesh Zendesk event source as soon as a corresponding action happens in Zendesk.

## Event Types

### `com.zendesk.ticket.created`
When a new ticket is created in Zendesk a registred source will emit an event of type `com.zendesk.ticket.created`. An example event of this type can be found below.

```
☁️  cloudevents.Event
Validation: valid
Context Attributes,
  specversion: 1.0
  type: com.zendesk.ticket.created
  source: triggermesh.zendesk.com/zdevntsrc
  id: aeb9d9c9-89a9-468f-b157-015160c03454
  time: 2021-01-29T15:10:08.500296727Z
  datacontenttype: application/json
Extensions,
  knativearrivaltime: 2021-01-29T15:10:08.522619069Z
Data,
  {
    "current_user": {
      "details": "",
      "email": "demo@triggermesh.com",
      "external_id": "",
      "first_name": "Demo",
      "language": "English",
      "name": "Demo",
      "notes": "",
      "organization": {
        "details": "",
        "name": "",
        "notes": ""
      },
      "phone": ""
    },
    "satisfaction": {
      "current_comment": "",
      "current_rating": ""
    },
    "ticket": {
      "account": "TriggerMesh",
      "assignee": {
        "email": "support@triggermesh.com",
        "first_name": "Triggermesh",
        "last_name": "Developer",
        "name": "Triggermesh Developer"
      },
      "brand_name": "TriggerMesh",
      "cc_names": "",
      "ccs": "[]",
      "current_holiday_name": "Liquid error: internal",
      "description": "----------------------------------------------\n\nDemo, Jan 29, 2021, 11:10\n\nhello world",
      "due_date": "",
      "external_id": "",
      "group_name": "Support",
      "id": 343,
      "organization": {
        "details": "",
        "external_id": "",
        "name": "",
        "notes": ""
      },
      "priority": "",
      "requester": {
        "details": "",
        "email": "demo@triggermesh.com",
        "external_id": "",
        "field": "",
        "first_name": "Demo",
        "language": "English",
        "last_name": "Demo",
        "name": "Demo",
        "phone": ""
      },
      "status": "Open",
      "tags": "oracle",
      "ticket_field_id": "",
      "ticket_field_option_title_id": "",
      "ticket_type": "Ticket",
      "title": "hello world",
      "url": "triggermesh.zendesk.com/agent/tickets/343",
      "via": "Web Form"
    }
  }
```


[zd-token]: https://support.zendesk.com/hc/en-us/articles/226022787-Generating-a-new-API-token-
[zd-target]: https://support.zendesk.com/hc/en-us/articles/203662136-Notifying-external-targets
[zd-trigger]: https://support.zendesk.com/hc/en-us/articles/203662226-Triggers-resources
[zd-subdom]: https://support.zendesk.com/hc/en-us/articles/221682747-Where-can-I-find-my-Zendesk-subdomain-

[tm-secret]: ../guides/secrets.md


