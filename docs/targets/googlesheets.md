# Google Sheets target

Sends events to [GoogleSheets](https://www.google.com/sheets/about/).

With `tmctl`:

```sh
tmctl create target googlesheet --id <id> --defaultPrefix <defaultPrefix> --googleServiceAccount $(cat ./creds.json)
```

On Kubernetes:

Secret

```yaml
apiVersion: v1
kind: Secret
metadata:
  name: googlesheet
type: Opaque
stringData:
  # Replace the example below with a valid Google Credentials JSON string.
  googleServiceAccount: |-
    {
      "type": "service_account",
      "project_id": "dev",
      "private_key_id": "e1e4ad14a8d234adf4963d398863ad12444df",
      "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvQQWFNBgkqhkiG9w0BAQEFAASCB...R6Y=\n-----END PRIVATE KEY-----\n",
      "client_email": "tst-27@dev.iam.gserviceaccount.com",
      "client_id": "11547922342598721477",
      "auth_uri": "https://accounts.google.com/o/oauth2/auth",
      "token_uri": "https://oauth2.googleapis.com/token",
      "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
      "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/gstst-27%40dev.iam.gserviceaccount.com"
    }
```

Target

```yaml
apiVersion: targets.triggermesh.io/v1alpha1
kind: GoogleSheetTarget
metadata:
  name: triggermesh-googlesheet
spec:
  # Below is an example Spreadsheet ID. Change this.
  id: 14GKZKWVB2TsYy31cCZ43YwA1LoOlVeL4nB7jlZbgFAk
  # Static prefix assignment for reciving CloudEvents without prior transformation.
  defaultPrefix: <Default Prefix>
  # These values should not change.
  googleServiceAccount:
    secretKeyRef:
      name: googlesheet
      key: credentials
```

`id` is a unique identifier that can be retrieved from the URL path or parameters:
  - from path: `https://docs.google.com/spreadsheets/d/<SHEET_ID>/edit`
  - from query string: `https://docs.google.com/spreadsheet/ccc?key=<SHEET_ID>`

`Default Prefix` is a string used during new sheet creation when the event does not provide one.

GoogleSheets Target accepts any event types and passes the entire event into a new row on the specified Sheet.

You can test the Target by sending it an event using `curl`.

Sending arbitrary events:

```sh
curl -v localhost:8080 \
 -X POST \
 -H "Content-Type: application/json" \
 -H "Ce-Specversion: 1.0" \
 -H "Ce-Type: some.message.type" \
 -H "Ce-Source: some.origin/intance" \
 -H "Ce-Id: 536808d3-88be-4077-9d7a-a3f162705f79" \
 -d '{"mgs":"Hello from TriggerMesh using GoogleSheet!"}'
```

Sending events of type `io.triggermesh.googlesheet.append`.

Accepts the following properties in `data`:

| Name  |  Type |  Comment | Required
|---|---|---|---|
| **sheet_name** | string | The name of the sheet to create and or populate |true |
| **rows** | []string | List of data to populate the new row.  | true |
| **message** | string | A string to append to the sheet row | true |


```sh
curl -v localhost:8080 \
 -X POST \
 -H "Content-Type: application/json" \
 -H "Ce-Specversion: 1.0" \
 -H "Ce-Type: io.triggermesh.googlesheet.append" \
 -H "Ce-Source: some.origin/intance" \
 -H "Ce-Id: 536808d3-88be-4077-9d7a-a3f162705f79" \
 -d '{"rows":["Hello from TriggerMesh using GoogleSheet!", "test","sheet1"],"sheet_name":"Sheet1"}'
```

See the [Kubernetes object reference](../../reference/targets/#targets.triggermesh.io/v1alpha1.GoogleSheetTarget) for more details.

## Prerequisite(s)

- Google API credentials
- GoogleSheets Sheet ID

### Google API Credentials

1. Head to the [Google Developers Console][google-dashboard] and create a new
 project (or select the one you have).
1. Under **APIs & Services > Library**, search for “**Sheets API**” and enable it.
1. Go to **APIs & Services > Credentials** and choose “**Create credentials > Service account**”. Enter a service account name, ID, and description. You can skip optional fields, no additional roles or
 user access is required.
1. On the last step of service account creation, download the JSON key file.
1. Use the email from the `client_email` field within the JSON key file to share the
GoogleSheets Sheet you want the Target to have access to. The **Notify people** checkbox should be unchecked.

### GoogleSheets Sheet ID

In your browser, navigate to the GoogleSheets Sheet you want to use. You can find the Sheet ID in one of two ways:

- From path: `https://docs.google.com/spreadsheets/d/<SHEET_ID>/edit`
- From query string: `https://docs.google.com/spreadsheet/ccc?key=<SHEET_ID>`

[ce]: https://cloudevents.io/
[ce-jsonformat]: https://github.com/cloudevents/spec/blob/v1.0/json-format.md
[google-dashboard]: https://console.developers.google.com/apis/dashboard
