
# Structured Logging

TriggerMesh components communicate their internal events through a flexible logging system. Output format, structure,
and granularity are adjustable through a configuration file. Information produced by the TriggerMesh logging system
can be collected and stored by a centralized log management platform, such as the ELK stack or AWS CloudWatch, and used for further
processing.

<!-- This guide describes available logging parameters and demonstrates possible configuration for centralized log
management based on Fluent-bit and AWS CloudWatch Logs. -->

<!-- 
## Centralized log management
### Fluent-bit configuration
### CloudWatch Logs
-->

## Logging configuration

<!-- ### Zap core configuration -->

### Log levels

Log level configuration allows you to adjust the amount and detail of the logs produced by the TriggerMesh components.
Logging configuration parameters are set through the configmap in the system namespace and applied on TriggerMesh
components across all cluster namespaces.

Since TriggerMesh core components are heavily based on the Knative libraries, logging also complies with the upstream
configuration approach described [here](https://knative.dev/docs/eventing/observability/logging/config-logging/).

### Level definitions

Log levels supported by TriggerMesh components are:

- `debug` - fine-grained debugging
- `info` - normal logging
- `warn` - unexpected but non-critical errors
- `error` - critical errors; unexpected during normal operation
- `dpanic` - in debug mode, trigger a panic (crash)
- `panic` - trigger a panic (crash)
- `fatal` - immediately exit with exit status 1 (failure)

Each logging level in this hierarchy includes all levels below, i.e. setting the `error` level will silence the output
tagged as debug, info, and warn, but will keep error, panic, and fatal. Most information is produced at the `debug`
level - it can come in handy during integration development and tests. In the `error` logging level nothing but errors
that require the operator's attention is emitted. By default, all components are set to the `info` level that provides
general initialization information and some additional outputs that may be useful for the operator.

### Configuring log levels

TriggerMesh components log levels are currently set from the `config-logging` configmap in `triggermesh` namespace. To
update the component’s logging level, the configuration must be either edited in place by executing this command:

```console
kubectl -n triggermesh edit configmap config-logging
```

Or it can be changed in the project’s
[source](https://github.com/triggermesh/triggermesh/blob/main/config/configmaps/config-logging.yaml) and applied with:

```console
kubectl apply -f config-logging.yaml
```

Components logging configuration is propagated through the containers environment and picked up at the initialization
step, hence switching between levels may require resource re-creation.

The sample configuration fragment below sets the individual log levels for some of the TriggerMesh resources:

```yaml
# Logging level overrides for the TriggerMesh control plane.
loglevel.triggermesh-controller: error
loglevel.triggermesh-webhook: error

# Logging level overrides for TriggerMesh components.
# The name of the logger is the Kubernetes kind of the component.
loglevel.awss3target: debug
loglevel.ibmmqsource: debug
loglevel.transformation: debug
```

After we apply this configuration, TriggerMesh controller and webhook will switch to the `error` level, while all newly
created AWS S3 targets, IBM MQ sources, and Transformations will have a `debug` logging level.
