# Jira target

Sends events to [Jira](https://www.atlassian.com/software/jira), allowing you to create and retrieve Jira tickets or perform custom actions using the Jira API.

With `tmctl`:

```
tmctl create target jira --url <url> --auth.user <user> --auth.token <token>
```

On Kubernetes:

Secret

```yaml
apiVersion: v1
kind: Secret
metadata:
  name: jiratoken
type: Opaque
stringData:
  token: "jira-api-token"
```

Target

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

The Jira target accepts a number of different event types which result in different interactions with Jira.

## `com.jira.issue.create`

The Jira event Target will create an issue when receiving this event type. The CloudEvent data must contain a Jira issue JSON formatted as defined in [this schema](../../schemas/jira.issue.json).

Reply contains a partially filled Jira issue with updated data.


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

## `com.jira.issue.get`

The Jira event Target will retrieve an issue when receiving this event type. The CloudEvent data must contain a Jira issue `GET` request JSON formatted as defined in [this schema](../../schemas/jira.issue.get.json).

Reply data contains a Jira issue.

```sh
curl -v -X POST http://jiratarget-tmjira.default.svc.cluster.local \
-H "content-type: application/json" \
-H "ce-specversion: 1.0" \
-H "ce-source: curl-triggermesh" \
-H "ce-type: io.triggermesh.jira.issue.get" \
-H "ce-id: 123-abc" \
-d '{"id":"IP-9"}'
```

## `com.jira.custom`

The Jira event Target will send a request to the Jira API when this event type is received. The CloudEvent data expects a generic API request as defined in [this schema](../../schemas/jira.custom.json).

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

See the [Kubernetes object reference](../../reference/targets/#targets.triggermesh.io/v1alpha1.JiraTarget) for more details on the TriggerMesh configuration options.

## Prerequisites

1. Jira instance or Atlassian cloud tenant.
1. User API token.

To create the user API token at Jira:

- Open the Account settings > Security > [Create and manage API Tokens](https://id.atlassian.com/manage-profile/security/api-tokens)
- Press `Create API token` and fill the token name.
- Copy the API token and create a secret for the Jira token at TriggerMesh.

[ce]: https://cloudevents.io/
[api-tokens]: https://id.atlassian.com/manage-profile/security/api-tokens
[ce-jsonformat]: https://github.com/cloudevents/spec/blob/v1.0/json-format.md
[jira-api]: https://developer.atlassian.com/cloud/jira/software/rest/intro/
