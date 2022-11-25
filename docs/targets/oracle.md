# Oracle Cloud target

Sends events to [Oracle Cloud Functions](https://docs.cloud.oracle.com/en-us/iaas/Content/Functions/Concepts/functionsoverview.htm).

With `tmctl`:

```
tmctl create target oracle --function <functionOCID>
```

On Kubernetes:

Secret

```yaml
apiVersion: v1
kind: Secret
metadata:
  name: oraclecreds
type: Opaque
stringData:
  apiPassphrase: ""
  apiKeyFingerprint: "94:d4:c0:2f:6a:18:85:1a:31:a1:85:69:d5:47:fc:5d"
  apiKey: |-
    -----BEGIN RSA PRIVATE KEY-----
    MIIEogIBAAKCAQEAwRapSZ6+4wS18BkCu70Ic0IMeFksVsIJKZ+8xIZfMeGpW2zn
    [...]
    -----END RSA PRIVATE KEY-----

```

Target

```yaml
apiVersion: targets.triggermesh.io/v1alpha1
kind: OracleTarget
metadata:
  name: triggermesh-oracle-function
spec:
  oracleApiPrivateKey:
    secretKeyRef:
      name: oraclecreds
      key: apiKey
  oracleApiPrivateKeyPassphrase:
    secretKeyRef:
      name: oraclecreds
      key: apiPassphrase
  oracleApiPrivateKeyFingerprint:
    secretKeyRef:
      name: oraclecreds
      key: apiKeyFingerprint
  oracleTenancy: ocid1.tenancy.oc1..aaaaaaaaav23f45mqyxmwu4x3s2uhuh4rb2bwdpgb5kbpjqvwiiqufhsq6za
  oracleUser: ocid1.user.oc1..aaaaaaaacaxtveoy4zx7rsg7lanexmouxjxay6godthrfsocpl6ggrfpbiuq
  oracleRegion: us-phoenix-1
  function:
    function: ocid1.fnfunc.oc1.phx.aaaaaaaaaajrgy4on66e6krko73h2im5qaiiagecg5hmbcqib2kpbzlcy3bq
```

- **Oracle Secrets**: Contains the Oracle API signing key.
- **Oracle Tenancy**: The OCID of tenant that holds the service being invoked.
- **Oracle Username**: The OCID of the user that owns the API key discussed in the [prerequisites](#prerequisites), and will be invoking the service.
- **Oracle Region**: The Oracle Cloud region hosting the service.
- **Function**: The OCID of the Oracle Cloud function being invoked.

The [Oracle Cloud Functions][functions] event Target is designed to allow for free-form JSON objects
to be passed directly to the function and rely on the Oracle Cloud function to
perform whatever action is desired.

The function itself can return a freeform JSON object that can be processed by
another event trigger.  The CloudEvent type will always be `functions.oracletargets.targets.triggermesh.io` with the function OCID defined as a part of the CloudEvent
source and a metadata ID used to uniquify the specific event that called the function.

You can test the Target by sending it an event using `curl`:

```console
curl -vvv http://oracletarget \
  -X POST \
  -H 'Content-Type: application/json' \
  -H 'Ce-Specversion: 1.0' \
  -H 'Ce-Id: foo-1' \
  -H 'Ce-Type: testfunc.functions.oracle.triggermesh.io' \
  -H 'Ce-Source: h2g2.guide' \
  -d '{"message": "A new user wants to say something: hello from triggermesh"}'

[...]
< HTTP/2 200
< ce-id: 9ab5e1f0-9713-405e-816c-1ba2739a7358
< ce-source: ocid1.fnapp.oc1.phx.aaaaaaaaaehdhsmharxvyp4pvnsgsnd35am5u7ckjzivwmsmove37eckjika
< ce-specversion: 1.0
< ce-subject: ocid1.fnfunc.oc1.phx.aaaaaaaaaajrgy4on66e6krko73h2im5qaiiagecg5hmbcqib2kpbzlcy3bq
< ce-time: 2020-08-03T19:04:55.381594978Z
< ce-type: functions.oracletargets.targets.triggermesh.io
< content-length: 86
< content-type: application/json
< date: Mon, 03 Aug 2020 19:04:55 GMT
< x-envoy-upstream-service-time: 1497
< server: istio-envoy
<
* Connection #0 to host oracletarget left intact
{"processed":{"message": "A new user wants to say something: hello from triggermesh"}}
```

See the [Kubernetes object reference](../../reference/targets/#targets.triggermesh.io/v1alpha1.OracleTarget) for more details.

## Prerequisites (Global)

Regardless of what event targets exist currently or in the future, the following is required:
  - Tenancy OCID where the target components reside
  - User OCID with access to the target components
  - User API access tokens:
    - API Private Key
    - Private Key's passphrase
    - Fingerprint of API key
  - Oracle Cloud Region where the component resides

Setting up an account on the Oracle Cloud and obtaining the prerequisite data is outside the
scope of this readme, but obtaining most of the prerequisite data can be found in the
[Oracle Developer Resources](https://docs.cloud.oracle.com/en-us/iaas/Content/Functions/Tasks/functionssetupapikey.htm)

[ce]: https://cloudevents.io/
[functions]: https://docs.cloud.oracle.com/en-us/iaas/Content/Functions/Concepts/functionsoverview.htm
[devguide]: https://docs.cloud.oracle.com/en-us/iaas/Content/API/Concepts/apisigningkey.htm#Required_Keys_and_OCID
