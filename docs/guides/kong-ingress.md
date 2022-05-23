# Using Kong with Knative
The Kong Ingress Controller supports managing ingress traffic for
serverless workloads managed via Knative.

In this guide, we will learn how to use Kong with Knative services and
configure plugins for Knative services.

## Pre-requisite
The Knative project is a dependency, install it using the instructions in the [Knative documentation](https://knative.dev/docs/install/yaml-install/serving/install-serving-with-yaml/#install-the-knative-serving-component)

note: *You should only install the Serving component, not the networking layer.*

* A Kubernetes cluster version `v1.21+`
* Knative `v1.0.0+`

## Install Kong Ingress Controller

```
kubectl apply -f https://bit.ly/k4k8s
```

You can also use [Helm installation](https://github.com/Kong/charts/blob/main/charts/kong/README.md) method.

Once Kong is installed, you should note down the IP address or public CNAME of `kong-proxy` service.

In the current case case:

```shell
$ kubectl -n kong get svc kong-proxy
NAME         TYPE           CLUSTER-IP      EXTERNAL-IP   PORT(S)                      AGE
kong-proxy   LoadBalancer   10.98.223.191   35.241.22.45     80:30119/TCP,443:31585/TCP   1m
```

Take a note of the above IP address `35.241.22.45`. This will be different
for your installation.

## Configure Knative to use Kong for Ingress

### Ingress class

We will configure Knative to use `kong` as the Ingress class:

```
$ kubectl patch configmap/config-network \
  --namespace knative-serving \
    --type merge \
      --patch '{"data":{"ingress.class":"kong"}}'
```

## Setup Knative domain

As the final step, we need to configure Knative's base domain at which
our services will be accessible.

We override the default ConfigMap with the DNS name of `35.241.22.45.nip.io`.
This will be different for you:

```
$ echo '
apiVersion: v1
kind: ConfigMap
metadata:
  name: config-domain
  namespace: knative-serving
  labels:
    serving.knative.dev/release: v1.4.0
data:
  35.241.22.45.nip.io: ""
' | kubectl apply -f -
```

Once this is done, the setup is complete.

## Test connectivity to Kong

Send a request to the above domain that we have configured:

```bash
curl -i http://35.241.22.45.nip.io/
HTTP/1.1 404 Not Found
Date: Wed, 11 May 2022 12:01:21 GMT
Content-Type: application/json; charset=utf-8
Connection: keep-alive
Content-Length: 48
X-Kong-Response-Latency: 0
Server: kong/2.8.1

{"message":"no Route matched with those values"}
```

The 404 response is expected since we have not configured any services
in Knative yet.

## Install a Knative Service

```
$ echo "
apiVersion: serving.knative.dev/v1
kind: Service
metadata:
  name: helloworld-go
  namespace: default
spec:
  template:
    spec:
      containers:
        - image: gcr.io/knative-samples/helloworld-go
          env:
            - name: TARGET
              value: Go Sample v1
" | kubectl apply -f -
```

It can take a couple of minutes for everything to get configured but
eventually, you will see the URL of the Service.

```shell
$ kubectl get ksvc
NAME            URL                                             LATESTCREATED         LATESTREADY           READY   REASON
helloworld-go   http://helloworld-go.default.35.241.22.45.nip.io   helloworld-go-00001   helloworld-go-00001   True
```

Let's make the call to the URL:

```shell
$ curl -v http://helloworld-go.default.35.241.22.45.nip.io
HTTP/1.1 200 OK
Content-Type: text/plain; charset=utf-8
Content-Length: 20
Connection: keep-alive
Date: Wed, 11 May 2022 12:10:26 GMT
X-Kong-Upstream-Latency: 1666
X-Kong-Proxy-Latency: 1
Via: kong/2.8.1

Hello Go Sample v1!
```

The request is served by Knative and from the response HTTP headeres,
we can tell that the request was proxied by Kong.

The first request will also take longer to complete as Knative will spin
up a new Pod to service the request.
We can see how Kong observed this latency and recorded it in the
`X-Kong-Upstream-Latency` header.
If you perform subsequent requests,
they should complete much faster.

## Plugins for knative services

Let's now execute a plugin for our new Knative service.

First, let's create a KongPlugin resource:

```shell
$ echo "
apiVersion: configuration.konghq.com/v1
kind: KongPlugin
metadata:
  name: add-response-header
config:
  add:
    headers:
    - 'demo: injected-by-kong'
plugin: response-transformer
" | kubectl apply -f -
```

Next, we will update the Knative service created before and add an
annotation in the template:

```shell
$ echo "
apiVersion: serving.knative.dev/v1
kind: Service
metadata:
  name: helloworld-go
  namespace: default
spec:
  template:
    metadata:
      annotations:
        konghq.com/plugins: add-response-header
    spec:
      containers:
        - image: gcr.io/knative-samples/helloworld-go
          env:
            - name: TARGET
              value: Go Sample v1
" | kubectl apply -f -
```

Please note that the annotation `konghq.com/plugins` is
not added to the Service definition
itself but to the `spec.template.metadata.annotations`.

Let's make the request again:

```shell
$ curl -i http://helloworld-go.default.35.241.22.45.nip.io/
HTTP/1.1 200 OK
Content-Type: text/plain; charset=utf-8
Content-Length: 20
Connection: keep-alive
Date: Wed, 11 May 2022 13:48:53 GMT
demo:  injected-by-kong
X-Kong-Upstream-Latency: 3
X-Kong-Proxy-Latency: 0
Via: kong/2.8.1

Hello Go Sample v1!
```

As we can see, the response has the `demo` header injected.

This guide demonstrates the power of using Kong and Knative together.