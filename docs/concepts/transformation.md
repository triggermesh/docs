A Transformation translates the message contained in incoming events and publishes them into a different format.

## Examples

Transformation examples include annotating incoming events with timestamps, dropping fields, or rearranging data to fit an expected format.

There is an example of [Doing a Transformation](../guides/doingatransformation.md) available under Guides.

Transformations may be done declaratively or through a [function](../guides/writingafunction.md).

## API Reference

Transformation is documented in the [API Reference](../apis/flow.md)

## Specifications

The specification of each target is available through `kubectl explain`. For example:

```console
kubectl explain transformation.spec
KIND:     Transformation
VERSION:  flow.triggermesh.io/v1alpha1

RESOURCE: spec <Object>

DESCRIPTION:
     Desired state of the transformation object.

FIELDS:
   context	<[]Object>
     CloudEvents Context attributes transformation spec.

   data	<[]Object>
     CloudEvents Data transformation spec.

   sink	<Object>
     The destination of events sourced from the transformation object.
```
