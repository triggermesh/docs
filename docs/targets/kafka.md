# Kafka target

Sends events to [Apache Kafka](https://kafka.apache.org/). Can be used with any Kafka API compatible service such as [Confluent Kafka](https://www.confluent.io/) or [RedPanda](https://redpanda.com/).

With `tmctl`:

```
tmctl create source kafka --bootstrapServers kafka.example.com:9092 --topics <topic>
```

On Kubernetes, using SASL-PLAIN authentication:

```yaml
apiVersion: targets.triggermesh.io/v1alpha1
kind: KafkaTarget
metadata:
  name: sample
spec:
  bootstrapServers:
  - kafka.example.com:9092
  topic: test-topic
  auth:
    saslEnable: true
    tlsEnable: false
    securityMechanism: PLAIN
    username: admin
    password:
      value: admin-secret
```

Accepts events of any type.

You can test the Target by sending it an event using `curl`:

```console
curl -v http://kafkatarget-int1-9fg4abc7d44bdd0204bd0a221bea9453k.default.svc.cluster.local
 \
 -X POST \
 -H "Content-Type: application/json" \
 -H "Ce-Specversion: 1.0" \
 -H "Ce-Type: some.message.type" \
 -H "Ce-Source: some.origin/intance" \
 -H "Ce-Id: 739481h1-34gt-9801-4h0d-g6e048192l23" \
 -d '{"message":"Hello from TriggerMesh using Kafka!"}'
```

See the [Kubernetes object reference](../../reference/targets/#targets.triggermesh.io/v1alpha1.KafkaTarget) for more details.

## Using KafkaTarget with Kerberos-SSL authentication

This section demonstrates how to configure a KafkaTarget to use Kerberos-SSL authentication on Kubernetes.

Before creating the `KafkaTarget`, we are going to create some secrets that the `KafkaTarget` will need for the authentication with Kerberos + SSL.

- The kerberos config file.
- The kerberos keytab file.
- The CA Cert file.

```console
kubectl create secret generic config --from-file=krb5.conf
kubectl create secret generic keytab --from-file=krb5.keytab
kubectl create secret generic cacert --from-file=ca-cert.pem
```

You can then create the Target: 

```yaml
apiVersion: targets.triggermesh.io/v1alpha1
kind: KafkaTarget
metadata:
  name: sample
spec:
  salsEnable: true
  tlsEnable: true
  bootstrapServers:
  - kafka.example.com:9093
  topic: test-topic
  securityMechanism: GSSAPI
  kerberosAuth:
    username: kafka
    kerberosRealm: EXAMPLE.COM
    kerberosServiceName: kafka
    kerberosConfig:
      valueFromSecret:
        name: config
        key: krb5.conf
    kerberosKeytab:
      valueFromSecret:
        name: keytab
        key: krb5.keytab
  sslAuth:
    insecureSkipVerify: true
    sslCA:
      valueFromSecret:
        name: cacert
        key: ca-cert
```
