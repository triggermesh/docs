# NodeJS functions

For information about configuration options across all function runtimes, please head to the [main functions documentation page](index.md).

## NodeJS empty field transformation example on Kubernetes

```yaml
apiVersion: extensions.triggermesh.io/v1alpha1
kind: Function
metadata:
  name: inline-node-function
spec:
  runtime: node
  ceOverrides:
    extensions:
      type: io.triggermesh.nodejs.sample
  entrypoint: handler
  code: |
    exports.handler = async function(event, context) {
  
      if (event.name == "") {
        event.name = "placeholder"; # (1)
      }
      
      console.log(context.clientContext.custom["foo"]) # (2)
      return event;
    };
```

1.  Tests if the event.name property has a value, if not sets it to placeholder.
2.  Logs the value of a CloudEvents extension attribute called "foo". To pass an extension attribute called foo in a request using curl, use -H "ce-foo: bar".

