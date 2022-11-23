# Routing: Filters and Splitters

TriggerMesh provides routing by event content (Filter) or dividing incoming events into multiple distinct events as necessary (Splitter).

## Filter

The Filter determines which events to process based on their content. Content-based event filtering is expressed in Google's [Common Expression Language](https://opensource.google/projects/cel). Multiple filters may be used as necessary. Filters do not modify the content of the processed events.

### Filter Examples

Examples include dropping log messages outside of a time window or only processing events containing a particular substring.

There is an example of [Writing a Filter](../guides/writingafilter.md) available under Guides.

### Filter Specification

The Filter specification is available through `kubectl explain`.

```console
kubectl explain filter.spec
KIND:     Filter
VERSION:  routing.triggermesh.io/v1alpha1

RESOURCE: spec <Object>

DESCRIPTION:
     Desired state of the filter.

FIELDS:
   expression	<string> -required-
     Google CEL-like expression string.

   sink	<Object> -required-
     Sink is a reference to an object that will resolve to a uri to use as the
     sink.
```

## Splitter

The Splitter separates events into multiple events which may then be processed individually.

### Splitter Examples

JSON events frequently have arrays of events that need to be split.

There is an example of [Creating a Splitter](../guides/creatingasplitter.md) available under Guides.

### Splitter Specification

The Splitter specification is available through `kubectl explain`.

```console
kubectl explain splitter.spec
KIND:     Splitter
VERSION:  routing.triggermesh.io/v1alpha1

RESOURCE: spec <Object>

DESCRIPTION:
     Desired state of the splitter.

FIELDS:
   ceContext	<Object> -required-
     Context attributes to set on produced CloudEvents.

   path	<string>
     JSONPath expression representing the key containing the data array to
     split. Defaults to the root.

   sink	<Object> -required-
     Sink is a reference to an object that will resolve to a uri to use as the
     sink.
```

## API Reference

Filters and Splitters are listed and documented in the [Routing API reference](../reference/routing.md).
