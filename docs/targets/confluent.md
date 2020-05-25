This document currently outlines the steps taken to test the Confluent Target.
I have been building the adapter with the following command from the root directory of the project

docker build -t tmjeff/cntrl -f confluent/cmd/adapter/Dockerfile .
docker push 
The '100-secret.yaml' file will need to be updated with a confluent cloud username, password, and bootstrap server. There are other parameters you may pass here but for a default configuration this should suffice.

a look at the envAccessor gives us a peek at the options and defaults

type envAccessor struct {
 libadapter.EnvConfig
 BootstrapServers      string `envconfig:"BOOTSTRAP_SERVERS" required:"true"`
 BrokerVersionFallback string `envconfig:"BROKER_VERSION_FALLBACK" required:"false"` // deaults to 0.10.0.0
 APIVersionFallbackMs  string `envconfig:"API_VERSION_FALLBACK_MS" required:"false"` // defaults to 0
 SASLMechanisms        string `envconfig:"SASL_MECHANISMS" required:"false"`         //defaults to PLAIN
 SecurityProtocol      string `envconfig:"SECURITY_PROTOCOL" required:"false"`       // defaults to SASL_SSL
 SASLUsername          string `envconfig:"SASL_USERNAME" required:"true"`
 SASLPassword          string `envconfig:"SASL_PASSWORD" required:"true"`
 Topic                 string `envconfig:"TOPIC" required:"false"` //defaults to tmkafka
}
The "Topic" has three options for assignment.
It can be assigned as an Env. variable
Passed in with the CloudEvent with a Key value of "topic"
It can be left completely unasigned and It will be defaulted to "tmkafka".
After updating your '100-secret.yaml' file

ko apply -f config/

ko apply -f samples/
I used Kinesis to test my target. A curl request should do fine but If you choose to use Kinesis. You will need to create a Kinesis stream and enter your AWS cred. info along with the Region and Stream name into a yaml file similar to the one included at the bottom of this document
Clone and move into the aws event-sources project
ko apply -f config/
Create a .yaml file like the one below and after updating with your information apply it to the namespace.
kubectl --namespace triggermesh-knative-samples apply -f theFileYouJustMade.yaml
Post something to kinesis!
Sample SinkBinding for the AWS Kinesis event source.
apiVersion: sources.knative.dev/v1alpha2
kind: SinkBinding
metadata:
  name: &srcname awskinesis-source
spec:
  subject:
    apiVersion: apps/v1
    kind: Deployment
    name: *srcname

  sink:
    ref:
      apiVersion: targets.triggermesh.io/v1alpha1
      kind: ConfluentTarget
      name: triggermesh-confluent

---
apiVersion: apps/v1
kind: Deployment
metadata:
  name: &srcname awskinesis-source
spec:
  replicas: 1
  selector:
    matchLabels:
      app: *srcname

  template:
    metadata:
      labels:
        app: *srcname

    spec:
      containers:
      - name: source
        image: gcr.io/knativetstenv/awskinesissource-99a4dcc6f886115bdb41983887e528b9:latest

        env:

        # Kinesis stream
        - name: STREAM
          value: eventingtst  <-- This will need to be updated.

        - name: AWS_REGION
          value: us-east-2

        # AWS credentials
        - name: AWS_ACCESS_KEY_ID
          value: A... <-- This will need to be updated
        - name: AWS_SECRET_ACCESS_KEY
          value: ULw... <-- This will need to be updated

        # Knative system variables
        - name: NAME
          value: *srcname
        - name: NAMESPACE
          valueFrom:
            fieldRef:
              fieldPath: metadata.namespace
        - name: K_LOGGING_CONFIG
          value: |
            {
              "level": "info"
            }
        - name: K_METRICS_CONFIG
          value: |
            {
              "domain": "triggermesh.io/sources",
              "component": "awskinesissource",
              "configMap": {}
            }