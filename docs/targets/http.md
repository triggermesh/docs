# Event Target for HTTP

This event Target receives [CloudEvents][ce] and turns them into HTTP requests that consume external services.

## Prerequisite(s)

The HTTP event target sends requests to arbitrary URLs and wraps responses in CloudEvents back to the caller. Any HTTP endpoint that can be reached using basic authentication, any sort of static token or no authentication can be configured using this target.

## HTTP Endpoints

The HTTP event Target sends requests to arbitrary URLs and wraps responses in CloudEvents back to the caller. HTTP endpoints that are unauthenticated, use basic authentication or use custom header values for authentication, can be integrated using this target.

Responses from external HTTP endpoints are converted into CloudEvents and sent as a reply to the TriggerMesh Broker/Channel. It is important that the HTTP Target filters received events and cares about response event type and event source to avoid loops where those responses might end up being processed by the HTTP Target.

Requests from this HTTP Target will verify TLS certificates from the remote server if present. If the CA certificate at the server is self-signed, the public certificate needs to be added to the configuration, or alternatively mark the `Skip Verify` option.

## Password

If the remote endpoint requires basic authentication, the password needs to be created as a secret. Consult the [Secrets](../guides/secrets.md) guide for more information about
how to add the password as a secret.

## Deploying an Instance of the Target

- **Response Event Type**: The event type for responses from the remote endpoint.
- **EventSource**: The origin for all responses. When not informed, source will be automatically set to a generated name that includes the HTTP Target component name.
- **Endpoint**: The full URL for the remote service, including path and query string, if any.
- **Method**: The method to use when executing requests against the remote endpoint.
- **CA Certificate**: The CA certificate configured for TLS connection.
- **Skip Verify**: Allow skipping the remote server TLS certificate verification.
- **Username**: Username when using basic authentication.
- **Password**: Password when using basic authentication. Needs to reference the password secret discussed in the [prerequisites](#prerequisites).
- **Headers**: A set of key/value pairs that will be set within the HTTP request.

## Trigger Configuration

Responses from the remote endpoint will generate new CloudEvents that will be returned to TriggerMesh. Those response events should not be re-processed by the HTTP Target.

It is important that the Trigger that subscribes the HTTP Target to the Broker configures the appropriate filters to avoid these loops.

As an example:

- We configure an HTTP Target to integrate with Workday.
- HTTP Target is interested in events whose type is `calendar.pto.request`.
- The response from Workday will generate a CloudEvent of type `workday.pto.response` and source of `workday.instance1`.

Trigger should be configured to avoid feeding these responses into the HTTP Target. A filter key type and value of `calendar.pto.request` would provide such protection.

## Create HTTP Target Integration

Configuring the HTTP integration might require some preparation on the remote service to integrate regarding not only URL but query strings, connection security and authentication.

All fixed items for the target should be part of its definition while parametrized values should be part of each request to this target.

When using basic authentication the password needs to be referenced through a Kubernetes secret.

### Creating a HTTP Target

The HTTP Target is a service which is able to receive CloudEvents and
transform them into method calls to an external HTTP API:

```yaml
apiVersion: targets.triggermesh.io/v1alpha1
kind: HTTPTarget
metadata:
  name: triggermesh-http
  namespace: mynamespace
spec:
  response:
    eventType: triggermesh.http.type
    eventSource: my.service.com
  endpoint: 'https://my.service.com/my/path?some_key=<SOME-KEY>'
  method: 'GET'
  skipVerify: false
  caCertificate: |-
    -----BEGIN CERTIFICATE-----
    MIIFazCCA1OgAwIBAgIUc6d3XTcIV4Ku7lovbHGuaVwAPqEwDQYJKoZIhvcNAQEL
    BQAwRTELMAkGA1UEBhMCQVUxEzARBgNVBAgMClNvbWUtU3RhdGUxITAfBgNVBAoM
    ...
    L4uCwbnED802y7PXCqNzcDjbRfWcXm2aDVM6Dc++am5NDx+JjTLFgNeiiAyRGI8z
    5tJeGYFpd4Cxzt92s6ODIZVZZe+vP41Jey23yEgPpyv5F47WegApe73g1y4bBjg=
    -----END CERTIFICATE-----
  basicAuthUsername: myuser
  basicAuthPassword:
    secretKeyRef:
      name: myservice
      key: password
  headers:
    User-Agent: TriggerMesh-HTTP
    Some-header: some-value
```

Fields at the `spec` above e match those needed for the adapter:

- `response.eventType` event type for the response message. Mandatory
- `response.eventSource` event source for the response message. Mandatory
- `endpoint` URL including path and querystring for the remote HTTP service. Mandatory
- `method` verb for the HTTP rquest. Mandatory
- `skipVerify` to skip remote server TLS certificate verification. Optional
- `caCertificate` CA certificate configured for TLS connection. Optional
- `basicAuthUsername` basic authentication user name. Optional
- `basicAuthPassword` secret reference to basic authentication password. Optional
- `headers` string map of key/value pairs as HTTP headers. Optional

Once created the HTTP Target service will be ready to consume incoming CloudEvents.

## Using the HTTP Target

CloudEvents consumed by this target should include a valid JSON message
containing these optional fields.

```json
{
  "query_string": "var1=value1&var2=value2",
  "path_suffix": "order/30/item/10",
  "body": "{\"hello\":\"world\"}"
}
```

- `query_string` will be added to the target configured query string.
- `path_suffix` will be added to the target configured path.
- `body` will be set as the request's body.

### COVID-19 stats

We will configure an HTTP target that can use the [COVID-19 API](https://covid19api.com/). Then we will use it to gather information about the world total stats.

Create the HTTP Target pointing to the COVID-19 API:

```yaml
apiVersion: targets.triggermesh.io/v1alpha1
kind: HTTPTarget
metadata:
  name: corona
  namespace: mynamespace
spec:
  response:
    eventType: covid.stats
  endpoint: 'https://api.covid19api.com/'
  method: 'GET'
```

The target will expose an internal URL that can be retrieved using the Kubernetes API.

```sh
$ kubectl get httptargets.targets.triggermesh.io -n mynamespace
NAME                        URL                                                                     READY   REASON   AGE
corona   http://httptarget-corona-mynamespace.default.svc.cluster.local   True             5d5h
```

Run an ephemeral curl container passing the command CloudEvent parameters that will be adding the path suffix to the endpoint that returns the world total stats for the service.

```sh
$ kubectl run --generator=run-pod/v1 curl-me --image=curlimages/curl -ti --rm -- \
  -v -X POST http://httptarget-corona.mynamespace.svc.cluster.local \
  -H "content-type: application/json" \
  -H "ce-specversion: 1.0" \
  -H "ce-source: curl-triggermesh" \
  -H "ce-type: my-curl-type" \
  -H "ce-id: 123-abc" \
  -d '{"path_suffix":"world/total"}'

...

```

### Calendarific country calendar

We will configure an HTTP target that uses [Calendarify](https://calendarific.com/) to retrieve wordlwide holidays.

Create a [Calendarific account](https://calendarific.com/signup) and retrieve an API key.

Create the HTTP Target using the API key:

```yaml
apiVersion: targets.triggermesh.io/v1alpha1
kind: HTTPTarget
metadata:
 name: calendarific
 namespace: mynamespace
spec:
  response:
    eventType: calendarific.holidays
  endpoint: 'https://calendarific.com/api/v2/holidays?api_key=REPLACE-WITH-APIKEY'
  method: 'GET'
```

Retrieve the internal URL.

```sh
$ kubectl get httptargets.targets.triggermesh.io -n mynamespace
NAME                        URL                                                                     READY   REASON   AGE
calendarific  http://httptarget-calendarific-mynamespace.default.svc.cluster.local   True             5d5h
```

Run an ephemeral curl container passing the command CloudEvent parameters that will be adding the querystring to return the US holidays for 2021.

```sh
$ kubectl run --generator=run-pod/v1 curl-me --image=curlimages/curl -ti --rm -- \
  -v -X POST http://httptarget-calendarific.mynamespace.svc.cluster.local \
  -H "content-type: application/json" \
  -H "ce-specversion: 1.0" \
  -H "ce-source: curl-triggermesh" \
  -H "ce-type: my-curl-type" \
  -H "ce-id: 123-abc" \
  -d '{"query_string":"country=US&year=2020"}'

...

```

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
