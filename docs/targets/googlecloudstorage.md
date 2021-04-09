# Event Target for GoogleCloudStorage 
This event target integrates with GoogleCloudStorage, using received Cloud Event messages to create Blob items.

## Prerequisites

* A storage bucket is expected to exist prior to running this event target. If you haven't already done so, create a bucket by following the instructions from the [Cloud Storage How-To Guides](https://cloud.google.com/storage/docs/how-to).

* A [Service Account](https://cloud.google.com/iam/docs/creating-managing-service-accounts) is required to authenticate the event target and allow it to interact with Google. Create a [key in JSON format](https://cloud.google.com/iam/docs/creating-managing-service-account-keys) for this service account and save it. It is required to be able to run an instance of the Google Cloud Storage event target.


## Deploying an Instance of the Target
Open the Bridge creation screen and add a Target of type `Google Cloud Storage`.

In the Target creation form, provide a name for the event Target, and add the following information:

* **Credentials:** Credentails for a Google Service Account in [JSON format](https://cloud.google.com/iam/docs/creating-managing-service-account-keys)).
* **Name:** A name to be associated with the deployed Target.
* **Bucket Name:** The Google Cloud Storage Bucket name.


After clicking the `Save` button, you will be taken back to the Bridge editor. Proceed by adding the remaining components to the Bridge, and then submit it.

A ready status on the main _Bridges_ page indicates that the event Target is ready to interact with Google Cloud Storage.

## Event Types

### Arbitrary Event Types

The GoogleCloudStorage event Target accepts any cloudevent and will upload the event's data into a file specified by it's ID. 

### Event Type com.google.cloud.storage.object.insert

The Google Cloud Storage target can also consume event's of type `com.google.cloud.storage.object.insert`, and will produced responses typed `com.google.cloud.storage.object.insert.response`. 

The payload contains a JSON structure with elements to execute the API request:

- `data`: base64 encoded data. 
- `fileName`: the file name with type (ex. 'file.png') 


[ce]: https://cloudevents.io/

[tm-secret]: ../guides/secrets.md