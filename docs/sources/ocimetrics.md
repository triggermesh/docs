# Oracle Cloud Infrastructure Metrics source (OCIMetrics)

This event source collects metrics data from [Oracle Cloud](https://cloud.oracle.com).

With `tmctl`:

!!! warning "Work in progress"
    This component is not yet available with `tmctl`.

<!--
```
# tmctl create source ocimetrics --oracleApiPrivateKey <oracleApiPrivateKey> --oracleApiPrivateKeyPassphrase <oracleApiPrivateKeyPassphrase> --oracleApiPrivateKeyFingerprint <oracleApiPrivateKeyFingerprint> --oracleTenancy <oracleTenancy> --oracleUser <oracleUser> --oracleRegion <oracleRegion> --metrics <TODO>
``` -->

On Kubernetes:

```yaml
apiVersion: sources.triggermesh.io/v1alpha1
kind: OCIMetricsSource
metadata:
  name: sample
spec:
  # required to interact with the Oracle Cloud API
  oracleApiPrivateKey:
    value: |-
      -----BEGIN RSA PRIVATE KEY-----
      MIXEpAIBACKCAQEA2UM2O2lz4D6gN2sAbxUg6VMnGQlrwNbZX7b/wqW6ZEU0Q0BU
      ...
      -----END RSA PRIVATE KEY-----
  oracleApiPrivateKeyPassphrase:
    value: replace-me
  oracleApiPrivateKeyFingerprint:
    value: 5c:75:c4:67:92:a9:46:2a:01:5b:73:54:6a:b2:74:7d

  oracleTenancy: ocid1.tenancy.oc1..aaaaaaaaswreplaceme
  oracleUser: ocid1.user.oc1..aaaaaaaaqlocaluser
  oracleRegion: us-ashburn-1

  # required to enable metrics
  metrics:
  - name: cpuUtilization
    metricsNamespace: oci_computeagent
    metricsQuery: CPUUtilization[1m].mean()

  # optional. default to 5m
  metricsPollingFrequency: 3m

  sink:
    ref:
      apiVersion: eventing.triggermesh.io/v1alpha1
      kind: RedisBroker
      name: triggermesh
```

For the metrics specific information:
- `metricsNamespace`can take values such as `oci_computeagent` or `oci_vcn`
- `metricsQuery` is based on [MQL](https://docs.cloud.oracle.com/en-us/iaas/Content/Monitoring/Reference/mql.htm)

For details on how to write a query, consult the
[Oracle Cloud Monitoring Overview](https://docs.cloud.oracle.com/en-us/iaas/Content/Monitoring/Concepts/monitoringoverview.htm)

Events produced have the following attributes:

* type `com.oracle.cloud.monitoring`
* source is of the form `ocimetrics/<namespace>/<source-name>` where `namespace` is your current namespace and `source-name` is the name specified during creation of the source.
* Schema of the `data` attribute: [com.oracle.cloud.monitoring.json](https://raw.githubusercontent.com/triggermesh/triggermesh/main/schemas/com.oracle.cloud.monitoring.json)

See the [Kubernetes object reference](../../reference/sources/#sources.triggermesh.io/v1alpha1.OCIMetricsSource) for more details.

## Prerequisite(s)

- Oracle Cloud Account
- Oracle Cloud Infrastructure (OCI)
- Oracle Cloud Secret

### Oracle Cloud Account

An Oracle Cloud account is required.

### Oracle Cloud Infrastructure (OCI)

The Oracle Cloud account needs to have permissions to inspect and read metrics for the Oracle Cloud Infrastructure (OCI) compartment.

For additional information on how to create an API key and associate it with
your Oracle Cloud user, go to [Oracle's Developer Documentation](https://docs.cloud.oracle.com/en-us/iaas/Content/API/Concepts/apisigningkey.htm#Required_Keys_and_OCID)

### Oracle Cloud Secret

Three pieces of information are required for the Oracle Cloud:
1. API Private Key used for signing the request
1. API Private Key passphrase to decrypt the key
1. API Key's fingerprint to identify which key to use on the Oracle Cloud end
