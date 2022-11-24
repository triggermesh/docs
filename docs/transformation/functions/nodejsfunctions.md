# NodeJS functions

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
  entrypoint: transformName
  code: |
    module.exports.transformName = async (event) => {
      if (event.name == "") {
        event.name = "placeholder";
      }
      return event;
    };
```
