# Broker

!!! Placeholder content !!!

Simpler operations and dependencies with the new TriggerMesh Broker.

✔  Self contained
✔  Filter on metadata and payload
✔  Run on Docker or K8s

Docker, Kubernetes.

```yaml
triggers:
- name: trigger1
  filters:
  - exact:
      Ce-custom: custom.attribute
  targets:
  - url: https://en1z9dpx38b6y.x.pipedream.net
    deliveryOptions:
      retries: 2
      backoffDelay: 2s
      backoffPolicy: linear
- name: trigger2
  targets:
  - url: https://enq5boql0g46q.x.pipedream.net
    deliveryOptions:
      retries: 5
      backoffDelay: 5s
      backoffPolicy: constant
      deadLetterURL: http://localhost:9090
```
