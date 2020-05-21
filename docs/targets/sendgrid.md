# Sendgrid event target for Knative Eventing

This event target integrates with Sendgrid, using received Cloud Event messages to create E-mail messages.

## Contents

- [Sendgrid event target for Knative Eventing](#sendgrid-event-target-for-knative-eventing)
  - [Contents](#contents)
  - [Prerequisites](#prerequisites)
  - [Controller Deployment](#controller-deployment)
    - [From code](#from-code)
    - [Deploy From Image](#deploy-from-image)
        - [If you are not a ko user or just do not want to build and deploy from source you can also follow these steps to use one of our published images to deploy.](#if-you-are-not-a-ko-user-or-just-do-not-want-to-build-and-deploy-from-source-you-can-also-follow-these-steps-to-use-one-of-our-published-images-to-deploy)
  - [Creating a Sendgrid Target adapter.](#creating-a-sendgrid-target-adapter)
        - [Once the Sendgrid Target Controller has been deployed, and all other needed assets are present, we can create integrations by adding SendgridTargets objects.](#once-the-sendgrid-target-controller-has-been-deployed-and-all-other-needed-assets-are-present-we-can-create-integrations-by-adding-sendgridtargets-objects)
    - [Status](#status)
    - [Sendgrid Target as an event Sink](#sendgrid-target-as-an-event-sink)
      - [Once deployed, Sendgrid Target Adapters are addressable. This means you can use it as a Sink for Knative components! Below you can find an example.](#once-deployed-sendgrid-target-adapters-are-addressable-this-means-you-can-use-it-as-a-sink-for-knative-components-below-you-can-find-an-example)
    - [Talking to the Sendgrid Target](#talking-to-the-sendgrid-target)

## Prerequisites

A Sendgrid account is required to run this target:

* Register a Sendgrid account
* Retrieve from Sendgrid an API token


## Controller Deployment

### From code

You can use the [ko](https://github.com/google/ko) tool to compile and deploy from source 
by executing the following command from the root directory of the Sendgrid target folder. 

```console
ko apply -f ./config
```

OR

### Deploy From Image

##### If you are not a ko user or just do not want to build and deploy from source you can also follow these steps to use one of our published images to deploy.

1. Navigate to the [config/](https://github.com/triggermesh/knative-targets/tree/Sendgrid-merge-fix/sendgrid/config) folder and open the '500-controller.yaml' file for editing.

2. Replace line #37: 
```
image: ko://github.com/triggermesh/knative-targets/sendgrid/cmd/controller
```
With:
```
tmjeff/sendgridcontroller:latest
```

3. Replace line #55
```
value: ko://github.com/triggermesh/knative-targets/sendgrid/cmd/adapter
```
With:
```
tmjeff/sendgridadapter:latest
```

4. Now we can build and deploy by moving up one directory to the [sendgrid/](https://github.com/triggermesh/knative-targets/tree/Sendgrid-merge-fix/sendgrid) folder and executing the following:

```shell
kubectl apply -f config/
```


## Creating a Sendgrid Target adapter. 

##### Once the Sendgrid Target Controller has been deployed, and all other needed assets are present, we can create integrations by adding SendgridTargets objects.

1. Start by navigating to the [samples/](https://github.com/triggermesh/knative-targets/tree/Sendgrid-merge-fix/sendgrid/samples) folder, open the file named '100-secret.yaml', and update the 'apiKey' value with a valid Sendgrid API Key.

2. Next move on to the '200-target.yaml' file in the same folder. Here was can imput some *optional* default values. If you do not require default values and want to pass these values dynamically via parameters in the CE body, you may omit some or all of these by deleteing the lines and leaving only the 'apiKey' portion.

    * A list of (optional) supported spec options: defaultFromEmail, defaultToEmail, defaultToName, defaultFromName, defaultMessage

3. Last file in the folder is ' 300-trigger.yaml' Here you can make modifications or leave it as is to subscribe to the default broker in the namespace you deploy. 


### Status

* The SendgridTarget requires only one Secret, the APIKey, to be provided. 

* Once its presences is confirmed, the Sendgrid Target Controller will create a Knative Service for the Adapter.  

* A Status summary is added to the SendgridTarget object informing of the all conditions that the target needs.

* When ready the `status.address.url` will point to the internal point where Cloud Events should be sent.

### Sendgrid Target as an event Sink

#### Once deployed, Sendgrid Target Adapters are addressable. This means you can use it as a Sink for Knative components! Below you can find an example. 

* The included example trigger ['300-trigger.yaml'](https://github.com/triggermesh/knative-targets/blob/Sendgrid-merge-fix/sendgrid/samples/300-trigger.yaml) Is as follows. 

```yaml
apiVersion: eventing.knative.dev/v1beta1
kind: Trigger
metadata:
  name: sendgrid-sample-trigger
spec:
  broker: default
  subscriber:
    ref:
      apiVersion: targets.triggermesh.io/v1alpha1
      kind: SendgridTarget
      name: triggermesh-email
```

* Once this, along with the other aformentioned requirements, have been deployed. It is now possible to implement something like the [awskinesis-sinkbinding.yaml](https://github.com/triggermesh/aws-event-sources/blob/master/config/samples/awskinesis-sinkbinding.yaml) example from the [aws-event-sources](https://github.com/triggermesh/aws-event-sources).

* By replacing the section starting at line [#18](https://github.com/triggermesh/aws-event-sources/blob/93df64d5b298cc73acfb93f835646cc1d06429c4/config/samples/awskinesis-sinkbinding.yaml#L18) with:

```
  sink:
    ref:
      apiVersion: targets.triggermesh.io/v1alpha1
      kind: ConfluentTarget
      name: triggermesh-confluent
```

* You can now deploy this .yaml file. This will complete the setup of the sinkbinding!

*****Please note that to deploy the [awskinesis-sinkbinding.yaml](https://github.com/triggermesh/aws-event-sources/blob/master/config/samples/awskinesis-sinkbinding.yaml) example there are other resources that need to be deployed. Please see the [DEVELOPMENT.md](https://github.com/triggermesh/aws-event-sources/blob/master/DEVELOPMENT.md) doc hosted there for full details***** 


### Talking to the Sendgrid Target

* Depending on how you want to use the target. You can set up defaults for all the avalible paraments and pass absolutely nothing to have a static message sent to a defined user. Or you can pass in key:value params to dynamically set all of the variables.

An example of a Cloudevent being passed via a Curl command:

```
curl -v "10.152.183.229" \
       -X POST \
       -H "Ce-Id: 536808d3-88be-4077-9d7a-a3f162705f79" \
       -H "Ce-Specversion: 1.0" \
       -H "Ce-Type: dev.knative.samples.helloworld" \
       -H "Ce-Source: dev.knative.samples/helloworldsource" \
       -H "Content-Type: application/json" \
       -d '{"FromEmail":"Jeff@triggermesh.com.","ToEmail":"jeffthenaef@gmail.com", \
         "FromName":"SendgridTarget","ToName":"endUser","Message":"hello"}'
```

A list of possible keys:
- message
- fromname
- fromemail
- toname
- toemail

**If the "Message" key:value is omited. The body of the email will contain the entire cloud event**

