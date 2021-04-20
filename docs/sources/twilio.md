# Event Source for Twilio
This event source is to be deployed and then registered as a webhook via Twilio [Proxy][proxy]

## Prerequisite(s)

- A Twilio account (trial or paid)
## Deploying an Instance of the Source

Open the Bridge creation screen and add a source of type `Twilio`.

![Adding a Twilio source](https://github.com/triggermesh/docs/blob/twiliosource/docs/images/twilio-source/create-bridge-1.png)

In the Source creation form, give a name to the event source and add assign it to a Broker

![Twilio source form](https://github.com/triggermesh/docs/blob/twiliosource/docs/images/twilio-source/create-bridge-2.png)

After clicking the `Save` button, you will be taken back to the Bridge editor. Proceed to add the remaining

components to the Bridge, then submit it.

![Bridge overview](https://github.com/triggermesh/docs/blob/twiliosource/docs/images/twilio-source/create-bridge-3.png)

A ready status on the main _Bridges_ page indicates that the Twilio Source was successfully created and is ready to forward events from Twilio.

![Bridge status](../images/bridge-status-green.png)

## Integrate with Twilio

Retrieve the public URL of the deployed Twilio source by selecting it from within the `Services` section within Triggermesh.

![Tm Services](https://github.com/triggermesh/docs/blob/twiliosource/docs/images/twilio-source/integrate-4.png)

Copy down the `Domain` for later steps.

![Tm Services](https://github.com/triggermesh/docs/blob/twiliosource/docs/images/twilio-source/integrate-5.png)

Navigate to your Twilio dashboard and search for `proxy`

![Twilio Proxy Search](https://github.com/triggermesh/docs/blob/twiliosource/docs/images/twilio-source/integrate-1.png)

From the Twilio Proxy dashboard select `Create new Service` and, in the following pop-up box, assign it a name.

![Twilio Proxy Dash](https://github.com/triggermesh/docs/blob/twiliosource/docs/images/twilio-source/integrate-2.png)

You should now be on a similar page to this:

![Twilio Proxy new Service](https://github.com/triggermesh/docs/blob/twiliosource/docs/images/twilio-source/integrate-3.png)

Enter the `Domain` that was retrieved earlier into the  "CALLBACK URL", "INTERCEPT CALLBACK URL", and "OUT OF SESSION CALLBACK URL" fields. Then
select `Save`

![Twilio Proxy Service](https://github.com/triggermesh/docs/blob/twiliosource/docs/images/twilio-source/integrate-6.png)

Select `Proxy Numbers`

![Twilio Proxy Register](https://github.com/triggermesh/docs/blob/twiliosource/docs/images/twilio-source/integrate-7.png)

Select `Add Numbers`

![Twilio Proxy Register](https://github.com/triggermesh/docs/blob/twiliosource/docs/images/twilio-source/integrate-8.png)

Assing an available number

![Twilio Proxy Register](https://github.com/triggermesh/docs/blob/twiliosource/docs/images/twilio-source/integrate-9.png)

All done!

## Event Type

The Twilio event source emits events of the following type:

* `com.triggermesh.twilio.sms`

### Example event emited from this source:

```
☁️  cloudevents.Event
Validation: valid
Context Attributes,
  specversion: 1.0
  type: com.triggermesh.twilio.sms
  source: io.triggermesh.twilio/jeff/twilio-source
  id: 6a547451-be05-4da4-a10f-1af92422c7d1
  time: 2021-01-25T19:18:38.550812939Z
  datacontenttype: application/json
Extensions,
  knativearrivaltime: 2021-01-25T19:18:38.580569695Z
Data,
  {
    "message_sid": "ASDFc9ac2663bbeASDFd51a",
    "sms_status": "received",
    "from_country": "US",
    "num_segments": "1",
    "to_zip": "99204",
    "num_meda": "",
    "account_sid": "ADF0610bd2e60abdda72",
    "sms_message_sid": "ASKDFb2c9ac26621CADfca1d51a",
    "api_version": "2010-04-01",
    "to_country": "US",
    "to_city": "SPOKANE",
    "from_zip": "27707",
    "sms_sid": "ASDFc2663bbefcASa",
    "from_state": "NC",
    "body": "hello world",
    "from": "<redacted>",
    "from_city": "DURHAM",
    "to": "<redacted>",
    "to_state": "WA"
  }
```


[tm-secret]: ../guides/secrets.md

[proxy]: https://www.twilio.com/docs/proxy
