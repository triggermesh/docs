<style>
.bs-sidebar {
display: none;
}
</style>
<p>Package:</p>
<ul>
<li>
<a href="#extensions.triggermesh.io%2fv1alpha1">extensions.triggermesh.io/v1alpha1</a>
</li>
</ul>
<h2 id="extensions.triggermesh.io/v1alpha1">extensions.triggermesh.io/v1alpha1</h2>
<p>
<p>Package v1alpha1 contains API Schema definitions for the extensions/v1alpha1 API group.</p>
</p>
Resource Types:
<ul><li>
<a href="#extensions.triggermesh.io/v1alpha1.Function">Function</a>
</li></ul>
<h3 id="extensions.triggermesh.io/v1alpha1.Function">Function
</h3>
<p>
<p>Function is an addressable object that executes function code.</p>
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
extensions.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code></br>
string
</td>
<td><code>Function</code></td>
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
<a href="#extensions.triggermesh.io/v1alpha1.FunctionSpec">
FunctionSpec
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>Spec holds the desired state of the Function (from the client).</p>
<br/>
<br/>
<table>
<tr>
<td>
<code>runtime</code></br>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>entrypoint</code></br>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>public</code></br>
<em>
bool
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>code</code></br>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>responseIsEvent</code></br>
<em>
bool
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>eventStore</code></br>
<em>
<a href="#extensions.triggermesh.io/v1alpha1.EventStoreConnection">
EventStoreConnection
</a>
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>ceOverrides</code></br>
<em>
<a href="https://pkg.go.dev/knative.dev/pkg/apis/duck/v1#CloudEventOverrides">
knative.dev/pkg/apis/duck/v1.CloudEventOverrides
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
<a href="#extensions.triggermesh.io/v1alpha1.FunctionStatus">
FunctionStatus
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>Status communicates the observed state of the Function (from the controller).</p>
</td>
</tr>
</tbody>
</table>
<h3 id="extensions.triggermesh.io/v1alpha1.EventStoreConnection">EventStoreConnection
</h3>
<p>
(<em>Appears on:</em>
<a href="#extensions.triggermesh.io/v1alpha1.FunctionSpec">FunctionSpec</a>)
</p>
<p>
<p>EventStoreConnection contains the data to connect to
an EventStore instance</p>
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
<code>uri</code></br>
<em>
string
</em>
</td>
<td>
<p>URI is the gRPC location to the EventStore</p>
</td>
</tr>
</tbody>
</table>
<h3 id="extensions.triggermesh.io/v1alpha1.FunctionSpec">FunctionSpec
</h3>
<p>
(<em>Appears on:</em>
<a href="#extensions.triggermesh.io/v1alpha1.Function">Function</a>)
</p>
<p>
<p>FunctionSpec holds the desired state of the Function Specification</p>
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
<code>runtime</code></br>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>entrypoint</code></br>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>public</code></br>
<em>
bool
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>code</code></br>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>responseIsEvent</code></br>
<em>
bool
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>eventStore</code></br>
<em>
<a href="#extensions.triggermesh.io/v1alpha1.EventStoreConnection">
EventStoreConnection
</a>
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>ceOverrides</code></br>
<em>
<a href="https://pkg.go.dev/knative.dev/pkg/apis/duck/v1#CloudEventOverrides">
knative.dev/pkg/apis/duck/v1.CloudEventOverrides
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
<h3 id="extensions.triggermesh.io/v1alpha1.FunctionStatus">FunctionStatus
</h3>
<p>
(<em>Appears on:</em>
<a href="#extensions.triggermesh.io/v1alpha1.Function">Function</a>)
</p>
<p>
<p>FunctionStatus communicates the observed state of the Function (from the controller).</p>
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
<code>address</code></br>
<em>
<a href="https://pkg.go.dev/knative.dev/pkg/apis/duck/v1#Addressable">
knative.dev/pkg/apis/duck/v1.Addressable
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>Address holds the information needed to connect this Function up to receive events.</p>
</td>
</tr>
</tbody>
</table>
<hr/>
<p><em>
Generated with <code>gen-crd-api-reference-docs</code>
on git commit <code>21ec533</code>.
</em></p>
