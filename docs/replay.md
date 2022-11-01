# Replay

!!!Placeholder content!!!

## Use cases
### Developing and testing new filters and transformations with real events
Context: TriggerMesh is running in production on Kubernetes, and is routing all S3 events from an SQS source to a microservice over HTTP, through a Broker. It is using a catch-all Trigger (no filters), and no transformations.

Goal: I decide I want to deploy a new service that only needs to receive S3 object created events, and I need to transform the payload to only contain the file’s ARN.

1) Create a catch-all archive of the events passing through this Broker.
I don’t necessarily need to store a huge amount of events (max size can be relatively small), just enough to do some tests.

2) Prepare the development environment
I connect to my development environment and checkout the version of the TriggerMesh project that is running in production.

3) Make updates locally
I add a new Target for my new service, I add a new Trigger that filters for only S3 object created events, and I add a Transformation that extracts only the attributes I need.

I’m mocking the new service by actually sending the events to an event display.

4) Replay the archive, view results
I now want to replay my archive into this development Broker to make sure I get the expected output: all of the S3 object created events with only the ARN field are sent to my new target service.

Because I’ve plugged in an event display, I’m going to look at the output that shows up there to get an idea of whether or not things are working.

### Recovering from a bug in a service
Context: I’ve written a custom Knative service that receives S3 object created events from a TriggerMesh HTTP Target. The service extracts the reference to the new file from the event, loads the created object from S3 (test file results in json format), extracts some values from the json and stores them in a database, using the unique file name as a key, so if ever it reprocesses past events that were successfully processed before, it will simply overwrite the existing results with the same thing (idempotent consumer). 

There are other services and event sources running on this TriggerMesh Broker.

For good measure, I’ve already been archiving events that are sent to my custom service in case I need them in the future.

After some time, I discover a bug in the code of my function. The function is failing when reading the json values in certain events that store those values as a list instead of individual key/value pairs.

Goal: In order to make sure I store all the previously failed test results in the database, I want to fix the service and replay past events so that they can be processed correctly.

1) I fix the code
Now it can handle this alternative formatting present in certain events.
I push it to production.

2) I configure my replay
I locate the archive that I need.
I prepare the replay by playing the archive from the beginning.
I set the Trigger attribute for the replay to the Trigger that is used for my specific service, because I really want to avoid these events being replayed to other potential services that I don’t know about.

3) I hit replay and check the results
The archive is replayed and all events flow back through my service.
I check the database to make sure the missing files are now being stored there correctly.
