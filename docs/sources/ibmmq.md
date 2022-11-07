# IBM MQ source

## Kubernetes

```yaml
apiVersion: sources.triggermesh.io/v1alpha1
kind: IBMMQSource
metadata:
  name: ibm-mq-source
spec:
  connectionName: ibm-mq.default.svc.cluster.local(1414)
  queueManager: QM1
  queueName: DEV.QUEUE.1
  channelName: DEV.APP.SVRCONN
  delivery:
    deadLetterQueue: DEV.DEAD.LETTER.QUEUE
    retry: 3
  credentials:
    username:
      valueFromSecret:
        name: ibm-mq-secret
        key: username
    password:
      valueFromSecret:
        name: ibm-mq-secret
        key: password
    tls:
      cipher: TLS_RSA_WITH_AES_128_CBC_SHA256
      clientAuthRequired: false
      keyRepository:
        keyDatabase:
          valueFromSecret:
            name: ibm-mq-certificate
            key: key.kdb
        passwordStash:
          valueFromSecret:
            name: ibm-mq-certificate
            key: key.sth
  sink:
    ref:
      apiVersion: eventing.knative.dev/v1
      kind: Broker
      name: default
```

## Creating an IBM MQ server for testing

If you do not have a source for your IBM MQ events, the [config/mq-server.yaml] will deploy an IBM MQ server that you may use for demonstration or testing purposes.

```
kubectl apply -f config/mq-server.yaml
```

Forward a port to the IBM MQ Server with

```
kubectl port-forward deployments/ibm-mq-server 9443 -n default
```

and then access it at

```
https://localhost:9443/ibmmq/console/
```

and login with the user `admin` and password `passw0rd`.

### Configure your IBM MQ Source

To specify your IBM MQ queue and connection edit the event source manifest `config/mq-source.yaml` and apply it:

```
kubectl apply -f config/mq-source.yaml
```

## Local Build and Usage

1. Setup a local IBM MQ with the following commands:

```shell
docker volume create qmdata
docker network create mqnetwork
docker run --rm \
           --env LICENSE=accept \
           --env MQ_QMGR_NAME=QM1 \
           --volume qmdata:/mnt/mqm \
           --publish 1414:1414 \
           --publish 9443:9443 \
           --publish 8080:8080 \
           --network mqnetwork \
           --network-alias qmgr \
           --detach \
           --env MQ_APP_PASSWORD=password \
           --name mq \
           ibmcom/mq:latest
```

If you face any issues please follow the official [tutorial](https://developer.ibm.com/messaging/learn-mq/mq-tutorials/mq-connect-to-queue-manager/#docker)

1. Connect the Knative event display:

```shell
docker run --rm --name sockeye --net=container:mq -d docker.io/n3wscott/sockeye:v0.7.0
```

1. To build the container image from the local source code

```shell
docker build -t mqsource .
```

1. Run this _source_ locally with:

```shell
docker run --rm --env PASSWORD=password \
                --env K_SINK=http://localhost:8080 \
                --net=container:mq \
                mqsource
```

1. Open the MQ console:

Using _admin_ and _passw0rd_ as default development credentials do:

`open https://localhost:9443/ibmmq/console/`

Add messages to `DEV.QUEUE.1` queue and check the [sockeye](http://localhost:8080) to see the CloudEvents being received.

```yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: ibm-mq-server
spec:
  selector:
    matchLabels:
      app: ibm-mq-server
  template:
    metadata:
      labels:
        app: ibm-mq-server
    spec:
      containers:
      - name: user-container
        env:
        - name: LICENSE
          value: accept
        - name: MQ_QMGR_NAME
          value: QM1
        - name: MQ_APP_PASSWORD
          value: mq-app-password
        image: ibmcom/mq:latest
        volumeMounts:
        - mountPath: /etc/mqm/pki/keys/mykey
          name: certificates
          readOnly: true
      volumes:
      - name: certificates
        secret:
          defaultMode: 420
          secretName: ibm-mq-server-certificate

---

# Self-signed test certificate.
apiVersion: v1
data:
  key.kdb: MIIE2gIBAzCCBKIGCSqGSIb3DQEHAaCCBJMEggSPMIIEizCCBIcGCSqGSIb3DQEHBqCCBHgwggR0AgEAMIIEbQYJKoZIhvcNAQcBMBwGCiqGSIb3DQEMAQMwDgQIVi7QLS6tGicCAgQAgIIEQIQPVq9lFdQEYpSiz7noUzIwLmv2cvG/XM5UefwH/XJapWYLCX98wJGhJTjs7AqOOo2B/tqRuFA5qgItlAfU5cKf3hy74Y4SqA1M4UoFKRBPi86XaFVd79q0TUG0jVai1Sv3QEW6VjLEes0qCXuefcBLgCCzxxM0qVQC6YbS3uSyD66HTZpM4ErLtB+AhhZYQPJ+2QRvOoXEQH4QdaWOsemNZ+qc5goTau43JfgWYH9YtQusvivUuAZUbK6Hs2p0C1N2cdMTP2QvH8khbN8s99M21OSWdfL0WwqjQvjQ8EG/CDxjq2En/rFmzSZugrYHpvNod0vyxfJiIXupMc6yAH884cUMreC5ydhbm6oj78QyixAVyL9Ana6oa8VKw2Or7cOHZ8VbbZhQnYAs3htnu7FlYqEk5rqRQ5hP4dFGr7gq5QBqSKnH1WbIRRarV77520JMW82sWZbqcg3s0CDS2EDC4v3s1lavpcCjwTzibtOyzHSKtaxjLd07JgoU/CSsY68YsDYSBZIreJSde/wi6RYiDiCVkgtgYvp1Wc0B4XpfdJJ+S+EsSGjLBAkx2MFlLD1Dqa1YICtvTV169N+x8dc+50rrfN7QcmYAbNOlqxJfa//kszNX7iQCxCVWS5dTLdIjrTOOAB5sd3k1dgViZH/IrXYy79qNeu2B0koElkdRJd/uzJXZCRmhI75LyqNpTtI2NpG+ZJnZzN8TSoO1bh7gxdXln39+RwhCco7t+Cz0ggGMlZBdUi0CUqDajuB84RcZzVBUrV6rJp3lRv8CiwBtVVLurd5FUTuk4Gt3CY3itHqJ3gB/0SaY0S0IidAxnkDEokWcXZQJAH7mutoWVZitHU6ytgYujiBkRIGEq1KSvTJh5retgto7AqGazkBu+GaEoV4imbZguJnUHJSR6kTb0keBhNcvNwxeFddxW+HXK9Z3gAHbXI+COlqDsroB2+qHWBt0WhUj5oiKqFf85RnJ1wkd4cK7HtazjffzNsjtr0RCVyTOY4CHBRkSxVeQ36aacE0+PmubChvBfp2aKbQSgtdHZ3y67fIsFN4C+tR4wcvX6H4k2XEZUvOdM/BkLftR8hZk0aeu6YNgoRRXc5qQrGTd1tdCPyDZHKj9+QRV0BvYhr7NQcuADAaVAQy+kxyLtj0cau0gGAYyUkN8++2pVzUsEGz7EfvOWVgbd10gizHMLVmJYzuZeFpRkj2miI9LJQLfkK+6Jw8QeEmwvSY46QlGnAYnZEbcUeP+4bcq/1GjwjC9hz03xoVhM78UGiIAXYfWbI3LjsFr9N0Lk1hQQmYoUMS3UI2hcbxjL3Doe1OOZHfKNliD35DlkLOZM8A8Rpg42xgqWioS6TYlzg4ab354TFQwmrRUGBbEcZYOyWppzPLSqAGg+VuhPVolY3PhSIbt9025eG9gz1NdX3ORhq4fr+21I/Nw0L8TcKmnMC8wHzAHBgUrDgMCGgQU6Q5bdomHyflYqzekP7NmZnMb32AECFOjjDNsgNgHAgIEAA==
  key.sth: sO14BirPhx/Tt/IbiDgCDmXgHv/EC33K0mag+J8LOKMtOHMzfpmuxUM842PT2U6/1xMTBa/dfixAjiZ595kC2CGmglJanoT5UMKH6HJZa88ztDMty+WrYP8YstMWhjs5gq1S8tC6ucUkVl9WXxGnBWHBYJu6wAnGySTReJVZf5GlbKmmeLHQhzLvdFv6kCUeLepbcdw9JLLesIuMWvgPxcxl6I11R5AzBgMZ+lvpcAY9pQz5iInLRrKQB3P+IiCX6w==
kind: Secret
metadata:
  name: ibm-mq-certificate
type: Opaque

---

apiVersion: v1
kind: Secret
metadata:
  name: ibm-mq-secret
data:
  username: YXBw
  password: bXEtYXBwLXBhc3N3b3Jk
type: Opaque

---

apiVersion: v1
kind: Service
metadata:
  name: ibm-mq
spec:
  selector:
    app: ibm-mq-server
  type: ClusterIP
  ports:
  - name: mq
    port: 1414
    protocol: TCP
    targetPort: 1414
```
