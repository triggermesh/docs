# Event Target for HTTP

This event Target receives [CloudEvents][ce] and turns them into HTTP requests that consume external services.

## Prerequisite(s)

- HTTP endpoints
- Password

## HTTP Endpoints

The HTTP event Target sends requests to arbitrary URLs and wraps responses in CloudEvents back to the caller. HTTP endpoints that are unauthenticated, use basic authentication or use custom header values for authentication, can be integrated using this target.

Responses from external HTTP endpoints are converted into CloudEvents and sent as a reply to the TriggerMesh Broker/Channel. It is important that the HTTP Target filters received events and cares about response event type and event source to avoid loops where those responses might end up being processed by the HTTP Target.

Requests from this HTTP Target will verify TLS certificates from the remote server if present. If the CA certificate at the server is self-signed, the public certificate needs to be added to the configuration, or alternatively mark the `Skip Verify` option.

## Password

If the remote endpoint requires basic authentication, the password needs to be created as a secret. Consult the [Secrets](../guides/secrets.md) guide for more information about
how to add the password as a secret.

## Deploying an Instance of the Target

Open the Bridge creation screen and add a Target of type `HTTP`.

In the Target creation form, provide a name for the event Target and add the following information:

- **Response Event Type**: The event type for responses from the remote endpoint.
- **EventSource**: The origin for all responses. When not informed, source will be automatically set to a generated name that includes the HTTP Target component name.
- **Endpoint**: The full URL for the remote service, including path and query string, if any.
- **Method**: The method to use when executing requests against the remote endpoint.
- **CA Certificate**: The CA certificate configured for TLS connection.
- **Skip Verify**: Allow skipping the remote server TLS certificate verification.
- **Username**: Username when using basic authentication.
- **Password**: Password when using basic authentication. Needs to reference the password secret discussed in the [prerequisites](#prerequisites).
- **Headers**: A set of key/value pairs that will be set within the HTTP request.

After clicking the `Save` button, the console will self-navigate to the Bridge editor. Proceed by adding the remaining components to the Bridge.

After submitting the Bridge, and allowing for some configuration time, a green check mark on the main Bridges page indicates that the Bridge with an Elasticsearch event Target was successfully created.

## Trigger Configuration

Responses from the remote endpoint will generate new CloudEvents that will be returned to TriggerMesh. Those response events should not be re-processed by the HTTP Target.

It is important that the Trigger that subscribes the HTTP Target to the Broker configures the appropriate filters to avoid these loops.

As an example:

- We configure an HTTP Target to integrate with Workday.
- HTTP Target is interested in events whose type is `calendar.pto.request`.
- The response from Workday will generate a CloudEvent of type `workday.pto.response` and source of `workday.instance1`.

Trigger should be configured to avoid feeding these responses into the HTTP Target. A filter key type and value of `calendar.pto.request` would provide such protection.

## Event Types

The HTTP Target expects a CloudEvent request that complements the Target configured values.

There is no requirement regarding the type header value. Any CloudEvent containing the expected data is valid to process. Data needs to be a JSON structure that might contain these optional fields:


| Field | Description | Example |
|--- |--- |--- |
| query_string | Key/value pairs formatted as query string | `name=jane&lastname=doe` |
| path_suffix      | Will be appended to the target's path | `apparel/tshirts` |
| body     | String to be set as the request body | `{\"size\":\"L\",\"color\":\"beige\"}` |

CloudEvent data examples:

```json
{"path_suffix":"world/italy/cities", "query_string":"top=10&format=csv"}
```

If body is a JSON structure, it will need to be stringified:

```json
{"body": "{\"records\":[{\"value\":{\"this\":{\"is\": \"sparta\"}}}]}"}
```

[ce]: https://cloudevents.io
