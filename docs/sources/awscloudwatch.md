# AWS CloudWatch source

Consumes events from []()).

With `tmctl`:

```
tmctl create
```

On Kubernetes:

```yaml
apiVersion: sources.triggermesh.io/v1alpha1
kind: AWSCloudWatchSource
metadata:
  name: sample
spec:
  region: us-west-2
  pollingInterval: 2m

  metricQueries:
  - name: testquery
    metric:
      period: 60
      stat: p90
      unit: Milliseconds
      metric:
        metricName: Duration
        namespace: AWS/Lambda
        dimensions:
        - name: FunctionName
          value: lambdadumper

  auth:
    credentials:
      accessKeyID:
        valueFromSecret:
          name: awscreds
          key: aws_access_key_id
      secretAccessKey:
        valueFromSecret:
          name: awscreds
          key: aws_secret_access_key

  sink:
    ref:
      apiVersion: eventing.knative.dev/v1
      kind: Broker
      name: default
```

Events produced have the following attributes:

* type ``
* source ``
* Schema of the `data` attribute: []()
