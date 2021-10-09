The TriggerMesh Integration Language (TIL) is a configuration language based on the [HCL syntax](hcl-spec) which purpose is to provide a user-friendly interface for describing [TriggerMesh Bridges]().

!!! info "Use TIL with the TriggerMesh Platform"
    The TriggerMesh Integration Language is easily usable with the `til` CLI which helps you to generate the manifests describing your event-driven application. It is the perfect companion to the TriggerMesh controller. Go to the [complete documentation](../til/Introduction.md) for the detailed specification.

## Installation

Download the CLI from the GitHub [release page](https://github.com/triggermesh/til/releases). For example on Linux x86_64 architecture do:

```console
wget https://github.com/triggermesh/til/releases/download/v0.1.0/til_v0.1.0_linux_amd64
```

Put it in your PATH and make the binary executable

```console
mv til_v0.1.0_linux_amd64 /usr/local/bin/til
chmod +x /usr/local/bin/til
```

Check that you can run the command

```console
$ til -h
Interpreter for TriggerMesh's Integration Language.

USAGE:
    ./til <command>

COMMANDS:
    generate     Generate Kubernetes manifests for deploying a Bridge.
    validate     Validate a Bridge description.
    graph        Represent a Bridge as a directed graph in DOT format.
```

For the complete usage reference go to the [TIL documentation](../til/Introduction.md)

## Example

With the `til` CLI installed you are ready to write your first Bridge.

In this guide we take the simple example of a point to point conection between a GitHub repository and an AWS Lambda function. This assumes:

* We are using a sample repository on Github called `sebgoa/transform`. Pick one that you have access to
* We are using a GitHub token stored as a Kubernetes secret called `my-github-secret`
* We are using AWS IAM credentials stored as a Kubernettes secret called `my-aws-access-keys`
* We are using an AWS Lambda function called `github-processing` as our Target.
* We want to receive all events related to `issues` in our repository.

Using the TIL syntax you write this point to point connection in a file called `til-demo.tf` as is:

```
source "github" "git_source" {
  owner_and_repository = "sebgoa/transform"
  event_types = ["issues"]
  tokens = secret_name("my-github-secret")

  to = target.my_lambda
}

target aws_lambda "my_lambda" {
  arn = "arn:aws:lambda:us-east-1:123456789:function:github-processing"
  credentials = secret_name("my-aws-access-keys")
}
```

To generate the manifest in YAML you issue the following command:

```console
$ til generate til-demo.tf --yaml
apiVersion: targets.triggermesh.io/v1alpha1
kind: AWSLambdaTarget
metadata:
  labels:
    bridges.triggermesh.io/id: til_generated
  name: my-lambda
spec:
  arn: arn:aws:lambda:us-east-1:123456789:function:github-processing
  awsApiKey:
    secretKeyRef:
      key: access_key_id
      name: my-aws-access-keys
  awsApiSecret:
    secretKeyRef:
      key: secret_access_key
      name: my-aws-access-keys
---
apiVersion: sources.knative.dev/v1alpha1
kind: GitHubSource
metadata:
  labels:
    bridges.triggermesh.io/id: til_generated
  name: git-source
spec:
  accessToken:
    secretKeyRef:
      key: access_token
      name: my-github-secret
  eventTypes:
  - issues
  ownerAndRepository: sebgoa/transform
  secretToken:
    secretKeyRef:
      key: webhook_secret
      name: my-github-secret
  sink:
    ref:
      apiVersion: targets.triggermesh.io/v1alpha1
      kind: AWSLambdaTarget
      name: my-lambda
```

With these manifests ready you can deploy them easily. For example using [kapp]()

!!! info "Deployment options for TIL"
    TIL is a specification language and a CLI to help you author Kubernetes objects. It does not dictate how you deploy your Bridge. As suh you can choose `helm`, `kapp` or simply `kubectl`. Check the deployment [samples](../til/Helm.md)

## Generate the diagram of your event flow

If you want to generate a diagram of your flow, you can create a so-called dot file using `til`.

```console
til graph til-demo.tf > til-demo.dot
dot -Tpng til-demo.dot > til-demo.png
```

!!! info
    To visualize your event flow you can install [Graphviz](https://graphviz.org/) on your local machine or use the [on-line viewer](https://dreampuf.github.io/GraphvizOnline)

The PNG file created will look like the one below.

![](../assets/images/til-demo.png)

[tm-brg]: https://www.triggermesh.com/integrations
[hcl-spec]: https://github.com/hashicorp/hcl/blob/main/hclsyntax/spec.md