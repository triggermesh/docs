# Event Target for Amazon Comprehend

This event target receives [CloudEvents][ce] over HTTP and sends them to [Amazon Comprehend](https://aws.amazon.com/comprehend/)

## Prerequisite(s)

- AWS API key and secret.

## Deploying an Instance of the Target

Open the Bridge creation screen and add a target of type `Amazon Comprehend`.

In the Target creation form, give a name to the event Target and add the following information:

- **AWS Secret**: Reference a [TriggerMesh secret](../guides/secrets.md) containing an AWS API key and Secret.
- **Region**: Denotes the region to run the Amazon Comprehend services from.
- **Language**: Denotes the language to expect in the events.

After clicking the `Save` button, you will be taken back to the Bridge editor. Proceed to adding the remaining
components to the Bridge, then submit it.

A ready status on the main _Bridges_ page indicates that the Amazon Comprehend target is ready to accept events.

For more information about using Amazon Comprehend, please refer to the [documentation][https://docs.aws.amazon.com/comprehend/].

## Event Types
### Arbitrary
This target will consume arbitrary events and analyzes each of the key values sentiment. It then combines the scores and 
returns the analysis in a response event of type `io.triggermesh.targets.aws.comprehend.result`


[ce]: https://cloudevents.io/
