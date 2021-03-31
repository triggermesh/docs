# Event Target for GoogleCloudStorage 
This event target integrates with GoogleCloudStorage by using received CloudEvent messages upload arbitrary blobs.

## Prerequisites
* Google Storage enabled in Google Cloud Console
* A Google Cloud Service account with rights to the storage resources and the credentials in JSON format. 


## Deploying an Instance of the Target
Open the Bridge creation screen and add a Target of type GoogleCloudStorage.

In the Target creation form, provide a name for the event Target, and add the following information:

* **Bucket Name** The Google Cloud Storage Bucket name.
* **Credentials** Credentails for a Google Service Account in JSON format.


Click the `Save` button, the console will self-navigate to the Bridge editor. Proceed by adding the remaining components to the Bridge.

After submitting the bridge, and allowing some configuration time, a green check mark on the main _Bridges_ page indicates that the bridge with was successfully created.

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