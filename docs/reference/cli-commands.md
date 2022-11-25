# Available commands and scenarios

!!! Placeholder content !!!

Commands without the context:

```
tmctl config *
tmctl list
tmctl create broker <broker>
```

Commands with optional context:

```
tmctl dump [broker]
tmctl describe [broker]
tmctl delete [--broker <broker>] <component>
tmctl start [broker]
tmctl stop [broker]
tmctl watch [broker]
```

Commands with context from config:

```
tmctl create source *
tmctl create target *
tmctl create trigger *
tmctl create transformation *
```

### Installation

Checkout the code:

```
git clone git@github.com:triggermesh/tmctl.git
```

Install binary:

```
cd tmctl
go install
```

### Autocompletion

The CLI can generate completion scripts that can be loaded into the shell
to help use the CLI more easily:

for Bash:
```
source <(tmctl completion bash)
```
or for ZSH:

```
source <(tmctl completion zsh)
```

To make autocompletion load automatically, put this command in one of the
shell profile configuration, e.g.:

```
echo 'source <(tmctl completion bash)' >>~/.bash_profile
```

`tmctl` binary must be available in the `$PATH` to generate and use completion.


### Local event flow

Create broker:

```
tmctl create broker foo
```

Create source:

```
tmctl create source awssqs --arn <arn> --auth.credentials.accessKeyID=<access key> --auth.credentials.secretAccessKey=<secret key>
```

Watch incoming events:

```
tmctl watch
```

Create transformation:
```
tmctl create transformation --sources foo-awssqssource
```

Create target and trigger:

```
tmctl create target cloudevents --endpoint https://sockeye-tzununbekov.dev.triggermesh.io
tmctl create trigger --sources foo-transformation --target foo-cloudeventstarget
```

Or, in one command:

```
tmctl create target cloudevents --endpoint https://sockeye-tzununbekov.dev.triggermesh.io --sources foo-transformation
```

Open sockeye [web-interface](https://sockeye-tzununbekov.dev.triggermesh.io), send the message to SQS queue specified in the source creation step and observe the received CloudEvent in the sockeye tab.

Or send test event manually:

```
tmctl send-event --eventType com.amazon.sqs.message '{"hello":"world"}'
```

Formatting expectations are the same as in Curl requests: "foo" in the command line is equivalent to foo which is not a JSON string, '"foo"' is a JSON string, etc. JSON objects formatting has the same logic - '{...}' should be used to preserve the data format, otherwise it will be sent as plain text.

Stop event flow:

```
tmctl stop
```

Start event flow:

```
tmctl start
```

Print Kubernetes manifest (not applicable at the moment):

```
tmctl dump
```

Describe the integration:

```
tmctl describe
```

List existing brokers:

```
tmctl list
```