# Receiving External CloudEvents

The Trigermesh `CloudEventsSource` API object is used to ingest Cloudevents produced from external sources.

## Configuring a CloudEventsSource Object

The CloudEventsSource accepts parameters to set authentication, URL path and rate limiter. When succesfuly created it exposes an endpoint to listen for CloudEvents.

### Configuring Credentials (Optional)

Credentials can be configured using [Basic Authentication](https://datatracker.ietf.org/doc/html/rfc2617) and an arbitraty token header. Use Kubernetes secrets to manage passwords/tokens.

Credentials for both methods are defined as arrays, allowing clients to use multiple users/tokens.

For Basic Authentication the credentials are defined under `spec.credentials.basicAuths`:

```yaml
spec:
  credentials:
    basicAuths:
    - username: user1
      password:
        valueFromSecret:
          name: password1
          key: password
    - username: user2
      password:
        valueFromSecret:
          name: password2
          key: password
```

For Token headers credentials are defined under `spec.credentials.tokens`:

```yaml
spec:
  credentials:
    tokens:
    - header: header1
      value:
        valueFromSecret:
          name: token1
          key: token
    - header: header2
      value:
        valueFromSecret:
          name: token2
          key: token
```

When defining both, Basic Authentication and header tokens for a CloudEventsSource object, requests containing credentials that match any of them will be considered valid.

### Configuring Path (Optional)

The `spec.path` parameter is used configure the URL path where CloudEvents will be accepted.

```yaml
spec:
  path: /mypath
```

### Configuring Rate Limiter (Optional)

Rate Limiter is used to filter the quantity of requests per second that an adapter instance can receive. When the configured limit per time window is reached, HTTP code 429 is returned along information on when the client should retry.

```console
HTTP/1.1 429 Too Many Requests
retry-after: 1650204469582011930
```

To configure the Rate Limiter use the `spec.rateLimiter.requestsPerSecond` parameter:

```yaml
spec:
  rateLimiter:
    requestsPerSecond: 1000
```

It must be noted when configuring the Rate Limiter that:

- The CloudEventsSource is based on Knative Services and under load will create many adapters. The rate limiter value is set individualy per adapter instance.
- A low value of the rate limiter might prevent the adapter from scaling.

### Configuring CloudEvents Sink

The `spec.sink` parameter is an [Destination](https://pkg.go.dev/knative.dev/pkg/apis/duck/v1#Destination)  that points an object or URL that will receive the ingested CloudEvents.

```yaml
spec:
  sink:
    ref:
      apiVersion: eventing.knative.dev/v1
      kind: Broker
      name: default
```

## Using the CloudEventsSource

Given the CloudEventsSource depicted in the section above:

```yaml
apiVersion: sources.triggermesh.io/v1alpha1
kind: CloudEventsSource
metadata:
  name: sample
spec:
  credentials:
    basicAuths:
    - username: user1
      password:
        valueFromSecret:
          name: password1
          key: password
    - username: user2
      password:
        valueFromSecret:
          name: password2
          key: password
    tokens:
    - header: header1
      value:
        valueFromSecret:
          name: token1
          key: token
    - header: header2
      value:
        valueFromSecret:
          name: token2
          key: token
  path: /mypath
  rateLimiter:
    requestsPerSecond: 1000
  sink:
    ref:
      apiVersion: eventing.knative.dev/v1
      kind: Broker
      name: default
```

A CloudEvent can be ingested in the cluster using `curl` and Basic Authentication:

```console
curl -sSL -u user2:pw2 "http://cloudeventssource.mycluster.io/mypath" \
  -H "Ce-Specversion: 1.0" \
  -H "Ce-Type: json.document" \
  -H "Ce-Source: curl.shell" \
  -H "Ce-MyAttribute: my value" \
  -H "Content-Type: application/json" \
  -H "Ce-Id: 1234-abcd-x" \
  -d '{"Hello":"world"}'
```

A CloudEvent can be ingested in the cluster using `curl` and Token Header:

```console
curl -sSLv "http://cloudeventssource.mycluster.io/mypath" \
  -H "header1: tk1" \
  -H "Ce-Specversion: 1.0" \
  -H "Ce-Type: json.document" \
  -H "Ce-Source: curl.shell" \
  -H "Ce-MyAttribute: my value" \
  -H "Content-Type: application/json" \
  -H "Ce-Id: 1234-abcd-x" \
  -d '{"Hello":"world"}'
```
