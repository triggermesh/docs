<style>
.bs-sidebar {
display: none;
}
</style>
<p>Packages:</p>
<ul>
<li>
<a href="#sources.triggermesh.io%2fv1alpha1">sources.triggermesh.io/v1alpha1</a>
</li>
</ul>
<h2 id="sources.triggermesh.io/v1alpha1">sources.triggermesh.io/v1alpha1</h2>
<p>
<p>Package v1alpha1 contains API Schema definitions for the sources/v1alpha1 API group.</p>
</p>
Resource Types:
<ul><li>
<a href="#sources.triggermesh.io/v1alpha1.HTTPSource">HTTPSource</a>
</li><li>
<a href="#sources.triggermesh.io/v1alpha1.SlackSource">SlackSource</a>
</li><li>
<a href="#sources.triggermesh.io/v1alpha1.ZendeskSource">ZendeskSource</a>
</li></ul>
<h3 id="sources.triggermesh.io/v1alpha1.HTTPSource">HTTPSource
</h3>
<p>
<p>HTTPSource is the schema for the event source.</p>
</p>
<table>
<thead>
<tr>
<th>Field</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td>
<code>apiVersion</code></br>
string</td>
<td>
<code>
sources.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code></br>
string
</td>
<td><code>HTTPSource</code></td>
</tr>
<tr>
<td>
<code>metadata</code></br>
<em>
<a href="https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.18/#objectmeta-v1-meta">
Kubernetes meta/v1.ObjectMeta
</a>
</em>
</td>
<td>
Refer to the Kubernetes API documentation for the fields of the
<code>metadata</code> field.
</td>
</tr>
<tr>
<td>
<code>spec</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.HTTPSourceSpec">
HTTPSourceSpec
</a>
</em>
</td>
<td>
<br/>
<br/>
<table>
<tr>
<td>
<code>SourceSpec</code></br>
<em>
knative.dev/pkg/apis/duck/v1.SourceSpec
</em>
</td>
<td>
<p>
(Members of <code>SourceSpec</code> are embedded into this type.)
</p>
<p>inherits duck/v1 SourceSpec, which currently provides:
* Sink - a reference to an object that will resolve to a domain name or
a URI directly to use as the sink.
* CloudEventOverrides - defines overrides to control the output format
and modifications of the event sent to the sink.</p>
</td>
</tr>
<tr>
<td>
<code>eventType</code></br>
<em>
string
</em>
</td>
<td>
<p>EventType for the event that will be generated.</p>
</td>
</tr>
<tr>
<td>
<code>eventSource</code></br>
<em>
string
</em>
</td>
<td>
<p>EventSource for the event that will be generated.</p>
</td>
</tr>
<tr>
<td>
<code>basicAuthUsername</code></br>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
<p>BasicAuthUsername used for basic authentication.</p>
</td>
</tr>
<tr>
<td>
<code>basicAuthPassword</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>BasicAuthPassword used for basic authentication.</p>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<code>status</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.EventSourceStatus">
EventSourceStatus
</a>
</em>
</td>
<td>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.SlackSource">SlackSource
</h3>
<p>
<p>SlackSource is the schema for the event source.</p>
</p>
<table>
<thead>
<tr>
<th>Field</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td>
<code>apiVersion</code></br>
string</td>
<td>
<code>
sources.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code></br>
string
</td>
<td><code>SlackSource</code></td>
</tr>
<tr>
<td>
<code>metadata</code></br>
<em>
<a href="https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.18/#objectmeta-v1-meta">
Kubernetes meta/v1.ObjectMeta
</a>
</em>
</td>
<td>
Refer to the Kubernetes API documentation for the fields of the
<code>metadata</code> field.
</td>
</tr>
<tr>
<td>
<code>spec</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.SlackSourceSpec">
SlackSourceSpec
</a>
</em>
</td>
<td>
<br/>
<br/>
<table>
<tr>
<td>
<code>SourceSpec</code></br>
<em>
knative.dev/pkg/apis/duck/v1.SourceSpec
</em>
</td>
<td>
<p>
(Members of <code>SourceSpec</code> are embedded into this type.)
</p>
<p>inherits duck/v1 SourceSpec, which currently provides:
* Sink - a reference to an object that will resolve to a domain name or
a URI directly to use as the sink.
* CloudEventOverrides - defines overrides to control the output format
and modifications of the event sent to the sink.</p>
</td>
</tr>
<tr>
<td>
<code>signingSecret</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>SigningSecret can be set to the value of Slack request signing secret
to authenticate callbacks.
See: <a href="https://api.slack.com/authentication/verifying-requests-from-slack">https://api.slack.com/authentication/verifying-requests-from-slack</a></p>
</td>
</tr>
<tr>
<td>
<code>appID</code></br>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
<p>AppID identifies the Slack application generating this event.
It helps identifying the App sourcing events when multiple Slack
applications shared an endpoint. See: <a href="https://api.slack.com/events-api">https://api.slack.com/events-api</a></p>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<code>status</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.EventSourceStatus">
EventSourceStatus
</a>
</em>
</td>
<td>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.ZendeskSource">ZendeskSource
</h3>
<p>
<p>ZendeskSource is the schema for the event source.</p>
</p>
<table>
<thead>
<tr>
<th>Field</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td>
<code>apiVersion</code></br>
string</td>
<td>
<code>
sources.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code></br>
string
</td>
<td><code>ZendeskSource</code></td>
</tr>
<tr>
<td>
<code>metadata</code></br>
<em>
<a href="https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.18/#objectmeta-v1-meta">
Kubernetes meta/v1.ObjectMeta
</a>
</em>
</td>
<td>
Refer to the Kubernetes API documentation for the fields of the
<code>metadata</code> field.
</td>
</tr>
<tr>
<td>
<code>spec</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.ZendeskSourceSpec">
ZendeskSourceSpec
</a>
</em>
</td>
<td>
<br/>
<br/>
<table>
<tr>
<td>
<code>SourceSpec</code></br>
<em>
knative.dev/pkg/apis/duck/v1.SourceSpec
</em>
</td>
<td>
<p>
(Members of <code>SourceSpec</code> are embedded into this type.)
</p>
<p>inherits duck/v1 SourceSpec, which currently provides:
* Sink - a reference to an object that will resolve to a domain name or
a URI directly to use as the sink.
* CloudEventOverrides - defines overrides to control the output format
and modifications of the event sent to the sink.</p>
</td>
</tr>
<tr>
<td>
<code>token</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>Token identifies the API token used for creating the proper credentials to interface with Zendesk
allowing the source to auto-register the webhook to authenticate callbacks.</p>
</td>
</tr>
<tr>
<td>
<code>email</code></br>
<em>
string
</em>
</td>
<td>
<p>Email identifies the email used for creating the proper credentials to interface with Zendesk
allowing the source to auto-register the webhook to authenticate callbacks.</p>
</td>
</tr>
<tr>
<td>
<code>webhookPassword</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>WebhookPassword used for basic authentication for events sent from Zendesk
to the adapter.</p>
</td>
</tr>
<tr>
<td>
<code>webhookUsername</code></br>
<em>
string
</em>
</td>
<td>
<p>WebhookUsername used for basic authentication for events sent from Zendesk
to the adapter.</p>
</td>
</tr>
<tr>
<td>
<code>subdomain</code></br>
<em>
string
</em>
</td>
<td>
<p>Subdomain identifies Zendesk subdomain</p>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<code>status</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.ZendeskSourceStatus">
ZendeskSourceStatus
</a>
</em>
</td>
<td>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.EventSource">EventSource
</h3>
<p>
<p>EventSource is implemented by all event source types.</p>
</p>
<h3 id="sources.triggermesh.io/v1alpha1.EventSourceStatus">EventSourceStatus
</h3>
<p>
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.HTTPSource">HTTPSource</a>, 
<a href="#sources.triggermesh.io/v1alpha1.SlackSource">SlackSource</a>, 
<a href="#sources.triggermesh.io/v1alpha1.EventSourceStatusManager">EventSourceStatusManager</a>, 
<a href="#sources.triggermesh.io/v1alpha1.ZendeskSourceStatus">ZendeskSourceStatus</a>)
</p>
<p>
<p>EventSourceStatus defines the observed state of an event source.</p>
</p>
<table>
<thead>
<tr>
<th>Field</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td>
<code>SourceStatus</code></br>
<em>
knative.dev/pkg/apis/duck/v1.SourceStatus
</em>
</td>
<td>
<p>
(Members of <code>SourceStatus</code> are embedded into this type.)
</p>
</td>
</tr>
<tr>
<td>
<code>AddressStatus</code></br>
<em>
knative.dev/pkg/apis/duck/v1.AddressStatus
</em>
</td>
<td>
<p>
(Members of <code>AddressStatus</code> are embedded into this type.)
</p>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.EventSourceStatusManager">EventSourceStatusManager
</h3>
<p>
<p>EventSourceStatusManager manages the status of event sources.</p>
</p>
<table>
<thead>
<tr>
<th>Field</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td>
<code>ConditionSet</code></br>
<em>
knative.dev/pkg/apis.ConditionSet
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>EventSourceStatus</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.EventSourceStatus">
EventSourceStatus
</a>
</em>
</td>
<td>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.HTTPSourceSpec">HTTPSourceSpec
</h3>
<p>
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.HTTPSource">HTTPSource</a>)
</p>
<p>
<p>HTTPSourceSpec defines the desired state of the event source.</p>
</p>
<table>
<thead>
<tr>
<th>Field</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td>
<code>SourceSpec</code></br>
<em>
knative.dev/pkg/apis/duck/v1.SourceSpec
</em>
</td>
<td>
<p>
(Members of <code>SourceSpec</code> are embedded into this type.)
</p>
<p>inherits duck/v1 SourceSpec, which currently provides:
* Sink - a reference to an object that will resolve to a domain name or
a URI directly to use as the sink.
* CloudEventOverrides - defines overrides to control the output format
and modifications of the event sent to the sink.</p>
</td>
</tr>
<tr>
<td>
<code>eventType</code></br>
<em>
string
</em>
</td>
<td>
<p>EventType for the event that will be generated.</p>
</td>
</tr>
<tr>
<td>
<code>eventSource</code></br>
<em>
string
</em>
</td>
<td>
<p>EventSource for the event that will be generated.</p>
</td>
</tr>
<tr>
<td>
<code>basicAuthUsername</code></br>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
<p>BasicAuthUsername used for basic authentication.</p>
</td>
</tr>
<tr>
<td>
<code>basicAuthPassword</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>BasicAuthPassword used for basic authentication.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.SecretValueFromSource">SecretValueFromSource
</h3>
<p>
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.HTTPSourceSpec">HTTPSourceSpec</a>, 
<a href="#sources.triggermesh.io/v1alpha1.SlackSourceSpec">SlackSourceSpec</a>, 
<a href="#sources.triggermesh.io/v1alpha1.ZendeskSourceSpec">ZendeskSourceSpec</a>)
</p>
<p>
<p>SecretValueFromSource represents the source of a secret value</p>
</p>
<table>
<thead>
<tr>
<th>Field</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td>
<code>secretKeyRef</code></br>
<em>
<a href="https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.18/#secretkeyselector-v1-core">
Kubernetes core/v1.SecretKeySelector
</a>
</em>
</td>
<td>
<p>The Secret key to select from.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.SlackSourceSpec">SlackSourceSpec
</h3>
<p>
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.SlackSource">SlackSource</a>)
</p>
<p>
<p>SlackSourceSpec defines the desired state of the event source.</p>
</p>
<table>
<thead>
<tr>
<th>Field</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td>
<code>SourceSpec</code></br>
<em>
knative.dev/pkg/apis/duck/v1.SourceSpec
</em>
</td>
<td>
<p>
(Members of <code>SourceSpec</code> are embedded into this type.)
</p>
<p>inherits duck/v1 SourceSpec, which currently provides:
* Sink - a reference to an object that will resolve to a domain name or
a URI directly to use as the sink.
* CloudEventOverrides - defines overrides to control the output format
and modifications of the event sent to the sink.</p>
</td>
</tr>
<tr>
<td>
<code>signingSecret</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>SigningSecret can be set to the value of Slack request signing secret
to authenticate callbacks.
See: <a href="https://api.slack.com/authentication/verifying-requests-from-slack">https://api.slack.com/authentication/verifying-requests-from-slack</a></p>
</td>
</tr>
<tr>
<td>
<code>appID</code></br>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
<p>AppID identifies the Slack application generating this event.
It helps identifying the App sourcing events when multiple Slack
applications shared an endpoint. See: <a href="https://api.slack.com/events-api">https://api.slack.com/events-api</a></p>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.ValueFromField">ValueFromField
</h3>
<p>
<p>ValueFromField is a struct field that can have its value either defined
explicitly or sourced from another entity.</p>
</p>
<table>
<thead>
<tr>
<th>Field</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td>
<code>value</code></br>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
<p>Field value.</p>
</td>
</tr>
<tr>
<td>
<code>valueFromSecret</code></br>
<em>
<a href="https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.18/#secretkeyselector-v1-core">
Kubernetes core/v1.SecretKeySelector
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>Field value from a Kubernetes Secret.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.ZendeskSourceSpec">ZendeskSourceSpec
</h3>
<p>
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.ZendeskSource">ZendeskSource</a>)
</p>
<p>
<p>ZendeskSourceSpec defines the desired state of the event source.</p>
</p>
<table>
<thead>
<tr>
<th>Field</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td>
<code>SourceSpec</code></br>
<em>
knative.dev/pkg/apis/duck/v1.SourceSpec
</em>
</td>
<td>
<p>
(Members of <code>SourceSpec</code> are embedded into this type.)
</p>
<p>inherits duck/v1 SourceSpec, which currently provides:
* Sink - a reference to an object that will resolve to a domain name or
a URI directly to use as the sink.
* CloudEventOverrides - defines overrides to control the output format
and modifications of the event sent to the sink.</p>
</td>
</tr>
<tr>
<td>
<code>token</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>Token identifies the API token used for creating the proper credentials to interface with Zendesk
allowing the source to auto-register the webhook to authenticate callbacks.</p>
</td>
</tr>
<tr>
<td>
<code>email</code></br>
<em>
string
</em>
</td>
<td>
<p>Email identifies the email used for creating the proper credentials to interface with Zendesk
allowing the source to auto-register the webhook to authenticate callbacks.</p>
</td>
</tr>
<tr>
<td>
<code>webhookPassword</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>WebhookPassword used for basic authentication for events sent from Zendesk
to the adapter.</p>
</td>
</tr>
<tr>
<td>
<code>webhookUsername</code></br>
<em>
string
</em>
</td>
<td>
<p>WebhookUsername used for basic authentication for events sent from Zendesk
to the adapter.</p>
</td>
</tr>
<tr>
<td>
<code>subdomain</code></br>
<em>
string
</em>
</td>
<td>
<p>Subdomain identifies Zendesk subdomain</p>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.ZendeskSourceStatus">ZendeskSourceStatus
</h3>
<p>
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.ZendeskSource">ZendeskSource</a>)
</p>
<p>
<p>ZendeskSourceStatus defines the observed state of the event source.</p>
</p>
<table>
<thead>
<tr>
<th>Field</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td>
<code>EventSourceStatus</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.EventSourceStatus">
EventSourceStatus
</a>
</em>
</td>
<td>
<p>
(Members of <code>EventSourceStatus</code> are embedded into this type.)
</p>
</td>
</tr>
</tbody>
</table>
<hr/>
<p><em>
Generated with <code>gen-crd-api-reference-docs</code>
on git commit <code>6d94e43</code>.
</em></p>
