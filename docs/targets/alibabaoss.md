# Event Target for Alibaba OSS 

This event target receives [CloudEvents][ce] over HTTP and sends them to [Alibaba OSS](https://www.alibabacloud.com/product/oss)
creating a new file containing the event data.

## Prerequisite(s)

- Alibaba Cloud account.
- The [Access Key ID and Secret Access Key](https://www.alibabacloud.com/help/faq-detail/142101.htm) associated to the account.

## Deploying an Instance of the Target

Open the Bridge creation screen and add a target of type `Alibaba OSS`.

In the Target creation form, give a name to the event Target and add the following information:

- **Secret**: Reference to a [TriggerMesh secret](../guides/secrets.md) containing the Access Key ID and Secret Access Key.
- **Endpoint**: The OSS [endpoint](https://www.alibabacloud.com/help/doc-detail/31834.html?spm=a2c5t.11065259.1996646101.searchclickresult.66795207QoTOLE).
- **Bucket**: The OSS [Bucket](https://www.alibabacloud.com/help/doc-detail/32135.html?spm=a2c5t.11065259.1996646101.searchclickresult.76164406aMCICT).

After clicking the `Save` button, you will be taken back to the Bridge editor. Proceed by adding the remaining
components to the Bridge, then submit it.

A ready status on the main _Bridges_ page indicates that the Alibaba OSS target is ready to accept events.

For more information about using Alibaba OSS, please refer to the [documentation](https://www.alibabacloud.com/help/product/31815.htm?spm=a3c0i.7950270.1834322160.3.5761ab91f9PlWp).

## Event Types
### Arbitrary
This target will consume arbitrary events and upload them into a table with the Cloudevent ID as the object key.

The response event type will contain the original event type with `.response` appended to the end. 

[ce]: https://cloudevents.io/
[ce-jsonformat]: https://github.com/cloudevents/spec/blob/v1.0/json-format.md