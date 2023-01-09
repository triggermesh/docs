TriggerMesh relies on [Knative Serving](https://knative.dev/docs/concepts/#knative-serving) to run some of its components as Knative Services. We plan to relax this dependency in the near future. While we recommend following the official [installation instructions](https://knative.dev/docs/install/operator/knative-with-operators/), the remainder of this section serves as a quick guide for installing the Knative components.

Begin by installing the Knative Operator:

```sh
kubectl apply -f https://github.com/knative/operator/releases/download/knative-v1.8.1/operator.yaml -n default
```

Check the status of the Operator by running the command:

```sh
kubectl get deployment knative-operator -n default
```

Now install the Knative Serving component with the Kourier Networking layer:

```sh
kubectl apply -f - <<EOF
apiVersion: v1
kind: Namespace
metadata:
  name: knative-serving
---
apiVersion: operator.knative.dev/v1beta1
kind: KnativeServing
metadata:
  name: knative-serving
  namespace: knative-serving
spec:
  ingress:
    kourier:
      enabled: true
  config:
    network:
      ingress-class: "kourier.ingress.networking.knative.dev"
EOF
```

Check the status of Knative Serving Custom Resource using the command (can take a minute before it displays as ready):

```sh
kubectl get KnativeServing knative-serving -n knative-serving
```

Finally configure Knative Serving to use Magic DNS (sslip.io) with:

```sh
kubectl apply -f https://github.com/knative/serving/releases/download/knative-v1.8.3/serving-default-domain.yaml
```

Refer to the [official documentation](https://knative.dev/docs/install/operator/knative-with-operators/#configure-dns) if you want to use a real DNS instead.

This concludes the installation of Knative Serving.

 **Optionally**, you can install [Knative Eventing](https://knative.dev/docs/concepts/#knative-eventing). Knative Eventing is not a prerequisite for TriggerMesh to run, but we do provide [compatibility for Knative Eventing users](triggermesh-knative.md).

Install Knative Eventing using the command:

```sh
kubectl apply -f - <<EOF
apiVersion: v1
kind: Namespace
metadata:
  name: knative-eventing
---
apiVersion: operator.knative.dev/v1beta1
kind: KnativeEventing
metadata:
  name: knative-eventing
  namespace: knative-eventing
EOF
```

Check the status of Knative Eventing Custom Resource using the command:

```sh
kubectl get KnativeEventing knative-eventing -n knative-eventing
```
