# Event Target for Zendesk

This event Target recieves [CloudEvents][ce] and interfaces with Zendesk by either creating a ticket or assigning a [tag][zd-tag] on a pre-existing ticket depending on the CloudEvent type.

## Prerequisites

A Zendesk API token is required to utilize this Target. The steps to obtain a token are outlined in the [Zendesk API Docs](https://support.zendesk.com/hc/en-us/articles/226022787-Generating-a-new-API-token-)

## Deploying an Instance of the Target

Open the Bridge creation screen and add a Target of type `Zendesk`.

![Adding a Zendesk Target](../images/zendesk-target/create-bridge-1.png)

In the Target creation form, provide a name to the event Target, and add the following information:

* **Default Ticket Subject**: An optional ticket subject fallback if one is not provided in an incoming event
* **Zendesk Subdomain**: Name of the Zendesk [Subdomain][zd-subdom], without the `zendesk.com` domain or `https://` scheme.
* **Zendesk Email**: Email address associated with the Zendesk account.
* **Zendesk API Token**: Reference to a [TriggerMesh secret][tm-secret] containing a [token][zd-token] to communicate with the Zendesk API, as described in the previous section.
* **Subject**: An optional default ticket subject assignment

![Zendesk Target form](../images/zendesk-target/create-bridge-2.png)

After clicking the `Save` button, the console will self-navigate to the Bridge editor. Proceed by adding the remaining components to the Bridge.

![Bridge overview](../images/zendesk-target/create-bridge-3.png)

After submitting the bridge, and allowing some configuration time, a green check mark on the main _Bridges_ page indicates that the bridge with a Zendesk event Target was successfully created.

![Bridge status](../images/bridge-status-green.png)

For more information about using Zendesk, please refer to the [Zendesk documentation][docs].

## Event Types

A Zendesk event Target accepts the following [CloudEvent][ce] types:

### com.zendesk.ticket.create

Events of this type intened to create a new Zendesk ticket.

This type expects a [JSON][ce-jsonformat] payload with the following properties:
| Name  |  Type |  Comment |
|---|---|---|
| **subject**| string  |  The value of the subject field for this ticket |
|  **body** |  string | The value of the body field for this ticket  |

### com.zendesk.tag.create

Events of this type intened to assign a [tag][zd-tag] to a pre-existing Zendesk ticket.

This type expects a [JSON][ce-jsonformat] payload with the following properties:
| Name  |  Type |  Comment |
|---|---|---|
| **id** | int64 | The value of the id field for the ticket to be updated |
| **tag** | string | The value of the tag to assign to this ticket |

[ce]: https://cloudevents.io/
[ce-jsonformat]: https://github.com/cloudevents/spec/blob/v1.0/json-format.md
[tm-secret]:https://docs.triggermesh.io/guides/secrets/

[docs]: https://developer.zendesk.com/rest_api

[zd-token]: https://support.zendesk.com/hc/en-us/articles/226022787-Generating-a-new-API-token-
[zd-Target]: https://support.zendesk.com/hc/en-us/articles/203662136-Notifying-external-targets
[zd-trigger]: https://support.zendesk.com/hc/en-us/articles/203662226-Triggers-resources
[zd-subdom]: https://support.zendesk.com/hc/en-us/articles/221682747-Where-can-I-find-my-Zendesk-subdomain-
[zd-tag]:https://support.zendesk.com/hc/en-us/articles/203662096-About-tags
