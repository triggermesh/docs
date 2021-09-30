Some Bridge components require access to secret values, such as credentials, in order to operate. These values are, in most cases, stored inside Kubernetes [Secret](https://kubernetes.io/docs/concepts/configuration/secret/) objects, which administrators are responsible for making readily available to integrations which require them.

The TriggerMesh Integration Language relies on the notion of _secret class_ to support the multitude of integrations available within TriggerMesh Bridges. Similarly to Kubernetes built-in [secret types](https://kubernetes.io/docs/concepts/configuration/secret/#secret-types), a secret class is simply a list of requirements which must be satisfied by a Secret object, such as the number, name and format of the values present in the data of this Secret.

## Usage of Secret References

Inside a component configuration body, secrets are referenced by name using the [`secret_name`](Function-Expressions#secret_name-function) function. The Secret corresponding to the given name parameter is expected to be deployed in the same Kubernetes namespace as the deployed Bridge.

Example:

```hcl
source example "my_source" {
  api_credentials = secret_name("my-credentials")
}
```

Please refer to the documentation of individual components in order to know what secret class to use in a certain context, and which data keys are supported/required by each component.

## Secret Classes Reference

Below is a reference of all secret classes currently used by component implementations available in `til`. For each class, an example of [kubectl](https://kubernetes.io/docs/reference/kubectl/) command is provided to help you create an instance of this particular type of secret in the destination cluster.

<!-- Please click "Preview" and ensure hyperlinks are working before clicking "Save page". -->

- [aws](#aws-secret-class)
- [azure_sp](#azure_sp-secret-class)
- [basic_auth](#basic_auth-secret-class)
- [datadog](#datadog-secret-class)
- [gcloud_service_account](#gcloud_service_account-secret-class)
- [github](#github-secret-class)
- [kafka](#kafka-secret-class)
- [logz](#logz-secret-class)
- [salesforce_oauth_jwt](#salesforce_oauth_jwt-secret-class)
- [sendgrid](#sendgrid-secret-class)
- [slack](#slack-secret-class)
- [slack_app](#slack_app-secret-class)
- [splunk_hec](#splunk_hec-secret-class)
- [tls](#tls-secret-class)
- [twilio](#twilio-secret-class)
- [zendesk](#zendesk-secret-class)

---

### `aws` Secret Class

Used to authenticate to Amazon Web Services (AWS) with [access keys](https://docs.aws.amazon.com/general/latest/gr/aws-sec-cred-types.html#access-keys-and-secret-access-keys).

#### Data Key(s)

- `access_key_id`: access key ID (example: "AKIAIOSFODNN7EXAMPLE")
- `secret_access_key`: secret access key (example: "wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY")

#### Create Command

```shell
kubectl create secret generic <SECRET_NAME> \
  --from-literal=access_key_id=<ACCESS_KEY_ID> \
  --from-literal=secret_access_key=<SECRET_ACCESS_KEY>
```

---

### `azure_sp` Secret Class

Used to authenticate to Microsoft Azure services with a [service principal](https://docs.microsoft.com/en-us/azure/active-directory/develop/app-objects-and-service-principals).

#### Data Key(s)

- `tenant_id`: tenant ID of the Azure application represented by the service principal (example: "1a23b45c-6789-1a2b-3c4d-00000EXAMPLE")
- `client_id`: client ID of the Azure application (example: "1a23b45c-6789-1a2b-3c4d-00000EXAMPLE")
- `client_secret`: client secret of the Azure application

#### Create Command

```shell
kubectl create secret generic <SECRET_NAME> \
  --from-literal=tenant_id=<TENANT_ID> \
  --from-literal=client_id=<CLIENT_ID> \
  --from-literal=client_secret=<CLIENT_SECRET>
```

---

### `basic_auth` Secret Class

Used to serve or authenticate against a web endpoint which supports [basic authentication](https://developer.mozilla.org/en-US/docs/Web/HTTP/Authentication).

#### Data Key(s)

- `username`: name of the user to authenticate as
- `password`: password of the selected user

#### Create Command

```shell
kubectl create secret generic <SECRET_NAME> \
  --from-literal=username=<USERNAME> \
  --from-literal=password=<PASSWORD>
```

---

### `datadog` Secret Class

Used to authenticate to the [Datadog API](https://docs.datadoghq.com/api/latest/).

#### Data Key(s)

- `apiKey`: API key (example: "1a23b45c-6789-1a2b-3c4d-00000EXAMPLE")

#### Create Command

```shell
kubectl create secret generic <SECRET_NAME> \
  --from-literal=apiKey=<API_KEY>
```

---

### `gcloud_service_account` Secret Class

Used to authenticate to Google Cloud services with a [service account](https://cloud.google.com/iam/docs/service-accounts).

#### Data Key(s)

- `key.json`: service account key in JSON format (example: "{\"type\":\"service_account\", ...}")

#### Create Command

```shell
kubectl create secret generic <SECRET_NAME> \
  --from-literal=key.json=<KEY>
```

---

### `github` Secret Class

Used to authenticate to the [GitHub API](https://docs.github.com/en/developers) and validate requests originating from GitHub Apps.

#### Data Key(s)

- `access_token`: access token to interact with the API
- `webhook_secret`: secret token for [securing webhooks](https://docs.github.com/en/developers/webhooks-and-events/securing-your-webhooks)

#### Create Command

```shell
kubectl create secret generic <SECRET_NAME> \
  --from-literal=access_token=<ACCESS_TOKEN> \
  --from-literal=webhook_secret=<WEBHOOK_SECRET>
```

---

### `kafka` Secret Class

Used to authenticate to Kafka brokers using different types of [authentication mechanisms and protocols](https://docs.confluent.io/platform/current/kafka/overview-authentication-methods.html). Please consult the documentation of the [Kafka Sink](https://knative.dev/docs/eventing/sink/kafka-sink/#security) (Knative) for more details.

#### Data Key(s)

- `protocol`: protocol to use for communicating with Kafka brokers (example: "SASL_PLAINTEXT", "SASL_SSL")
- `sasl.mechanism`: SASL authentication mechanism to use, if supported (example: "PLAIN", "SCRAM-SHA-256")
- `ca.crt`: certificate chain of a Certificate Authority (CA) for checking the authenticity of TLS connections (if enabled)
- `user`: (SASL authentication) name of the user to authenticate
- `password`: (SASL authentication) password of the selected user
- `user.crt`: (TLS authentication) X.509 certificate, in PEM format (example: "-----BEGIN CERTIFICATE-----\nMIIH...\n-----END CERTIFICATE-----")
- `user.key`: (TLS authentication) private key associated with the certificate, in PEM format (example: "-----BEGIN PRIVATE KEY-----\nMIIE...\n-----END PRIVATE KEY-----")
- `user.skip`: skip user authentication

#### Create Command

```shell
kubectl create secret generic <SECRET_NAME> \
  --from-literal=protocol=<PROTOCOL> \
  --from-literal=sasl.mechanism=<SASL_MECHANISM> \
  --from-file=ca.crt=<CA_CERTIFICATE> \
  --from-literal=user=<USER> \
  --from-literal=password=<PASSWORD> \
  --from-file=user.crt=<USER_CERTIFICATE> \
  --from-file=user.key=<CERTIFICATE_KEY> \
  --from-literal=user.skip=<BOOLEAN>
```

---

### `logz` Secret Class

Used to authenticate to the [Logz.io](https://docs.logz.io/api/) with an API token.

#### Data Key(s)

- `token`: API token (example: "VF2ZTc1R73SMtoN3CLiSDuG1nEXAMPLEAPITOKEN")

#### Create Command

```shell
kubectl create secret generic <SECRET_NAME> \
  --from-literal=token=<TOKEN>
```

---

### `salesforce_oauth_jwt` Secret Class

Used to authenticate requests to the Salesforce API using the [OAuth 2.0 JWT bearer token flow](https://help.salesforce.com/articleView?id=sf.remoteaccess_oauth_jwt_flow.htm).

#### Data Key(s)

- `secret_key`: private key associated with the certificate used as the JWT signing secret (example: "-----BEGIN PRIVATE KEY-----\nMIIE...\n-----END PRIVATE KEY-----")

#### Create Command

```shell
kubectl create secret generic <SECRET_NAME> \
  --from-literal=secret_key=<SECRET_KEY>
```

---

### `sendgrid` Secret Class

Used to authenticate to the [Sendgrid API](https://sendgrid.com/docs/ui/account-and-settings/api-keys/).

#### Data Key(s)

- `apiKey`: API key (example: "SG.1FF3NpJbSPiD7kg04l9rXw.qLVd-PwJWX6tkEIJ2EXAMPLEKEY")

#### Create Command

```shell
kubectl create secret generic <SECRET_NAME> \
  --from-literal=apiKey=<API_KEY>
```

---

### `slack` Secret Class

Used to authenticate to [Slack APIs](https://api.slack.com/apis) with a [bearer token](https://api.slack.com/authentication/token-types).

#### Data Key(s)

- `token`: bearer token (example: "xoxb-000000000000-00EXAMPLETOKEN")

#### Create Command

```shell
kubectl create secret generic <SECRET_NAME> \
  --from-literal=token=<SIGNING_SECRET>
```

---

### `slack_app` Secret Class

Used to [verify requests](https://api.slack.com/authentication/verifying-requests-from-slack) originating from Slack in Slack apps.

#### Data Key(s)

- `signing_secret`: signing secret of the app (example: "8f742231b10e8888abcd99yyyzzz85a5")

#### Create Command

```shell
kubectl create secret generic <SECRET_NAME> \
  --from-literal=signing_secret=<SIGNING_SECRET>
```

---

### `splunk_hec` Secret Class

Used to authenticate to a [Splunk HTTP Event Collector](https://docs.splunk.com/Documentation/Splunk/latest/Data/UsetheHTTPEventCollector).

#### Data Key(s)

- `hec_token`: HEC token (example: "1a23b45c-6789-1a2b-3c4d-00000EXAMPLE")

#### Create Command

```shell
kubectl create secret generic <SECRET_NAME> \
  --from-literal=hec_token=<HEC_TOKEN>
```

---

### `tls` Secret Class

Used to authenticate to HTTP(S) endpoints using [TLS Client Authentication](https://blog.cloudflare.com/introducing-tls-client-auth/).

#### Data Key(s)

- `certificate`: X.509 certificate, usually in PEM format (example: "-----BEGIN CERTIFICATE-----\nMIIH...\n-----END CERTIFICATE-----")
- `key`: private key associated with the certificate, usually in PEM format (example: "-----BEGIN PRIVATE KEY-----\nMIIE...\n-----END PRIVATE KEY-----")
- `ca_certificate`: certificate chain of a Certificate Authority (CA) for checking the authenticity of TLS connections

#### Create Command

```shell
kubectl create secret generic <SECRET_NAME> \
  --from-literal=certificate=<CERTIFICATE> \
  --from-literal=key=<KEY> \
  --from-literal=ca_certificate=<CA_CERTIFICATE>
```

---

### `twilio` Secret Class

Used to authenticate to the Twilio API with an [auth token](https://www.twilio.com/docs/salesforce/install#obtain-your-twilio-account-sid-and-auth-token).

#### Data Key(s)

- `sid`: account SID (example: "AC0000000000000000000EXAMPLESID")
- `token`: auth token

#### Create Command

```shell
kubectl create secret generic <SECRET_NAME> \
  --from-literal=sid=<ACCOUNT_SID> \
  --from-literal=token=<AUTH_TOKEN>
```

---

### `zendesk` Secret Class

Used to authenticate to [Zendesk APIs](https://developer.zendesk.com/rest_api) with an [API token](https://developer.zendesk.com/rest_api/docs/support/introduction#api-token).

#### Data Key(s)

- `token`: API token (example: "VF2ZTc1R73SMtoN3CLiSDuG1nEXAMPLEAPITOKEN")

#### Create Command

```shell
kubectl create secret generic <SECRET_NAME> \
  --from-literal=token=<TOKEN>
```
