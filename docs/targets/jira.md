# Event Target for Jira

This event target integrates with Jira, using received CloudEvent messages to create and retrieve Jira tickets or perform custom actions using Jira API.

## Prerequisites

1. Jira instance or Atlassian cloud tenant.
1. User API token.

To create the user API token at Jira:

- Open the Account settings > Security > [Create and manage API Tokens](https://id.atlassian.com/manage-profile/security/api-tokens)
- Press `Create API token` and fill the token name.
- Copy the API token and create a secret for the Jira token at TriggerMesh.

## Creating a Jira Token Secret

To access the Jira services, an API private key will be required.

A sample secret would resemble:

```yaml
apiVersion: v1
kind: Secret
metadata:
  name: jiratoken
type: Opaque
stringData:
  token: "jira-api-token"
```

## Creating a Jira Target

An example of a Jira target for a function would resemble the following:

```yaml
apiVersion: targets.triggermesh.io/v1alpha1
kind: JiraTarget
metadata:
  name: tmjira
spec:
  auth:
    user: woodford@triggermesh.com
    token:
      secretKeyRef:
        name: jira
        key: token
  url: https://tmtest.atlassian.net
```

Jira fields `user`, `token` and `url` are required.

### Sending Messages to the Jira Target

The Jira target accepts these event types:

- `com.jira.issue.create`

The Jira target will create an issue when receiving this event type.

```sh
curl -v -X POST http://jiratarget-tmjira.default.svc.cluster.local \
-H "content-type: application/json" \
-H "ce-specversion: 1.0" \
-H "ce-source: curl-triggermesh" \
-H "ce-type: io.triggermesh.jira.issue.create" \
-H "ce-id: 123-abc" \
-d '{
    "fields": {
       "project":
       {
          "key": "IP"
       },
       "labels": ["alpha","beta"],
       "summary": "Day 30.",
       "description": "Issue created using TriggerMesh Jira Target",
       "issuetype": {
          "name": "Task"
       },
       "assignee": {
          "accountId": "5fe0704c9edf280075f188f0"
       }
   }
}'
```

- `com.jira.issue.get`

The Jira target will retrieve an issue when receiving this event type.

```sh
curl -v -X POST http://jiratarget-tmjira.default.svc.cluster.local \
-H "content-type: application/json" \
-H "ce-specversion: 1.0" \
-H "ce-source: curl-triggermesh" \
-H "ce-type: io.triggermesh.jira.issue.get" \
-H "ce-id: 123-abc" \
-d '{"id":"IP-9"}'
```

- `com.jira.custom`

The Jira target will request the Jira API when this event type is received. The CloudEvent data expects a generic API request as seen at this example:

```sh
curl -v -X POST http://jiratarget-tmjira.default.svc.cluster.local \
-H "content-type: application/json" \
-H "ce-specversion: 1.0" \
-H "ce-source: curl-triggermesh" \
-H "ce-type: io.triggermesh.jira.custom" \
-H "ce-id: 123-abc" \
-d '{
    "method": "GET",
    "path": "/rest/api/3/user/assignable/search",
    "query": {"project": "IP"}
   }'
```

Please, refer to the [Jira API](https://developer.atlassian.com/cloud/jira/software/rest/intro/) on how to fill in values for these requests.


## Event Types

The Jira event Target accepts these event types:

### io.triggermesh.jira.issue.create

The Jira event Target will create an issue when receiving this event type. The CloudEvent data must contain a Jira issue JSON formatted as defined in [this schema](../../schemas/jira.issue.json).

Reply contains a partially filled Jira issue with updated data.

### io.triggermesh.jira.issue.get

The Jira event Target will retrieve an issue when receiving this event type. The CloudEvent data must contain a Jira issue `GET` request JSON formatted as defined in [this schema](../../schemas/jira.issue.get.json).

Reply data contains a Jira issue.

### io.triggermesh.jira.custom

The Jira event Target will send a request to the Jira API when this event type is received. The CloudEvent data expects a generic API request as defined in [this schema](../../schemas/jira.custom.json).

For more information on the Jira API, please refer to the [Jira API documentation][jira-api].

## Examples

Create a custom request to retrieve Jira projects:

- **Event Type**: `io.triggermesh.jira.custom`
- **Data**:
```json
{
  "method": "GET",
  "path": "/rest/api/3/project"
}
```

List assignable users for a project:

- **Event Type**: `io.triggermesh.jira.custom`
- **Data**:
```json
{
  "method": "GET",
  "path": "/rest/api/3/user/assignable/search",
  "query": { "project": "Project1" }
}
```

Create an issue:

- **Event Type**: `io.triggermesh.jira.issue.create`
- **Data**:
```json
{
  "fields": {
    "project":
      {
        "key": "Project1"
      },
      "labels": ["triggermesh","automated"],
      "summary": "Delete this test ticket.",
      "description": "This is a test issue created using TriggerMesh Jira Target",
      "issuetype": {
        "name": "Task"
      },
      "assignee": {
        "accountId": "5fe0704c9edf280075f188f0"
      }
   }
}
```

Retrieve an issue:

- **Event Type**: `io.triggermesh.jira.issue.get`
- **Data**:
```json
{ "id":"IP-9" }
```

[ce]: https://cloudevents.io/
[api-tokens]: https://id.atlassian.com/manage-profile/security/api-tokens
[ce-jsonformat]: https://github.com/cloudevents/spec/blob/v1.0/json-format.md
[jira-api]: https://developer.atlassian.com/cloud/jira/software/rest/intro/
