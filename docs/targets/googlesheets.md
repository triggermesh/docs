# Event Target for Google Sheets

This event target receives [CloudEvents][ce] over HTTP and appends the event payload to a GoogleSheets Sheet.

## Prerequisite(s)

- Google API Credentials
- GoogleSheets Sheet ID

## Google API Credentials

1. Head to the [Google Developers Console][google-dashboard] and create a new
 project (or select the one you have).
2. Under **APIs & Services > Library**, search for “**Sheets API**” and enable it.
3. Go to **APIs & Services > Credentials** and choose “**Create credentials > Service account**”. Enter a service account name, ID, and description. You can skip optional fields, no additional roles or
 user access is required.
4. On the last step of service account creation, download the JSON key file.
5. Use the email from the `client_email` field within the JSON key file to share the
GoogleSheets Sheet you want the Target to have access to. The **Notify people** checkbox should be unchecked.

## GoogleSheets Sheet ID

In your browser, navigate to the GoogleSheets Sheet you want to use. You can find the Sheet ID in one of two ways:

- From path: `https://docs.google.com/spreadsheets/d/<SHEET_ID>/edit`
- From query string: `https://docs.google.com/spreadsheet/ccc?key=<SHEET_ID>`

## Deploying an Instance of the Target

Open the Bridge creation screen and add a Target of type `GoogleSheets`.

![Adding a GoogleSheets Target](../images/googlesheets-target/create-bridge-1.png)

In the Target creation form, provide a name for the event Target and add the following information:

* **Google Service Account Secret**: Reference to a [TriggerMesh secret](../guides/secrets.md) containing a Google API key as discussed in the prerequisites.
* **ID**: The GoogleSheets Sheet ID to send the event payload to.
* **Default Prefix**: A string used during new sheet creation when the event does not provide one.

![GoogleSheets Target form](../images/googlesheets-target/create-bridge-2.png)

After clicking the `Save` button, the console will self-navigate to the Bridge editor. Proceed by adding the remaining components to the Bridge.

![Bridge overview](../images/googlesheets-target/create-bridge-3.png)

After submitting the Bridge, and allowing for some configuration time, a green check mark on the main _Bridges_ page indicates that the Bridge with a GoogleSheets event Target was successfully created.

![Bridge status](../images/bridge-status-green.png)

## Event Types

The GoogleSheets target will accept any event type, and by default, will stringify
the [CloudEvent][ce] and save the data in a new row.

### io.triggermesh.googlesheet.append

Events of this type contain nuanced data that is used to append the event data to a new row.

This type expects a [JSON][ce-jsonformat] payload with the following properties:

| Name  |  Type |  Comment |
|---|---|---|
| **sheet_name_prefix** | string | The prefix to be used for creating new sheets |
| **message** | string | A string to append to the sheet row |

[ce]: https://cloudevents.io/
[ce-jsonformat]: https://github.com/cloudevents/spec/blob/v1.0/json-format.md
[google-dashboard]: https://console.developers.google.com/apis/dashboard
