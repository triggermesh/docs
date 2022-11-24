# Ruby functions

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
  entrypoint: endpoint
  code: |
    def endpoint(event:, context:)
    hash = {date: Time.new}
    { statusCode: 200, body: JSON.generate(hash) }
    end
```
