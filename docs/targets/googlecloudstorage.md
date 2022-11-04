# GoogleCloudStorage Event Target for Knative Eventing

This event target integrates with GoogleCloudStorage by using received CloudEvent messages upload arbitrary blobs.

## Prerequisites

* Google Storage enabled in Google Cloud Console
* A Google Cloud Service account with rights to the storage resources and the credentials in JSON format.

## Creating a GoogleCloudStorage Target

A full deployment example is located in the [samples](../samples/googlecloudstorage) directory. It can be deployed via the following steps:

* Update the `100-secrets.yaml` file to include the JSON credentials
* Update the `200-target.yaml` file
* Apply the configuration via `kubectl`


### Talking to the GoogleCloudStorage Target

### Arbitrary Event Types

The GoogleCloudStorage event Target accepts any cloudevent and will upload the event's data into a file specified by it's ID.

### Event Type com.google.cloud.storage.object.insert

The GoogleCloudStorage event Target accepts a [JSON][ce-jsonformat] payload with the following properties

| Name  |  Type |  Comment | Required
|---|---|---|---|
| **data** | []byte | base64 encoded data |true |
| **fileName** | string | the file name with type (ex. 'file.png') | true |


### Example

An example of a Cloudevent being passed via a Curl command:

```
curl -v "localhost:8080" \
       -X POST \
       -H "Ce-Id: 536808d3-88be-4077-9d7a-a3f162705f79" \
       -H "Ce-Specversion: 1.0" \
       -H "Ce-Type: com.google.cloud.storage.object.insert" \
       -H "Ce-Source: dev.knative.samples/helloworldsource" \
       -H "Content-Type: application/json" \
       -d '{"data":"iVBORw0KGgoAAAANSUhEUgAAAIUAAABYCAYAAADbejTNAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAAFiUAABYlAUlSJPAAAAQTSURBVHhe7ZtRjuQ4DEP3Tn3/s/VAH1oQEi3LsVM1yfABBDoiLQdVxHT/zH+/QgRUCpFQKURCpRAJlUIkVAqRUClEQqUQCZVCJFQKkVApREKlEAmVQiS+Xoqfn5//xUC/yolzbJeCfWmVkJlvdDKfgr1LpaeiUizA3qXSU1EpFmDvUumpfLUURuUZ6Fe5T8DepdJTuaUUJ7l7/wp/07vciUqxwN/0Lnfy1VJ0znYyEXbGtMvJnWyXaUaVZ3Oc4dwYea8qBctG7XBiH9sRVTHK7s5RrykFy410ld1d7PxII1guznxusHmcRf2TpTBdYXcPO1+JwXJMDvNmekUpZpmZ32VnDztrcphnirBMFMJ8ExK9W0pRCZn5xiczM9iOSsjMN65mTCM62ei/shSMmBnlKtiOSkjlIbNc9FkG6ebRVykWYDsqOZUXmWVnfqSbR//xpWB+V6uwHZWcyovMsjM/0s2j//g/NJnf1SpXd6ycm2VnfqSbR1+lWODqjpVzs+zMj3Tz6L+yFHdx9a6Vc7PszI908+irFAtcvWvl3Cw78yPdPPqPL4Ux808R71m5q3tulos+yyDdPPqvLAXLnGDnns7ZUxmkm0f/taUwMSpvBu5e3cPOmhzmmSKdDNLNo/+KUhgsV+kKu3vY+UqMbs7p5tF/TSkMlh3pCif2sB0jMbo5p5tH/1WlMFie6Qp37okasZI1unn0X1cKg51x7XByH9tlmrF6pptHf7sU4n2oFCKhUoiESiESKoVIqBQioVKIhEohEiqFSKgUIqFSiIRKIRIqhUioFCKhUoiESiESKoVIqBQioVKIhEohEiqFSKgUIqFSiIRKIRIqhUioFCKhUoiESiESl0uB/yF1xkpWnGHn8976l6J78c4LimvsfObbvz5ml++8nLjOzud+rBTsBSpP3MvO537kD0325bMZgv4sw6i8EX5mdjbmXBGcY85nHap89PDZf8YZMpobeI5ljpTCiBeMLvT5SAibOZUX8SwTwvwohPmoDlU2ev48ElLNRnKOlcIYXYKMPDYfZY3Ki7Csz3DOcg7zfNadM6pc9Pw55ndmRpx/tBSjuRP9Kl95yIkdBstW5ysPWdmxk43PEfSPlsKoLq88I/pVvvKQbo7hZ1EImzmVh6zs2MnG5wj6KkXA8yMhbOZUHrKyYycbnyPoqxSAZ9mZ7sypPGRlx042PkfQ/6dLEb2VrLGaZ6zs2MnG5wj6Hy2FMfLZ3Gfd+YjuDpYzWNYY5Y3KQzwXs2zOZsbOzIjzr5VipAjLoDqwcy6E+VEImzmVF/HsSA7zUEg1G8n5eCkcfJlZnmXx5w54vjpb5WbPSOUxPI/n8GeDeThDRnMDz7HM8VKI+xh9iadRKR6ESiESKoVIqBTiS/z+/gGzfSWEBhuJawAAAABJRU5ErkJggg==","fileName":"img4.png"}'


```

[ce-jsonformat]: https://github.com/cloudevents/spec/blob/v1.0/json-format.md
