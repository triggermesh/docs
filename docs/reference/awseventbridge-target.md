<style>
.bs-sidebar {
display: none;
}
</style>
<p>Packages:</p>
<ul>
<li>
<a href="#targets.triggermesh.io%2fv1alpha1">targets.triggermesh.io/v1alpha1</a>
</li>
</ul>
<h2 id="targets.triggermesh.io/v1alpha1">targets.triggermesh.io/v1alpha1</h2>
<p>
<p>Package v1alpha1 contains API Schema definitions for the targets/v1alpha1 API group.</p>
</p>
Resource Types:
<ul><li>
<a href="#targets.triggermesh.io/v1alpha1.AWSEventBridgeTarget">AWSEventBridgeTarget</a>
</li></ul>
<h3 id="targets.triggermesh.io/v1alpha1.AWSEventBridgeTarget">AWSEventBridgeTarget
</h3>
<p>
<p>AWSEventBridgeTarget is the Schema for the event target.</p>
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
targets.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code></br>
string
</td>
<td><code>AWSEventBridgeTarget</code></td>
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
<a href="#targets.triggermesh.io/v1alpha1.AWSEventBridgeTargetSpec">
AWSEventBridgeTargetSpec
</a>
</em>
</td>
<td>
<br/>
<br/>
<table>
<tr>
<td>
<code>accountID</code></br>
<em>
string
</em>
</td>
<td>
<p>ID of the AWS account to send events to.</p>
</td>
</tr>
<tr>
<td>
<code>region</code></br>
<em>
string
</em>
</td>
<td>
<p>Name of the AWS region where the partner event source is located.</p>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<code>status</code></br>
<em>
<a href="#targets.triggermesh.io/v1alpha1.AWSEventBridgeTargetStatus">
AWSEventBridgeTargetStatus
</a>
</em>
</td>
<td>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.AWSEventBridgeTargetSpec">AWSEventBridgeTargetSpec
</h3>
<p>
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.AWSEventBridgeTarget">AWSEventBridgeTarget</a>)
</p>
<p>
<p>AWSEventBridgeTargetSpec defines the desired state of the event target.</p>
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
<code>accountID</code></br>
<em>
string
</em>
</td>
<td>
<p>ID of the AWS account to send events to.</p>
</td>
</tr>
<tr>
<td>
<code>region</code></br>
<em>
string
</em>
</td>
<td>
<p>Name of the AWS region where the partner event source is located.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.AWSEventBridgeTargetStatus">AWSEventBridgeTargetStatus
</h3>
<p>
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.AWSEventBridgeTarget">AWSEventBridgeTarget</a>)
</p>
<p>
<p>AWSEventBridgeTargetStatus defines the observed state of the event target.</p>
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
<code>Status</code></br>
<em>
knative.dev/pkg/apis/duck/v1.Status
</em>
</td>
<td>
<p>
(Members of <code>Status</code> are embedded into this type.)
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
<tr>
<td>
<code>partnerEventSource</code></br>
<em>
<a href="#targets.triggermesh.io/v1alpha1.PartnerEventSource">
PartnerEventSource
</a>
</em>
</td>
<td>
<p>Description of the partner event source associated with the target.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.PartnerEventSource">PartnerEventSource
</h3>
<p>
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.AWSEventBridgeTargetStatus">AWSEventBridgeTargetStatus</a>)
</p>
<p>
<p>PartnerEventSource contains details about a partner event source.</p>
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
<code>name</code></br>
<em>
string
</em>
</td>
<td>
<p>Name of the partner event source</p>
</td>
</tr>
<tr>
<td>
<code>state</code></br>
<em>
string
</em>
</td>
<td>
<p>State of the partner event source</p>
</td>
</tr>
</tbody>
</table>
<hr/>
<p><em>
Generated with <code>gen-crd-api-reference-docs</code>
on git commit <code>c4da90f</code>.
</em></p>
