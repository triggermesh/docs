# Using Kong with Knative

The Kong Ingress Controller can be configured as the network layer for TriggerMesh/Knative, enabling it to perform internal and external routing.

The steps in this article guide you through the installation and configuration process, referring to external links when information beyond this scope is needed.

## Pre-requisite

Knative Serving needs to be installed on a Kubernetes cluster, follow the instructions [at the documentation](https://knative.dev/docs/install/) to install it, skipping the network layer.

!!! Info "Knative networking layer"
    Kong is a networking layer option for Knative, you don't need to install any of the other choices at the project's documentation.

This guide was written using:

* Kubernetes `v1.21`
* Knative `v1.4.0`
* Kong Ingress Controller `2.3.1` (includes Kong `2.8`)

## Install Kong Ingress Controller

Kong Ingress Controller can be installed using either the YAML manifest at their repository or helm charts.

When using YAML, apply the provided manifest:

```console
kubectl apply -f https://bit.ly/k4k8s
```

When using Helm [follow their installation instructions](https://github.com/Kong/charts/blob/main/charts/kong/README.md).

Once Kong is installed take note of the IP address or public CNAME of the `kong-proxy` service at the `kong` namespace.

```console
kubectl -n kong get svc kong-proxy

NAME         TYPE           CLUSTER-IP      EXTERNAL-IP   PORT(S)                      AGE
kong-proxy   LoadBalancer   10.98.223.191   35.141.22.45     80:30119/TCP,443:31585/TCP   1m
```

In the example above the external IP address `35.141.22.45` was provisioned.

## Configure Kong Network Layer For Knative

### Knative Ingress Class

We will configure Knative to use `kong` as the Ingress class:

```console
kubectl patch configmap/config-network \
  --namespace knative-serving \
    --type merge \
      --patch '{"data":{"ingress.class":"kong"}}'
```

### Setup Knative Domain

Use the Kong Ingress external IP or CNAME to configure your the domain name resolution as explained at [Knative's documentation](https://knative.dev/docs/install/yaml-install/serving/install-serving-with-yaml/#configure-dns).

In this example we are not configuring a real DNS but using free wildcard domain tools like [sslip.io](https://sslip.io/) or [nip.io](https://nip.io/)

```console
kubectl patch configmap/config-domain \
  --namespace knative-serving \
  --type merge \
  --patch '{"data":{"35.141.22.45.nip.io":""}}'
```

Once this is done, the setup is complete.

## Try It

### Test Connectivity

Send a request to the configured domain and make sure that a 404 response is returned:

```console
curl -i http://35.141.22.45.nip.io/
HTTP/1.1 404 Not Found
Date: Wed, 11 May 2022 12:01:21 GMT
Content-Type: application/json; charset=utf-8
Connection: keep-alive
Content-Length: 48
X-Kong-Response-Latency: 0
Server: kong/2.8.1

{"message":"no Route matched with those values"}
```

The 404 response is expected since we have not configured any services yet.

### Test Service

Deploy a Knative Service:

```console
kubectl apply -f - <<EOF
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
              value: TriggerMesh
EOF
```

Wait for the service to be ready, then get it's exposed URL. The URL should be a sub-domain of the configured CNAME:

```console
kubectl get ksvc
NAME            URL                                             LATESTCREATED         LATESTREADY           READY   REASON
helloworld-go   http://helloworld-go.default.35.141.22.45.nip.io   helloworld-go-00001   helloworld-go-00001   True
```

A call to the URL using a web browser or `curl` should return a successful text response:

```console
curl -v http://helloworld-go.default.35.141.22.45.nip.io
HTTP/1.1 200 OK
Content-Type: text/plain; charset=utf-8
Content-Length: 20
Connection: keep-alive
Date: Wed, 11 May 2022 12:10:26 GMT
X-Kong-Upstream-Latency: 16
X-Kong-Proxy-Latency: 1
Via: kong/2.8.1

Hello TriggerMesh!
```

By inspecting the returned headers for the request above we can tell that it was proxied by Kong, latency headers being added to the response.

### Test Kong Plugins For Knative Services

Kong supports plugins to customize knative services requests and responses.

First, let's create a KongPlugin resource:

```console
kubectl apply -f - <<EOF
apiVersion: configuration.konghq.com/v1
kind: KongPlugin
metadata:
  name: add-response-header
config:
  add:
    headers:
    - 'demo: injected-by-kong'
plugin: response-transformer
EOF
```

Next, we will update the Knative service created before and add an annotation in the template:

```console
kubectl apply -f - <<EOF
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
              value: TriggerMesh
EOF
```

Note that the annotation `konghq.com/plugins` is not added to the Service definition itself but to the `spec.template.metadata.annotations`.

Let's make the request again:

```console
curl -i http://helloworld-go.default.35.241.22.45.nip.io/
HTTP/1.1 200 OK
Content-Type: text/plain; charset=utf-8
Content-Length: 20
Connection: keep-alive
Date: Wed, 11 May 2022 13:48:53 GMT
demo:  injected-by-kong
X-Kong-Upstream-Latency: 3
X-Kong-Proxy-Latency: 0
Via: kong/2.8.1

Hello TriggerMesh!
```

As we can see, the response has the `demo` header injected.
