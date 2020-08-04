# Event Target for $TARGET

This event target receives arbitrary [CloudEvents][ce] over HTTP and sends them to a $TARGET
in a [JSON format][ce-jsonformat].

## Prerequisites

In order to be able to use the TriggerMesh event target for $TARGET, 

## Deploying an instance of the Target

Open the Bridge creation screen and add a target of type `$TARGET`.

![Adding a $TARGET target](../images/$TARGET-target/create-bridge-1.png)

In the Target creation form, give a name to the event Target and add the following information:

* [**<>**][<>]: ...
* [**<>**][<>]: ..
* [**<>**][<>]: Reference to a [TriggerMesh secret][tm-secret] containing a token for authenticating requests

After clicking the `Save` button, you will be taken back to the Bridge editor. Proceed to adding the remaining
components to the Bridge, then submit it.

A ready status on the main _Bridges_ page indicates that the $TARGET target is ready to accept events.

![Bridge status](../images/bridge-status-green.png)

For more information about using $TARGET, please refer to the [$TARGET documentation][docs].

## Event types

The $TARGET event target can consume...

### Example

[ce]: https://cloudevents.io/
[ce-jsonformat]: https://github.com/cloudevents/spec/blob/v1.0/json-format.md
[tm-secret]:https://docs.triggermesh.io/guides/secrets/

[docs]: 
