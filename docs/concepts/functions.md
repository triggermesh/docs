Functions may be used to implement custom event flow logic and may act as a source, transformation, or target. Python, NodeJS, and Ruby are the currently supported Function types.

## Examples

* [NodeJS empty field transformation](https://github.com/triggermesh/triggermesh/blob/main/config/samples/functions/nodejs.yaml)
* [Python random even/odd events](https://github.com/triggermesh/triggermesh/blob/main/config/samples/functions/python.yaml)
* [Ruby date and time event](https://github.com/triggermesh/triggermesh/blob/main/config/samples/functions/ruby.yaml)

There is another example of [Writing a Function](../guides/writingafunction.md) in the Guides.

## API Reference

Function is documented in the [API Reference](../reference/extensions.md)

## Specifications

The specification of each target is available through `kubectl explain`. For example:

```console
kubectl explain function.spec
KIND:     Function
VERSION:  extensions.triggermesh.io/v1alpha1

RESOURCE: spec <Object>

DESCRIPTION:
     Desired state of the function.

FIELDS:
   ceOverrides	<Object>
     Defines overrides to control modifications of the event attributes.

   code	<string> -required-
     Function code.

   entrypoint	<string> -required-
     Function name to use as an entrypoint.

   eventStore	<Object>
     EventStore service connection string.

   public	<boolean>
     Should the function be publicly available.

   responseIsEvent	<boolean>
     Whether function responds with CE payload only or with full event.

   runtime	<string> -required-
     Function runtime name. Python, Ruby or Node runtimes are currently
     supported.

   sink	<Object>
     Sink is a reference to an object that will resolve to a uri to use as the
     sink.
```
