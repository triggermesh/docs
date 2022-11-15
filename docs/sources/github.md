# Event Source for Github

This event source creates a webhook to listen for incoming Github Events.

!!! tip "Knative source"
    The GitHub source is [provided by the Knative project](https://github.com/knative-sandbox/eventing-github) and needs to be installed separately on Kubernetes. This also means it is not currently available in `tmctl`

On Kubernetes:

Source

```yaml
apiVersion: sources.knative.dev/v1alpha1
kind: GitHubSource
metadata:
  name: githubsource-sample
spec:
  eventTypes:
  - pull_request
  ownerAndRepository: "<your GitHub org>/<your GitHub repo>"
  accessToken:
    secretKeyRef:
      name: githubsecret
      key: accessToken
  secretToken:
    secretKeyRef:
      name: githubsecret
      key: secretToken
  sink:
    ref:
      apiVersion: messaging.knative.dev/v1alpha1
      kind: InMemoryChannel
      name: githubchannel
```

Secret

```yaml
apiVersion: v1
kind: Secret
metadata:
  name: githubsecret
type: Opaque
stringData:
  accessToken: "<your GitHub access token>"
  secretToken: "<your secret token>"
```

The Github event source emits events that begin with `dev.knative.source.github.` and end in the event type. For example: `dev.knative.source.github.pull_request`, `dev.knative.source.github.create`, and `dev.knative.source.github.delete`.

## Prerequisite(s)

- GitHub Tokens

### Create GitHub Tokens
Create a personal access token for GitHub that the GitHub source can use to register webhooks with the GitHub API. Also decide on a secret token that your code will use to authenticate the incoming webhooks from GitHub (secretToken).

The token can be named anything you find convenient. The Source requires `repo:public_repo` and `admin:repo_hook`, to let it fire events from your public repositories and to create webhooks for those repositories. Copy and save this token; GitHub will force you to generate it again if misplaced.

Here's an example for a token named "GitHubSource Sample" with the recommended scopes:

![ght](../../assets/images/github/personal_access_token.png)

### Verify

Verify the GitHub webhook was created by looking at the list of webhooks under the Settings tab in your GitHub repository. A hook should be listed that points to your Knative cluster with a green check mark to the left of the hook URL, as shown below.

![wh](../../assets/images/github/webhook_created.png)

### More Information
More information on the Github Event Source can be found here: https://knative.dev/docs/eventing/samples/github-source/

[tm-secret]: ../guides/secrets.md
[ce]: https://cloudevents.io
