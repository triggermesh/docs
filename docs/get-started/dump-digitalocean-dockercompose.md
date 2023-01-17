# Deploy to Digital Ocean or docker compose

## Digital Ocean

Digital Ocean has an app platform with app spec.

tmctl dump -p digitalocean | doctl apps create --spec -

everything runs as DO servicess

```sh
⇒  tmctl describe
Broker     Status
foo        offline

Trigger                  Target                    Filter
foo-trigger-cf2ec5c6     foo-transformation        type is com.amazon.sqs.message
foo-trigger-d743a678     foo-cloudeventstarget     type is foo-transformation.output

Transformation         EventTypes                    Status
foo-transformation     foo-transformation.output     offline

Source               Kind             EventTypes                 Status
foo-awssqssource     awssqssource     com.amazon.sqs.message     offline

Target                    Kind                  Expected Events     Status
foo-cloudeventstarget     cloudeventstarget     *                   offline
```

```sh
⇒  tmctl dump -p digitalocean
name: triggermesh-f6cfc
region: fra
services:
- envs:
  - key: BROKER_CONFIG
    value: '{"triggers":{"foo-trigger-cf2ec5c6":{"filters":[{"exact":{"type":"com.amazon.sqs.message"}}],"target":{"url":"${foo-transformation.PRIVATE_URL}"}},"foo-trigger-d743a678":{"filters":[{"exact":{"type":"foo-transformation.output"}}],"target":{"url":"${foo-cloudeventstarget.PRIVATE_URL}"}}}}'
  image:
    registry_type: DOCR
    repository: memory-broker
    tag: latest
  instance_count: 1
  instance_size_slug: professional-xs
  internal_ports:
  - 8080
  name: foo
  run_command: /memory-broker start --memory.buffer-size 100 --memory.produce-timeout
    1s
- envs:
  - key: CLOUDEVENTS_URL
    value: https://triggermesh-console-tu4luqbmqq-uc.a.run.app/
  image:
    deploy_on_push:
      enabled: true
    registry_type: DOCR
    repository: cloudeventstarget-adapter
    tag: v1.23.0
  instance_count: 1
  instance_size_slug: professional-xs
  internal_ports:
  - 8080
  name: foo-cloudeventstarget
- envs:
  - key: TRANSFORMATION_CONTEXT
    value: '[{"operation":"add","paths":[{"key":"type","value":"foo-transformation.output"}]}]'
  - key: TRANSFORMATION_DATA
    value: '[{"operation":"add","paths":[{"key":"new-field","value":"hello from Transformation!"}]}]'
  image:
    deploy_on_push:
      enabled: true
    registry_type: DOCR
    repository: transformation-adapter
    tag: v1.23.0
  instance_count: 1
  instance_size_slug: professional-xs
  internal_ports:
  - 8080
  name: foo-transformation
workers:
- envs:
  - key: AWS_ACCESS_KEY_ID
    value: asdasdasd
  - key: AWS_SECRET_ACCESS_KEY
    value: asdasdasd
  - key: ARN
    value: arn:aws:sqs:eu-central-1:043455440429:fran-test
  - key: K_SINK
    scope: RUN_AND_BUILD_TIME
    value: ${foo.PRIVATE_URL}/foo
  image:
    deploy_on_push:
      enabled: true
    registry_type: DOCR
    repository: awssqssource-adapter
    tag: v1.23.0
  instance_count: 1
  instance_size_slug: professional-xs
  name: foo-awssqssource
```

## Docker composer

tmctl dump -p docker-compose

```sh
⇒  tmctl describe
Broker     Status
foo        offline

Trigger                  Target                    Filter
foo-trigger-cf2ec5c6     foo-transformation        type is com.amazon.sqs.message
foo-trigger-d743a678     foo-cloudeventstarget     type is foo-transformation.output

Transformation         EventTypes                    Status
foo-transformation     foo-transformation.output     offline

Source               Kind             EventTypes                 Status
foo-awssqssource     awssqssource     com.amazon.sqs.message     offline

Target                    Kind                  Expected Events     Status
foo-cloudeventstarget     cloudeventstarget     *                   offline
```

```sh
⇒  tmctl  dump -p docker-compose
services:
  foo:
    command: start --memory.buffer-size 100 --memory.produce-timeout 1s
    container_name: foo
    environment:
    - BROKER_CONFIG={"triggers":{"foo-trigger-cf2ec5c6":{"filters":[{"exact":{"type":"com.amazon.sqs.message"}}],"target":{"url":"http://foo-transformation:8080"}},"foo-trigger-d743a678":{"filters":[{"exact":{"type":"foo-transformation.output"}}],"target":{"url":"http://foo-cloudeventstarget:8080"}}}}
    image: gcr.io/triggermesh/memory-broker:latest
    ports:
    - 62424:8080
    volumes: []
  foo-awssqssource:
    container_name: foo-awssqssource
    environment:
    - AWS_ACCESS_KEY_ID=asdasd
    - AWS_SECRET_ACCESS_KEY=asdasd
    - ARN=arn:aws:sqs:eu-central-1:043455440429:fran-test
    - K_SINK=http://foo:8080
    image: gcr.io/triggermesh/awssqssource-adapter:v1.23.0
    ports:
    - "8080"
    volumes: []
  foo-cloudeventstarget:
    container_name: foo-cloudeventstarget
    environment:
    - CLOUDEVENTS_URL=https://triggermesh-console-tu4luqbmqq-uc.a.run.app/
    image: gcr.io/triggermesh/cloudeventstarget-adapter:v1.23.0
    ports:
    - 49316:8080
    volumes: []
  foo-transformation:
    container_name: foo-transformation
    environment:
    - TRANSFORMATION_CONTEXT=[{"operation":"add","paths":[{"key":"type","value":"foo-transformation.output"}]}]
    - TRANSFORMATION_DATA=[{"operation":"add","paths":[{"key":"new-field","value":"hello
      from Transformation!"}]}]
    image: gcr.io/triggermesh/transformation-adapter:v1.23.0
    ports:
    - 57935:8080
    volumes: []
```
