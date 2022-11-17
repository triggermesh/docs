# Azure Sentinel target

Sends events to [Azure Sentinel](https://azure.microsoft.com/en-us/products/microsoft-sentinel/#overview).

With `tmctl`:

```
tmctl create target azuresentinel --subscriptionID <subscriptionID> --resourceGroup <resourceGroup> --workspace <workspace> --auth.servicePrincipal.tenantID <tenantID> --auth.servicePrincipal.clientID <clientID> --auth.servicePrincipal.clientSecret <clientSecret>
```

On Kubernetes:

Secret

```yaml
apiVersion: v1
kind: Secret
metadata:
  name: azure
type: Opaque
stringData:
  tenantID: <client_secret>
  clientID: <client_id>
  clientSecret: <client_secret>
```

Target

```yaml
apiVersion: targets.triggermesh.io/v1alpha1
kind: AzureSentinelTarget
metadata:
  name: hello-sentinel
spec:
  # subscriptionID refers to the Azure Subscription ID that the Azure Sentinel instance is associated with.
  subscriptionID: <subscription_id>
  # resourceGroup refers to the resource group where the Azure Sentinel instance is deployed.
  resourceGroup: <resource_group>
  # workspace refers to the workspace name in Azure Sentinel.
  workspace: <workspace>
  auth:
    servicePrincipal:
      tenantID:
        valueFromSecret:
          name: azure
          key: tenantID
      clientID:
        valueFromSecret:
          name: azure
          key: clientID
      clientSecret:
        valueFromSecret:
          name: azure
          key: clientSecret
```

Accepts any payload that the standard Azure Sentinel API [Incidents - Create Or Update](https://docs.microsoft.com/en-us/rest/api/securityinsights/stable/incidents/create-or-update) supports. Specifically, the API expects [Request Body](https://docs.microsoft.com/en-us/rest/api/securityinsights/stable/incidents/create-or-update#request-body) as the payload of the events.

You can test the Target by sending it an event using `curl`:

```
curl -v http://azuresentineltarget-hello-sentinel.default.svc.cluster.local\
 -X POST \
 -H "Content-Type: application/json" \
 -H "Ce-Specversion: 1.0" \
 -H "Ce-Type: io.triggermesh.azure.sentinel.incident" \
 -H "Ce-Source: some.origin/intance" \
 -H "Ce-Id: 536808d3-88be-4077-9d7a-a3f162705f79" \
 -d '{"etag": "some-etag", "properties": {"providerIncidentId": "12", "status":"new", "severity": "high", "title": "some-title", "description": "some-description", "owner":{"assignedTo": "some-owner"},"additionalData": {"alertProductNames": ["some-product","some-other-product"]}}}'
```

See the [Kubernetes object reference](../../reference/targets/#targets.triggermesh.io/v1alpha1.AzureSentinelTarget) for more details.

## Example using a Transformation

This example shows how you can [transform](../transformation/bumblebee.md) a [CSNF](https://github.com/onug/CSNF) event into an Azure Sentinel event.

```yaml
apiVersion: flow.triggermesh.io/v1alpha1
kind: Transformation
metadata:
  name: csnf-sentinel
spec:
  sink:
    ref:
      apiVersion: targets.triggermesh.io/v1alpha1
      kind: Target
      name: hello-sentinel
  context:
  - operation: add
    paths:
    - key: type
      value: io.triggermesh.azure.sentinel.incident
  data:
  - operation: store
    paths:
    - key: $name
      value: event.name
    - key: $etag
      value: event.guid
    - key: $title
      value: event.name
    - key: $incidentID
      value: event.resource.identifier
    - key: $description
      value: event.shortDescription
  - operation: delete
    paths:
    - key:
  - operation: add
    paths:
    - key: etag
      value: $etag
    - key: properties.providerIncidentId
      value: $incidentID
    - key: properties.status
      value: new
    - key: properties.severity
      value: high
    - key: properties.title
      value: $title
    - key: properties.description
      value: $description
    - key: properties.owner.assignedTo
      value: bob
```
