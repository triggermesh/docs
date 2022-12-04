# Trigger filters

Events flowing through a Broker can be filtered before being sent to targets by means of Trigger filters.
TriggerMesh filters are based on the [CloudEvents Subscriptions API filters](https://github.com/cloudevents/spec/blob/main/subscriptions/spec.md#324-filters), which allow for fairly complex filtering against event metadata, known as [CloudEvent context attributes](https://github.com/cloudevents/spec/blob/v1.0.2/cloudevents/spec.md#context-attributes). Filters are not supported for the event payload (i.e. the `data` attribute of an event). Content-based filtering of entire payload will be added in the future.

As described below, TriggerMesh on Kubernetes provides full control over Trigger filters through its Kubernetes CRD. On the other hand, `tmctl` provides a simpler abstraction over filters as described in the [Trigger documentation](triggers.md).

## Filter operators

Filter operators fall under two categories: string matching functions `exact`, `prefix` and `suffix`, and logical operators `all`, `any` and `not` to combine them. The string matching functions can be used at the root of the `filters` attribute without requiring a logical operator.

- `exact`: the key must exist and exactly match the provided value
- `prefix` the key must exist and the value include the provided value as a prefix
- `suffix` the key must exist and the value include the provided value as a suffix
- `all` all operators must evaluate to `true`
- `any` at least one operator must evaluate to `true`
- `not` all operators must evaluate to `false`

## Examples

Filter for events whose `type` attribute is set to `io.triggermesh.demo`

```yaml
filters:
- exact:
    type: my.demo.type
```

Filter for events whose `type` attribute is set to `io.triggermesh.demo` and `category` is set to `test`

```yaml
filters:
- all:
  - exact:
      type: io.triggermesh.demo
  - exact:
      category: test
```

Filter for events whose `type` attribute starts with `io.triggermesh.` or `type` is set to `io.tm.demo`

```yaml
filters:
- any:
  - prefix:
      type: io.triggermesh.
  - exact:
      type: io.tm.demo
```

Filter for events whose `type` attribute does not ends with `.avoid.me` or `.avoid.me.too`.

```yaml
filters:
- not:
  - any:
    - suffix:
        type: .avoid.me
    - suffix:
        type: .avoid.me.too
```
