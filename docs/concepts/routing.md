To route events, TriggerMesh makes use of the Knative Eventing primitives (e.g Brokers, Channels, Triggers).

A channel enables asynchronous data communication between event senders and event receivers.

A router consumes events which it republishes to one or more event receivers depending on a set of conditions, without modifying the content of the message. Filters fall into this category.
