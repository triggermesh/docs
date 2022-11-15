# CloudEvents source

The TriggerMesh `CloudEventsSource` is used to ingest CloudEvents produced from external sources via HTTP. The `CloudEventsSource` acts as an HTTP server that can receives requests.

With `tmctl`:

```
tmctl create source cloudevents
```

On Kubernetes:

```yaml
apiVersion: sources.triggermesh.io/v1alpha1
kind: CloudEventsSource
metadata:
  name: sample
spec:
  sink:
    ref:
      apiVersion: eventing.knative.dev/v1
      kind: Broker
      name: default
```

Events produced have the following attributes:

* type depends on the metadata passed as part of the CloudEvent at runtime, unless overridden
* Schema of the `data` attribute is not know by TriggerMesh out of the box

See the [Kubernetes object reference](../../reference/sources/#sources.triggermesh.io/v1alpha1.CloudEventsSource) for more details.

A CloudEvent can be sent to a CloudEventsSource by using `curl`. The example below includes the optional Basic Authentication and Path.

!!! example "Calling the CloudEventsSource"
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
## Configuring a CloudEventsSource Object

The CloudEventsSource accepts parameters to set authentication, URL path and rate limiter. When succesfuly created it exposes an HTTP endpoint to listen for CloudEvents.

### Configuring Credentials (Optional)

Credentials can be configured using [Basic Authentication](https://datatracker.ietf.org/doc/html/rfc2617) using Kubernetes secrets to manage passwords.

Credentials are defined as arrays, allowing clients to use multiple user/password items.

The credentials are defined under `spec.credentials.basicAuths`:

!!! example "Credentials for 2 users"
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

### Configuring Path (Optional)

The `spec.path` parameter is used configure the URL path where CloudEvents will be accepted. When specified clients using this component must add the designated `path` to the URL, obtaining a 404 for any other requested location.

!!! example "Rate limit at 1000 RPS"
    ```yaml
    spec:
      path: /mypath
    ```


!!! tip "Using path"
    Path is not usually needed. Configure it when an existing CloudEvents producer is already emitting events using that path and cannot be re-configured.

### Configuring Rate Limiter (Optional)

Rate Limiter is used to filter the quantity of requests per second that an adapter instance can receive. When the configured limit per time window is reached, HTTP code 429 is returned along information on when the client should retry.

!!! example "Example response when rate limit reached"
    ```console
    HTTP/1.1 429 Too Many Requests
    retry-after: 1650204469582011930
    ```

To configure the Rate Limiter use the `spec.rateLimiter.requestsPerSecond` parameter:

!!! example "Rate limit at 1000 RPS"
    ```yaml
    spec:
      rateLimiter:
        requestsPerSecond: 1000
    ```


It must be noted when configuring the Rate Limiter that:

!!! tip "Rate limiter is per instance"
    The CloudEventsSource component is able to scale under load. The rate limiter value is set individualy per each scaled instance, which means that setting this value does not limit the total ammount of requests that can be received, but protects each instance from receiving more the configured value while informing the caller to re-issue the request.

!!! tip "Rate limiter and scaling"
    A low value of the rate limiter might prevent the adapter from scaling if the configured value is below the scaling rate.

### Configuring CloudEvents Sink

The `spec.sink` parameter is a destination that points to an object or URL that will receive the ingested CloudEvents.

!!! example "Using a reference"
    ```yaml
    spec:
      sink:
        ref:
          apiVersion: eventing.knative.dev/v1
          kind: Broker
          name: default
    ```

!!! example "Using a URL"
    ```yaml
    spec:
      sink:
        uri: https://mybroker-woodford.triggermesh.io
    ```

## Using the CloudEventsSource

Given the CloudEventsSource configuration options depicted in the preceding sections we can create this example CloudEventsSource by creating this object at a TriggerMesh cluster:

!!! example "Example CloudEventsSource"
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
      path: /mypath
      rateLimiter:
        requestsPerSecond: 1000
      sink:
        ref:
          apiVersion: eventing.knative.dev/v1
          kind: Broker
          name: default
    ```
