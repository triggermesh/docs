# Using Kuma Service Mesh with TriggerMesh

[Kuma](https://kuma.io) can be configured as a Service Mesh for TriggerMesh/Knative, providing security, observability and routing among other features.

The steps in this article guide you through the installation and configuration process, referring to external links when information beyond this scope is needed.

## Pre-requisites

Knative Serving needs to be installed on a Kubernetes cluster. We will also install Kong as the networking layer for Knative Serving since it is an ideal companion for Kuma.

To install Knative Serving with Kong follow [our guide at the documentation](kong-ingress.md).

!!! Info "Knative networking layer"
    Kong is a networking layer option for Knative, you don't need to install any of the other choices at the project's documentation.

This guide was written using:

* Kubernetes `v1.21`
* Knative `v1.4.0`
* Kong Ingress Controller `2.3.1` (includes Kong `2.8`)
* Kuma `v1.5`

## Install Kuma Service Mesh

Kuma can be installed using their command line tool. Follow the instructions [at the documentation](https://kuma.io/docs/1.6.x/installation/kubernetes/#download-kumactl) to install `kumactl`.

Once installed execute this command to deploy Kuma Service Mesh in the cluster.

```console
kumactl install control-plane --version=1.5.0 --env-var KUMA_RUNTIME_KUBERNETES_VIRTUAL_PROBES_ENABLED=false| kubectl apply -f -
```

!!! Info "Kuma Virtual Probes"
    [Kuma Virtual Probes](https://kuma.io/docs/1.6.x/policies) needs to be disabled.

Once Kuma Service Mesh is installed, you can see the pod running in the kuma-system namespace:

```console
kumactl -n kuma-system get pods
NAME                                 READY   STATUS    RESTARTS   AGE
kuma-control-plane-bd98c89dc-kwj97   1/1     Running   0          19s
```

## Configure Kong

We will add the label `kuma.io/sidecar-injection` to the kong namespace, so kong will be running in the mesh:

```console
kubectl label namespace kong kuma.io/sidecar-injection=enabled
```

The kong-ingress deployment needs the following annotation to be running as a Kuma gateway. The kong installation manifest used already contains this annotation.

```text
annotations: 
  kuma.io/gateway: enabled 
```

We are going to check if it's already set:

```console
kubectl -n kong get deploy -o jsonpath='{.items[0].spec.template.metadata.annotations}'   

{"kubectl.kubernetes.io/restartedAt":"2022-05-24T17:21:27+02:00","kuma.io/gateway":"enabled","traffic.sidecar.istio.io/includeInboundPorts":""}
```

As we can see the `kuma.io/gateway: enabled` is there.

We should restart kong to be running in the mesh and acting as the kuma gateway.

```console
kubectl -n kong rollout restart deployment ingress-kong
```

```console
kubectl -n kong get pods
NAME                            READY   STATUS    RESTARTS        AGE
ingress-kong-66844b5d85-mqmwk   3/3     Running   2 (7m38s ago)   7m51s
```

Now the kong pod is running in the mesh.

## Configure Knative

We will add the label `kuma.io/sidecar-injection` to the knative-serving namespace, so knative-serving will be running in the mesh:

```bash
kubectl label namespace knative-serving kuma.io/sidecar-injection=enabled
```

### Configure Kuma service Mesh to Strict mode

Knative needs some pre-requisites to be able to work in the Kuma Mesh with mTLS set to STRICT. We are going to add some [port-exclusions](https://kuma.io/docs/dev/reference/kubernetes-annotations/#traffic-kuma-io-exclude-inbound-ports)

```console
kubectl -n knative-serving patch deploy webhook --type='json' -p='[{"op": "add", "path": "/spec/template/metadata/annotations/traffic.kuma.io~1exclude-inbound-ports", "value":"8443"}]'
```

```console
kubectl -n knative-serving patch deploy domainmapping-webhook --type='json' -p='[{"op": "add", "path": "/spec/template/metadata/annotations/traffic.kuma.io~1exclude-inbound-ports", "value":"8443"}]'
```

```console
kubectl -n knative-serving patch deploy autoscaler --type='json' -p='[{"op": "add", "path": "/spec/template/metadata/annotations/traffic.kuma.io~1exclude-inbound-ports", "value":"8080"}]'
```

```console
kubectl -n knative-serving patch deploy activator --type='json' -p='[{"op": "add", "path": "/spec/template/metadata/annotations/traffic.kuma.io~1exclude-inbound-ports", "value":"8012"}]'
```

```console
kubectl -n knative-serving patch deploy activator --type='json' -p='[{"op": "add", "path": "/spec/template/metadata/annotations/traffic.kuma.io~1exclude-outbound-ports", "value":"8080"}]'
```

Now we should restart the only two pods that we haven't add the port-exclusion to add them to the mesh like the rest:

```console
kubectl -n knative-serving rollout restart deployment controller domain-mapping
```

```console
kubectl -n knative-serving get pods
NAME                                     READY   STATUS    RESTARTS   AGE
activator-554875ff7c-hqb8t               2/2     Running   0          69s
autoscaler-698589b568-qrjk9              2/2     Running   0          78s
controller-6956c9bb6-spqpm               2/2     Running   0          57s
domain-mapping-8548c6cfdf-m2m66          2/2     Running   0          57s
domainmapping-webhook-7ff76f9bfb-6jdgz   2/2     Running   0          81s
webhook-564974959d-vpd42                 2/2     Running   0          86s
```

Now the knative-serving pods are running in the mesh and ready to work with mtls Strict.

## Configure Kuma mTLS to Strict mode

We are going to modify the Kuma Mesh to enable the mTLS with Strict mode:

```console
kubectl apply -f - <<EOF                            
apiVersion: kuma.io/v1alpha1
kind: Mesh
metadata:
  name: default
spec:
  mtls:
    enabledBackend: ca-1
    backends:
      - name: ca-1
        type: builtin
        mode: STRICT
EOF
```

### Test Service

Deploy a Knative Service:

!!! Info "Knative Services"
    The knative services also needs [port-exclusions](https://kuma.io/docs/dev/reference/kubernetes-annotations/#traffic-kuma-io-exclude-inbound-ports)

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
        traffic.kuma.io/exclude-inbound-ports: "8012"
    spec:
      containers:
        - image: gcr.io/knative-samples/helloworld-go
          env:
            - name: TARGET
              value: Go Sample v1
EOF
```

Wait for the service to be ready, then get it's exposed URL. The URL should be a sub-domain of the configured CNAME:

```console
kubectl get ksvc
NAME URL LATESTCREATED LATESTREADY READY REASON
helloworld-go   http://helloworld-go.default.10.101.62.158.nip.io   helloworld-go-00001   helloworld-go-00001   True 

```

A call to the URL using a web browser or `curl` should return a successful text response:

```console
curl -v http://helloworld-go.default.10.101.62.158.nip.io
*   Trying 10.101.62.158:80...
* Connected to helloworld-go.default.10.101.62.158.nip.io (10.101.62.158) port 80 (#0)
> GET / HTTP/1.1
> Host: helloworld-go.default.10.101.62.158.nip.io
> User-Agent: curl/7.81.0
> Accept: */*
> 
* Mark bundle as not supporting multiuse
< HTTP/1.1 200 OK
< Content-Type: text/plain; charset=utf-8
< Content-Length: 20
< Connection: keep-alive
< Date: Wed, 30 Mar 2022 11:22:29 GMT
< X-Kong-Upstream-Latency: 1
< X-Kong-Proxy-Latency: 1
< Via: kong/2.7.1
< 
Hello Go Sample v1!
* Connection #0 to host helloworld-go.default.10.101.62.158.nip.io left intact
```

## Kuma UI

Kuma includes a dashboard that show some util information, to see it we are going to do a port-forward:

```console
kubectl port-forward svc/kuma-control-plane -n kuma-system 5681:5681
```

Now in a web browser we can open <http://localhost:5681/gui> and see the dashboard:

Kuma Global Overview
![Kuma Global Overview](../../assets/images/kuma/kuma-global-overview.png)

Kuma Mesh Overview
![Kuma Mesh Overview](../../assets/images/kuma/kuma-mesh-overview.png)

Kuma Gateway
![Kuma Gateway](../../assets/images/kuma/kuma-gateway.png)

Kuma Data Plane Proxies
![Kuma Data Plane Proxies](../../assets/images/kuma/kuma-data-plane-proxies.png)
