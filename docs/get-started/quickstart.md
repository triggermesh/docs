# Quickstart

This quickstart will take you through the fastest and easiest way to start using Events with TriggerMesh. Start with the most basic hello world example, and expand from there.

## Hello world

**:material-numeric-1-box: Install `tmctl`**

`tmctl` is the TriggerMesh command line interface (CLI) that makes it easy to work with events from the safety of your office (or couch).

On Mac, try:

``` console
brew install triggermesh.com/brew/tmctl
```

For Linux:

```console
TODO
```

and last but not least Windows:

```console
TODO
```

**:material-numeric-2-box: Create a Broker**

Your Broker will reliably route and deliver events from producers to consumers:

```console
tmctl create broker foo
```

**:material-numeric-3-box: Send it an event**

Choose something nice to send to your Broker.

```console
tmctl send-event {"hello":"world"}
```

**:material-numeric-4-box: Watch events sent to the Broker**

Open a new terminal and type:

```console
tmctl watch
```

From the original terminal, send another event:

``` console
tmctl send-event {"hello":"world"}
```

You should see the event received by your Broker, something like this:

``` console
tmctl % tmctl watch
2022/11/08 16:35:33 Watching...
☁️  cloudevents.Event
Context Attributes,
  specversion: 1.0
  type: triggermesh-local-event
  source: triggermesh-cli
  id: 93dbed08-fb66-43d7-811b-2725f0e1d74e
  time: 2022-11-08T15:38:35.507676Z
  datacontenttype: application/json
Data,
  "{hello:world}"

```

:material-party-popper: Well done :material-party-popper:

You can keep `watch` running as it will come in handy later.

!!! warning "Doesn't work?"
    Copy any output and [PLEASE TELL US NOW](https://github.com/triggermesh/triggermesh/issues/new) :material-bug:.

## Send the Broker an event over HTTP

**:material-numeric-1-box: Create an HTTP endpoint**

HTTP is one of the easiest ways to send events to the Broker from which ever HTTP client you prefer ([Postman](https://www.postman.com/), Curl, [API Tester](https://chrome.google.com/webstore/detail/talend-api-tester-free-ed/aejoelaoggembcahagimdiliamlcdmfm)...). To do this, let's create a Webhook Source:

```console
tmctl create source webhook --eventType contact.created
```

We're declaring that events of type `contact.created` will be sent to this endpoint. This event type will be part of the event metadata as it flows through TriggerMesh, and can be used later on for routing.

**:material-numeric-2-box: Obtain the URL**

Find the Webhook Source URL:

```console
tmctl describe
```

The output should look something like this:

```console
tmctl % tmctl describe

Broker     Status
foo        online(http://localhost:59882)


Source                Kind              EventTypes          Status
foo-webhooksource     webhooksource     contact.created     online(http://localhost:59936)
```

As you can see, `tmctl describe` displays useful info about your current configuration. It lists all the sources, targets, and other components you've defined, and their properties.

Copy the webhooksource URL, in this case `http://localhost:59936` (this will vary depending on your environment).

**:material-numeric-3-box: Send an event over HTTP**

We'll use curl here. Remember to replace the endpoint URL with yours.

```console
curl -d {"http":"is easy"} http://localhost:59936
```

The event should show up in `tmctl watch`:

```console
2022/11/09 16:17:38 Watching...
☁️  cloudevents.Event
Context Attributes,
  specversion: 1.0
  type: contact.created
  source: local.foo-webhooksource
  id: 8bce0cd7-74a2-443b-b8ef-825473cc5c51
  time: 2022-11-09T15:37:00.435002345Z
  datacontenttype: application/x-www-form-urlencoded
Data,
  {http:is easy}
```

If you're paying attention, you'll notice that the values of the `type` and `source` attributes of your event have values that should mean something to you.

## Route events from the Broker to an HTTP service

**:material-numeric-1-box: Create a target**

The CloudEvents Target acts as an HTTP client that sends events in their original CloudEvents format which is used by TriggerMesh.

We're going to point to a service called Sockeye that you can use to view the events as they arrive at their destination.  

``` console
tmctl create target cloudevents --endpoint https://sockeye-tu4luqbmqq-uc.a.run.app/ --source foo-webhooksource
```

The optional `--source` parameter is used here to indicate that all events from the `foo-webhooksource`should be routed to our new target.

**:material-numeric-2-box: Send an event**

Now we can trigger our whole event flow by sending an event to our original Webhook Source, using the same command as before (just changing the payload a bit now):

```console
curl -d {"such event":"very send"} http://localhost:59936
```

If you open `https://sockeye-tu4luqbmqq-uc.a.run.app/` in your browser, events you send should start showing up there.

If you still have `tmctl watch` running (which you should), you'll also see events there when they hit the Broker, before passing on to Sockeye.
