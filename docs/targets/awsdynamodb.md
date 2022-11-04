# AWS DynamoDB target

## Sending events to the DynamoDB Target

Events can overwrite the default table name set at the spec by providing a table name at the `Ce-Source` attribute.

```console
curl -v http://awstarget-triggermesh-aws-dynamodb.d.svc.cluster.local \
 -X POST \
 -H "Content-Type: application/json" \
 -H "Ce-Specversion: 1.0" \
 -H "Ce-Type: io.triggermesh.aws.dynamodb.item.put" \
 -H "Ce-Subject: <TABLE_NAME>" \
 -H "Ce-Source: awesome/instance" \
 -H "Ce-Id: 536808d3-88be-4077-9d7a-a3f162705f79" \
 -d '{"Message":"Hi from TriggerMesh"}'
```
