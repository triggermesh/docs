# Ruby functions

For information about configuration options across all function runtimes, please head to the [main functions documentation page](index.md).

## Ruby date and time event example on Kubernetes

```YAML
apiVersion: extensions.triggermesh.io/v1alpha1
kind: Function
metadata:
  name: inline-ruby-function
spec:
  runtime: ruby
  ceOverrides:
    extensions:
      type: io.triggermesh.ruby.sample
  entrypoint: handler
  code: |
    def handler(event:, context:)
    puts context.client_context["custom"]["foo"] # (1)
    hash = {date: Time.new}
    { statusCode: 200, body: JSON.generate(hash) } (2)
    end
```

1.  Logs the value of a CloudEvents extension attribute called "foo". To pass an extension attribute called foo in a request using curl, use -H "ce-foo: bar".
2.  returns the current time