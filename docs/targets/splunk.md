# Event Target for Splunk

This event target receives arbitrary [CloudEvents][ce] over HTTP and sends them to a [Splunk HTTP Event Collector][hec]
in a [JSON format][ce-jsonformat].

## Prerequisite(s)

- Enable HTTP Event Collector Input
- HEC token

Consult the [Secrets](../guides/secrets.md) guide for more information about
how to add the HEC token as a secret.

## HTTP Event Collector Input

In order to be able to use the TriggerMesh event Target for Splunk, an administrator must:

1. Enable the [HTTP Event Collector][hec] data input in the Splunk installation.
1. Create a token for receiving data over HTTP.

To do so, open the Splunk web console, then navigate to **Settings > Data > Data inputs**.

![Splunk settings](../../assets/images/splunk-target/hec-1.png)

In the list of local inputs, click **HTTP Event Collector**.

![Data inputs](../../assets/images/splunk-target/hec-2.png)

Click **New token** in order to generate a new token with custom settings, then take note of the value of that token. The
default HEC token (`splunk_hec_token`) is also suitable for use with the TriggerMesh event Target for Splunk.

![](../../assets/images/splunk-target/hec-3.png)

This procedure is described in more detail in the Splunk documentation: [Set up and use HTTP Event Collector in Splunk
Web][hec].

## Deploying an Instance of the Target

Open the Bridge creation screen and add a Target of type `Splunk`.

![Adding a Splunk target](../../assets/images/splunk-target/create-bridge-1.png)

In the Target creation form, give a name to the event Target and add the following information:

- **HEC Endpoint**: URL of the HTTP Event Collector (HEC). This URL varies depending on the type of Splunk installation
  (Enterprise, self-service Cloud, managed Cloud). Only the scheme, hostname, and port (optionally) are evaluated, the
  URL path is trimmed if present.
- **HEC Token**: Reference to a [TriggerMesh secret](../guides/secrets.md) containing a token for authenticating requests against
  the HEC, as discussed in the [prerequisites](#prerequisites).
- [**Index**][index]: Name of the index to send events to. When undefined, events are sent to the default index defined
  in the HEC token's configuration.

![Splunk target form](../../assets/images/splunk-target/create-bridge-2.png)

After clicking the `Save` button, you will be taken back to the Bridge editor. Proceed to adding the remaining
components to the Bridge, then submit it.

![Bridge overview](../../assets/images/splunk-target/create-bridge-3.png)

After submitting the Bridge, and allowing for some configuration time, a green check mark on the main _Bridges_ page indicates that the Bridge with the Splunk Target was successfully created.

![Bridge status](../../assets/images/bridge-status-green.png)

New events should now be visible in the **Search & Reporting** app inside Splunk.

![Data summary](../../assets/images/splunk-target/search-1.png)
![Data search](../../assets/images/splunk-target/search-2.png)

For more information about using Splunk, please refer to the [Splunk documentation][docs].

## Event Types

The Splunk event Target can consume events of any type.

[ce]: https://cloudevents.io/
[ce-jsonformat]: https://github.com/cloudevents/spec/blob/v1.0/json-format.md
[hec]: https://docs.splunk.com/Documentation/Splunk/latest/Data/UsetheHTTPEventCollector
[index]: https://docs.splunk.com/Documentation/Splunk/latest/Indexer/Aboutindexesandindexers
[docs]: https://docs.splunk.com/
