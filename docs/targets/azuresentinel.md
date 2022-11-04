# Azure Sentinel Target

You can send any payload that the standard Azure Sentinel API [Incidents - Create Or Update](https://docs.microsoft.com/en-us/rest/api/securityinsights/stable/incidents/create-or-update) supports. IE we are expecting this [Request Body](https://docs.microsoft.com/en-us/rest/api/securityinsights/stable/incidents/create-or-update#request-body) at the payload of the events.

Example supported event:
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
