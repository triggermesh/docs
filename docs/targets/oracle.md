# Event Target for Oracle Cloud

This event target sends and receives [CloudEvents][ce] over HTTP and calls a targeted
Oracle Cloud Service.

Current supported Oracle Cloud Services:

  - [Functions][functions]

## Prerequisites

Regardless of the service being chosen, to access any of the services hosted
on the Oracle Cloud, an API signing key must be generated and granted access.
The [Oracle Developer Guide][devguide]
describes how to setup the signing key.

### Deploy the Oracle Cloud Target

At TriggerMesh, add a new secret for the Oracle Cloud. This secret must have
the following keys defined:

  - `oracleApiPrivateKey` API Key as the full x509 private key certificate
  - `oracleApiPrivateKeyPassphrase` Passphrase to decode the API Key above
  - `oracleApiPrivateKeyFingerprint` Fingerprint of the resulting certificate associated with the API key

In addition to the above secrets, the following must be defined to locate the
service to be triggered:

  - `oracleTenancy` The OCID of tenant that holds the service being invoked
  - `oracleUser` The OCID of the user that owns the API key cited above, and
    will be invoking the service
  - `oracleRegion` The Oracle Cloud region hosting the service

Lastly for the supported services defined:

  - `function`
    - `function` The OCID of the Oracle Cloud function being invoked

## Supported Cloud Service Events

### Function

The Oracle Cloud Functions target is designed to allow for free-form JSON objects
to be passed directly to the function and rely on the Oracle Cloud function to
perform whatever action is desired.

The function itself can return a freeform JSON object that can be processed by
another event trigger.  The CloudEvent type will always be `functions.oracletargets.targets.triggermesh.io` with the function OCID defined as a part of the CloudEvent
source and a metadata ID used to uniquify the specific event that called the function.

## Oracle Function Example

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

[ce]: https://cloudevents.io/
[functions]: https://docs.cloud.oracle.com/en-us/iaas/Content/Functions/Concepts/functionsoverview.htm
[devguide]: https://docs.cloud.oracle.com/en-us/iaas/Content/API/Concepts/apisigningkey.htm#Required_Keys_and_OCID