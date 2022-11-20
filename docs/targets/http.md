# HTTP target

Sends events over HTTP to external services.

With `tmctl`:

```
tmctl create target http --endpoint <endpoint> --method <method>
```

On Kubernetes:

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

- `response.eventType` event type for the response message. Mandatory
- `response.eventSource` event source for the response message. Mandatory
- `endpoint` URL including path and querystring for the remote HTTP service. Mandatory
- `method` verb for the HTTP rquest. Mandatory
- `skipVerify` to skip remote server TLS certificate verification. Optional
- `caCertificate` CA certificate configured for TLS connection. Optional
- `basicAuthUsername` basic authentication user name. Optional
- `basicAuthPassword` secret reference to basic authentication password. Optional
- `headers` string map of key/value pairs as HTTP headers. Optional

Requests from this HTTP Target will verify TLS certificates from the remote server if present. If the CA certificate at the server is self-signed, the public certificate needs to be added to the configuration, or alternatively mark the `Skip Verify` option.

The HTTP Target expects an event whose attributes complement the Target parameters.

There is no requirement regarding the `type` header value.

The `data` attribute can contain the following optional JSON attributes:

| Field | Description | Example |
|--- |--- |--- |
| query_string | Key/value pairs formatted as query string | `name=jane&lastname=doe` |
| path_suffix      | Will be appended to the target's path | `apparel/tshirts` |
| body     | String to be set as the request body | `{\"size\":\"L\",\"color\":\"beige\"}` |

Below are two examples of values for the `data` attribute:

```json
{"path_suffix":"world/italy/cities", "query_string":"top=10&format=csv"}
```

If body is a JSON structure, it will need to be stringified:

```json
{"body": "{\"records\":[{\"value\":{\"this\":{\"is\": \"sparta\"}}}]}"}
```

Responses from external HTTP endpoints are converted into CloudEvents and sent as a reply to the TriggerMesh Broker. It is important that the HTTP Target only be sent very specific event types, and carefuly handles response event types, so as to avoid events loops in which the response from the external HTTP service is reprocessed by the HTTP Target.

As an example:

- We configure an HTTP Target to integrate with Workday.
- A Trigger sends events of type `calendar.pto.request` to the HTTP Target.
- The response from Workday will generate a CloudEvent of type `workday.pto.response` and source `workday.instance1`.

As long as the Trigger for the HTTP Target is only reacting to events of type `calendar.pto.request`, the we're guaranteed that responses from Workday won't be sent straight back to Workday.

See the [Kubernetes object reference](../../reference/targets/#targets.triggermesh.io/v1alpha1.HTTPTarget) for more details.

## Tutorial: COVID-19 stats

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

## Tutorial: Calendarific country calendar

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
[ce]: https://cloudevents.io
