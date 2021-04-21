# InfraJS Target

This event Target does programmatic transformations on received [CloudEvents][ce] using a Javascript function.

## Prerequisite(s)

- Basic knowledge of JavaScript ES5 is required. Please note there are limitations to the interpreter:
    - ES6 is not supported.
    - Regular expressions are not fully compatible with ES5 specification.
    - No imports are allowed.
    - No libraries are pre-loaded.

## Deploying an Instance of the Target

Open the Bridge creation screen and add a Target of type `InfraJS`.

In the Target creation form, provide a name for the event Target and add the following information:

- **JS Script**: The function that contains the event manipulation.
- **Timeout**: The amount of milliseconds to wait before timing out the script.
- **Type Loop Protection**: When enabled, will raise an error if the returned CloudEvent type is the same as the incoming one.

After clicking the `Save` button, the console will self-navigate to the Bridge editor. Proceed by adding the remaining components to the Bridge.

After submitting the Bridge, and allowing for some configuration time, a green check mark on the main _Bridges_ page indicates that the Bridge with an Elasticsearch event Target was successfully created.

### JS Script

The JS Script field must include a function named `handle` with a single parameter for the incoming CloudEvent, and return the outgoing CloudEvent.

- The incoming parameter is the [JSON][ce-json] representation of the incoming event.
- The incoming parameter can be re-used as the outgoing parameter. That is useful if we want to modify a small set of the values in the incoming event.
- The outgoing event must be a JSON structure that contains [context attributes][ce-context-attributes] at the root and [data payload][ce-data] at the `data` element. See [JSON format reference][ce-json].
- If the outgoing event is nil or no outgoing event is returned, no CloudEvent will be replied and the processing will be considered successful.
- When not present at the outgoing event, these context fields will be defaulted:
    - `specversion` will be set to the incoming value.
    - `source` will be set to the incoming value.
    - `id` will be set to the incoming value.
    - `datacontenttype` will default to `application/json`.

## Examples

These examples for the InfraJS target show different usages of the `JS Script` function. The incoming parameter for all of the examples will be this CloudEvent:

```json
{
  "id": "aabb-ccdd",
  "type": "example.type",
  "source": "example.source",
  "specversion" : "1.0",
  "datacontenttype" : "application/json",
  "data": {"key1":"value1","key2":"value2","key3": true}
}
```

### Reply New Event

Discard the input and generate a new event.
Context fields missing at the new event will be automatically filled from the input.

```js
function handle(input) {
  newEvent = {
    data: {
      "hello": "world",
      "nest": {
        "nested1": [1,2,3],
        "nested2": "nestedvalue"
      }
    },
    "type": "test.response.type",
  };

  return newEvent;
}
```

Values from the input event can be used when composing the reply.

```js
function handle(input) {
  newEvent = {
    data: {
      "hello": "world",
      "works": input.data.key3,
      "nest": {
        "nested1": [1,2,3],
        "nested2": input.data.key1
      }
    },
    "type": "test.response.type",
  };

  return newEvent;
}
```

### Conditional Reply

Conditionals can be used for a range of cases.
In this example the value of a field is used to decide if a reply should be emitted.

```js
function handle(input) {
  if (input.data.key3 == true) {
    return;
  }

  newEvent = {
    data: { "hello": "world" },
    "type": "test.response.type",
  };

  return newEvent;
}
```

Conditionals can also be used to set different CloudEvent types, which might be useful to route events, or bring complex logic composing the outgoing data payload.

### Reply Using Incoming Event

When the output event shares structure with the incoming event, it is recommended to use the incoming parameter object as the reply.

```js
function handle(input) {
  // modify context type
  input.type = "test.response.type";

  // add context subject field
  input.subject = "InfraJS test";

  // add extended header to context
  input.environment = "production";

  // add new data field
  input.data.key4 = Date().toString();

  // replace data field
  input.data.key3 = false;

  // modify data field
  input.data.key2 = input.data["key2"] + ".extended";

  // delete data field
  delete input.data["key1"];

  return input;
}
```

### Using logs

Although the `console` object is available, the InfraJS script provides a `log` function that accepts a string message, and write logs in a format that can be processed along with the rest of logs produced at this target.

```js
function handle(input) {
  if (input.type == "not.wanted.type") {
    log("we received a non wanted type!");
    return;
  }

  input.type = "test.response.type";

  return input;
}
```

### Using built-in functions

Javascript core functions (ES5) can be used.
In this example we are preparing a JSON payload to be sent to the [HTTP Target][http], which requires a stringified `body` element.

```js
function handle(input) {
  body = {
    "search": [{ "key": input.data.key1 }]
  };

  event = {
    type: "searchservice.request",
    "data": { "body": JSON.stringify(body) }
  };

  return event;
}
```

[http]: ./http.md
[ce]: https://cloudevents.io
[ce-json]: https://github.com/cloudevents/spec/blob/v1.0/json-format.md
[ce-context-attributes]: https://github.com/cloudevents/spec/blob/v1.0/spec.md#context-attributes
[ce-data]: https://github.com/cloudevents/spec/blob/v1.0/spec.md#event-data