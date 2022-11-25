# Alibaba OSS target

Sends events to [Alibaba OSS][oss], resulting in a new file that contains the event data.

The response event type will contain the original event type with `.response` appended to the end.

With `tmctl`:

```
tmctl create target alibabaoss --bucket <bucket> --endpoint <endpoint> --accessKeyID <accessKeyID> --accessKeySecret <accessKeySecret>
```

On Kubernetes:

Secret

```yaml
apiVersion: v1
kind: Secret
metadata:
  name: osscreds
type: Opaque
stringData:
  id: "<Alibaba Access Key ID>"
  secret: "<Alibaba Secret Access Key>"
```

Target

```yaml
apiVersion: targets.triggermesh.io/v1alpha1
kind: AlibabaOSSTarget
metadata:
  name: oss
spec:
  endpoint: <datacenter-endpoint>
  bucket: <bucket-name>
  accessKeyID:
    secretKeyRef:
      name: osscreds
      key: id
  accessKeySecret:
    secretKeyRef:
      name: osscreds
      key: secret
```

This target accepts events of all types and uploads them into a table with the Cloudevent ID as the object key.

The response event type will contain the original event type with `.response` appended to the end, e.g. `io.triggermesh.alibaba.oss.response`.

You can test the Target by sending it an event using `curl`:

```
curl -v localhost:8080\
 -X POST \
 -H "Content-Type: application/json" \
 -H "Ce-Specversion: 1.0" \
 -H "Ce-Type: any.event.type" \
 -H "Ce-Source: some.origin/intance" \
 -H "Ce-Id: 536808d3-88be-4077-9d7a-a3f162705f79" \
 -d '{"message":"Hello from TriggerMesh!"}'
```

See the [Kubernetes object reference](../../reference/targets/#targets.triggermesh.io/v1alpha1.AlibabaOSSTarget) for more details.

## Prerequisite(s)

- Alibaba Cloud account.
- The [Access Key ID and Secret Access Key](https://www.alibabacloud.com/help/faq-detail/142101.htm) associated to the account.

For more information about using Alibaba OSS, please refer to the [documentation](https://www.alibabacloud.com/help/product/31815.htm?spm=a3c0i.7950270.1834322160.3.5761ab91f9PlWp).

[ce]: https://cloudevents.io/
[ce-jsonformat]: https://github.com/cloudevents/spec/blob/v1.0/json-format.md
[oss]: https://www.alibabacloud.com/product/oss
