# Function overview

TriggerMesh functions are used to perform transformations on events using code written in Python, NodeJS, or Ruby. These are not a replacement for full blown FaaS services, but provide a lot of flexibility when transforming events, particularly to those familiar with one of the support languages.

For low-code style transformations in JSON, refer to [JSON Transformation](../jsontransformation.md).

!!! Info
    TriggerMesh functions with `tmctl` is a work in progress and not currently supported.

    Furthermore, note that TriggerMesh Functions are opinionated and simple. They are aimed to be used for event transformation and do not support external dependencies. Functions that may need external dependencies are best served with something like AWS Lambda or [Knative Functions](https://knative.dev/docs/functions/).
