<style>
.bs-sidebar {
display: none;
}
</style>
<p>Package:</p>
<ul>
<li>
<a href="#routing.triggermesh.io%2fv1alpha1">routing.triggermesh.io/v1alpha1</a>
</li>
</ul>
<h2 id="routing.triggermesh.io/v1alpha1">routing.triggermesh.io/v1alpha1</h2>
<p>
<p>Package v1alpha1 contains API Schema definitions for the routing/v1alpha1 API group.</p>
</p>
Resource Types:
<ul><li>
<a href="#routing.triggermesh.io/v1alpha1.Filter">Filter</a>
</li><li>
<a href="#routing.triggermesh.io/v1alpha1.Splitter">Splitter</a>
</li></ul>
<h3 id="routing.triggermesh.io/v1alpha1.Filter">Filter
</h3>
<p>
<p>Filter is an addressable object that filters incoming events according
to provided Common Language Expression</p>
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
routing.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code></br>
string
</td>
<td><code>Filter</code></td>
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
<em>(Optional)</em>
Refer to the Kubernetes API documentation for the fields of the
<code>metadata</code> field.
</td>
</tr>
<tr>
<td>
<code>spec</code></br>
<em>
<a href="#routing.triggermesh.io/v1alpha1.FilterSpec">
FilterSpec
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>Spec holds the desired state of the Filter (from the client).</p>
<br/>
<br/>
<table>
<tr>
<td>
<code>expression</code></br>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>sink</code></br>
<em>
<a href="https://pkg.go.dev/knative.dev/pkg/apis/duck/v1#Destination">
knative.dev/pkg/apis/duck/v1.Destination
</a>
</em>
</td>
<td>
<p>Sink is a reference to an object that will resolve to a domain name to use as the sink.</p>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<code>status</code></br>
<em>
<a href="#routing.triggermesh.io/v1alpha1.RouterStatus">
RouterStatus
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>Status communicates the observed state of the Filter (from the controller).</p>
</td>
</tr>
</tbody>
</table>
<h3 id="routing.triggermesh.io/v1alpha1.Splitter">Splitter
</h3>
<p>
<p>Splitter is an addressable object that splits incoming events according
to provided specification.</p>
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
routing.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code></br>
string
</td>
<td><code>Splitter</code></td>
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
<em>(Optional)</em>
Refer to the Kubernetes API documentation for the fields of the
<code>metadata</code> field.
</td>
</tr>
<tr>
<td>
<code>spec</code></br>
<em>
<a href="#routing.triggermesh.io/v1alpha1.SplitterSpec">
SplitterSpec
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>Spec holds the desired state of the Splitter (from the client).</p>
<br/>
<br/>
<table>
<tr>
<td>
<code>path</code></br>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>ceContext</code></br>
<em>
<a href="#routing.triggermesh.io/v1alpha1.CloudEventContext">
CloudEventContext
</a>
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>sink</code></br>
<em>
<a href="https://pkg.go.dev/knative.dev/pkg/apis/duck/v1#Destination">
knative.dev/pkg/apis/duck/v1.Destination
</a>
</em>
</td>
<td>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<code>status</code></br>
<em>
<a href="#routing.triggermesh.io/v1alpha1.RouterStatus">
RouterStatus
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>Status communicates the observed state of the Splitter (from the controller).</p>
</td>
</tr>
</tbody>
</table>
<h3 id="routing.triggermesh.io/v1alpha1.CloudEventContext">CloudEventContext
</h3>
<p>
(<em>Appears on:</em>
<a href="#routing.triggermesh.io/v1alpha1.SplitterSpec">SplitterSpec</a>)
</p>
<p>
<p>CloudEventContext declares context attributes that will be propagated to resulting events.</p>
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
<code>type</code></br>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>source</code></br>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>extensions</code></br>
<em>
map[string]string
</em>
</td>
<td>
</td>
</tr>
</tbody>
</table>
<h3 id="routing.triggermesh.io/v1alpha1.FilterSpec">FilterSpec
</h3>
<p>
(<em>Appears on:</em>
<a href="#routing.triggermesh.io/v1alpha1.Filter">Filter</a>)
</p>
<p>
<p>FilterSpec contains CEL expression string and the destination sink</p>
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
<code>expression</code></br>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>sink</code></br>
<em>
<a href="https://pkg.go.dev/knative.dev/pkg/apis/duck/v1#Destination">
knative.dev/pkg/apis/duck/v1.Destination
</a>
</em>
</td>
<td>
<p>Sink is a reference to an object that will resolve to a domain name to use as the sink.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="routing.triggermesh.io/v1alpha1.Router">Router
</h3>
<p>
<p>Router is implemented by all Routing types.</p>
</p>
<h3 id="routing.triggermesh.io/v1alpha1.RouterStatus">RouterStatus
</h3>
<p>
(<em>Appears on:</em>
<a href="#routing.triggermesh.io/v1alpha1.Filter">Filter</a>, 
<a href="#routing.triggermesh.io/v1alpha1.Splitter">Splitter</a>, 
<a href="#routing.triggermesh.io/v1alpha1.RouterStatusManager">RouterStatusManager</a>)
</p>
<p>
<p>RouterStatus defines the observed state of an event source.</p>
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
<a href="https://pkg.go.dev/knative.dev/pkg/apis/duck/v1#SourceStatus">
knative.dev/pkg/apis/duck/v1.SourceStatus
</a>
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
<a href="https://pkg.go.dev/knative.dev/pkg/apis/duck/v1#AddressStatus">
knative.dev/pkg/apis/duck/v1.AddressStatus
</a>
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
<h3 id="routing.triggermesh.io/v1alpha1.RouterStatusManager">RouterStatusManager
</h3>
<p>
<p>RouterStatusManager manages the status of routers.</p>
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
<code>RouterStatus</code></br>
<em>
<a href="#routing.triggermesh.io/v1alpha1.RouterStatus">
RouterStatus
</a>
</em>
</td>
<td>
</td>
</tr>
</tbody>
</table>
<h3 id="routing.triggermesh.io/v1alpha1.SplitterSpec">SplitterSpec
</h3>
<p>
(<em>Appears on:</em>
<a href="#routing.triggermesh.io/v1alpha1.Splitter">Splitter</a>)
</p>
<p>
<p>SplitterSpec holds the desired state of the Splitter.</p>
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
<code>path</code></br>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>ceContext</code></br>
<em>
<a href="#routing.triggermesh.io/v1alpha1.CloudEventContext">
CloudEventContext
</a>
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>sink</code></br>
<em>
<a href="https://pkg.go.dev/knative.dev/pkg/apis/duck/v1#Destination">
knative.dev/pkg/apis/duck/v1.Destination
</a>
</em>
</td>
<td>
</td>
</tr>
</tbody>
</table>
<h3 id="routing.triggermesh.io/v1alpha1.ValueFromField">ValueFromField
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
<hr/>
<p><em>
Generated with <code>gen-crd-api-reference-docs</code>
on git commit <code>8c96ae2</code>.
</em></p>
