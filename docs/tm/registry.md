## Docker Registry

Docker images are used to run functions code in Knative services. This means that image registry is important part of service deployment scheme. Depending on type of service, Knative controller may either only pull or also push service image from and to registry. Triggermesh CLI provides simple configuration interface to setup registry address and user access credentials.

### Service from Pre-Built Image

Most simple type of service deployment uses service based on pre-built Docker image available in **public** registry. This kind of service doesn't require any additional configuration and may be started with following command:

```
tm deploy service foo -f gcr.io/google-samples/hello-app:1.0 --wait
```

This case doesn't produce any images so no authentication is required.

If pre-built image stored in **private** registry, you must specify access credentials by running following command before starting deployment:

```
tm set registry-auth foo-registry
```

You will be asked to enter registry address, username and password - they will saved to k8s secret and used to pull images deployed under you service account.

Besides pulling, this secret may be used to push new images for service deployment based on function source code and build template. Name of one particular k8s secret should be passed to deployment command to make CLI work with private registry:

```
tm deploy service foo-private -f https://github.com/serverless/examples \
                              --build-template knative-node4-runtime \
                              --build-argument DIRECTORY=aws-node-serve-dynamic-html-via-http-endpoint \
                              --build-argument HANDLER=handler.landingPage \
                              --registry-secret foo-registry \
                              --wait
```

If user whose credentials are specified in `foo-registry` have "write" permissions, resulting service image will be pushed to URL composed as `registry/username/service_name`

### GitLab CI Registry

Triggermesh CLI can be used as deployment step in Gitlab CI pipeline, but considering [tokens](https://docs.gitlab.com/ee/user/project/deploy_tokens/) security policy, user must manually create CI deployment token as described [here](https://docs.gitlab.com/ee/user/project/deploy_tokens/#gitlab-deploy-token).
Deployment token must have registry read permission and should be valid for as long as the service expected to be active. If token is created, `tm` deployment step must include following commands:

```
...
script:
  - tm -n "$KUBE_NAMESPACE" set registry-auth gitlab-registry --registry "$CI_REGISTRY" --username "$CI_REGISTRY_USER" --password "$CI_JOB_TOKEN" --push
  - tm -n "$KUBE_NAMESPACE" set registry-auth gitlab-registry --registry "$CI_REGISTRY" --username "$CI_DEPLOY_USER" --password "$CI_DEPLOY_PASSWORD" --pull
...
```
After this, you may pass `--registry-secret gitlab-registry` parameter to `tm deploy` command (or in [serverless.yml](https://gitlab.com/knative-examples/functions/blob/master/serverless.yaml#L6)) so that Knative could authenticate against Gitlab registry. 
Gitlab registry doesn't provide permanent read-write token that can be used in CI, but it has job-specific `CI_JOB_TOKEN` with "write" permission which is valid only while CI job running and `CI_DEPLOY_PASSWORD` with read permission which we created before. Considering this, we can see that CLI `set registry-auth` command supports `--push` and `--pull` flags that indicates which secret must be used to push image and which for "pull" operations only. Resulting images will be stored under `registry.gitlab.com/username/project/function_name` path

### Unauthenticated Registry

Besides hosted registries, triggermesh CLI may work with unauthenticated registries which does not require setting access credentials. For such cases, you may simply add `--registry-host` argument to deployment command with registry domain name parameter and resulting image will be pushed to `registry-host/namespace/service_name` URL


