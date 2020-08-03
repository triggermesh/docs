# Event target for Zendesk

This event target recieves [CloudEvents][ce] and interfaces with Zendesk by either creating a new Ticket or placing a new Tag on a Ticket depending on the CloudEvent type.

## Prerequisite: API token

A Zendesk API key is required to utilize this target. The steps to obtain a key are outlined in the [Zendesk API Docs](https://support.zendesk.com/hc/en-us/articles/226022787-Generating-a-new-API-token-)

## Deploying an instance of the Target

Open the Bridge creation screen and add a target of type `Zendesk`.

![Adding a Zendesk target](../images/zendesk-target/create-bridge-1.png)

In the Target creation form, give a name to the event Target and add the following information:

* **Email**: Email address associated with the Zendesk account.
* [**Subdomain**][zd-subdom]: Name of the Zendesk subdomain, without the `zendesk.com` domain or `https://` scheme.
* [**Token**][zd-token]: Reference to a [TriggerMesh secret][tm-secret] containing an API token to communicate with the Zendesk API, as described in the previous section.
* **Subject**: An optional default subject assignment for new tickets

![Zendesk target form](../images/zendesk-target/create-bridge-2.png)

After clicking the `Save` button, you will be taken back to the Bridge editor. Proceed to adding the remaining
components to the Bridge, then submit it.

![Bridge overview](../images/zendesk-target/create-bridge-3.png)

A ready status on the main _Bridges_ page indicates that the Zendesk event target was
successfully created and is ready to forward events into Zendesk.

<!-- ![Bridge status](../images/bridge-status-green.png) -->

## Event types

A Zendesk Target will ONLY accept [CloudEvents][ce] with a "Type" of either `com.zendesk.ticket.create` OR `com.zendesk.tag.create`

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

[ce]: https://cloudevents.io/
[zd-token]: https://support.zendesk.com/hc/en-us/articles/226022787-Generating-a-new-API-token-
[zd-target]: https://support.zendesk.com/hc/en-us/articles/203662136-Notifying-external-targets
[zd-trigger]: https://support.zendesk.com/hc/en-us/articles/203662226-Triggers-resources
[zd-subdom]: https://support.zendesk.com/hc/en-us/articles/221682747-Where-can-I-find-my-Zendesk-subdomain-

[tm-secret]: ../guides/secrets.md
