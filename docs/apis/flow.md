<style>
.bs-sidebar {
display: none;
}
</style>
<p>Package:</p>
<ul>
<li>
<a href="#flow.triggermesh.io%2fv1alpha1">flow.triggermesh.io/v1alpha1</a>
</li>
</ul>
<h2 id="flow.triggermesh.io/v1alpha1">flow.triggermesh.io/v1alpha1</h2>
<p>
<p>Package v1alpha1 contains API Schema definitions for the flow/v1alpha1 API group.</p>
</p>
Resource Types:
<ul><li>
<a href="#flow.triggermesh.io/v1alpha1.Transformation">Transformation</a>
</li></ul>
<h3 id="flow.triggermesh.io/v1alpha1.Transformation">Transformation
</h3>
<p>
<p>Transformation is a Knative abstraction that encapsulates the interface by which Knative
components express a desire to have a particular image cached.</p>
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
flow.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code></br>
string
</td>
<td><code>Transformation</code></td>
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
<a href="#flow.triggermesh.io/v1alpha1.TransformationSpec">
TransformationSpec
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>Spec holds the desired state of the Transformation (from the client).</p>
<br/>
<br/>
<table>
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
<p>Sink is a reference to an object that will resolve to a uri to use as the sink.</p>
</td>
</tr>
<tr>
<td>
<code>context</code></br>
<em>
<a href="#flow.triggermesh.io/v1alpha1.Transform">
[]Transform
</a>
</em>
</td>
<td>
<p>Context contains Transformations that must be applied on CE Context</p>
</td>
</tr>
<tr>
<td>
<code>data</code></br>
<em>
<a href="#flow.triggermesh.io/v1alpha1.Transform">
[]Transform
</a>
</em>
</td>
<td>
<p>Data contains Transformations that must be applied on CE Data</p>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<code>status</code></br>
<em>
<a href="#flow.triggermesh.io/v1alpha1.TransformationStatus">
TransformationStatus
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>Status communicates the observed state of the Transformation (from the controller).</p>
</td>
</tr>
</tbody>
</table>
<h3 id="flow.triggermesh.io/v1alpha1.Path">Path
</h3>
<p>
(<em>Appears on:</em>
<a href="#flow.triggermesh.io/v1alpha1.Transform">Transform</a>)
</p>
<p>
<p>Path is a key-value pair that represents JSON object path</p>
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
<code>key</code></br>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>value</code></br>
<em>
string
</em>
</td>
<td>
</td>
</tr>
</tbody>
</table>
<h3 id="flow.triggermesh.io/v1alpha1.Transform">Transform
</h3>
<p>
(<em>Appears on:</em>
<a href="#flow.triggermesh.io/v1alpha1.TransformationSpec">TransformationSpec</a>)
</p>
<p>
<p>Transform describes transformation schemes for different CE types.</p>
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
<code>operation</code></br>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>paths</code></br>
<em>
<a href="#flow.triggermesh.io/v1alpha1.Path">
[]Path
</a>
</em>
</td>
<td>
</td>
</tr>
</tbody>
</table>
<h3 id="flow.triggermesh.io/v1alpha1.TransformationSpec">TransformationSpec
</h3>
<p>
(<em>Appears on:</em>
<a href="#flow.triggermesh.io/v1alpha1.Transformation">Transformation</a>)
</p>
<p>
<p>TransformationSpec holds the desired state of the Transformation (from the client).</p>
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
<code>sink</code></br>
<em>
<a href="https://pkg.go.dev/knative.dev/pkg/apis/duck/v1#Destination">
knative.dev/pkg/apis/duck/v1.Destination
</a>
</em>
</td>
<td>
<p>Sink is a reference to an object that will resolve to a uri to use as the sink.</p>
</td>
</tr>
<tr>
<td>
<code>context</code></br>
<em>
<a href="#flow.triggermesh.io/v1alpha1.Transform">
[]Transform
</a>
</em>
</td>
<td>
<p>Context contains Transformations that must be applied on CE Context</p>
</td>
</tr>
<tr>
<td>
<code>data</code></br>
<em>
<a href="#flow.triggermesh.io/v1alpha1.Transform">
[]Transform
</a>
</em>
</td>
<td>
<p>Data contains Transformations that must be applied on CE Data</p>
</td>
</tr>
</tbody>
</table>
<h3 id="flow.triggermesh.io/v1alpha1.TransformationStatus">TransformationStatus
</h3>
<p>
(<em>Appears on:</em>
<a href="#flow.triggermesh.io/v1alpha1.Transformation">Transformation</a>)
</p>
<p>
<p>TransformationStatus communicates the observed state of the Transformation (from the controller).</p>
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
<p>Address holds the information needed to connect this Addressable up to receive events.</p>
</td>
</tr>
</tbody>
</table>
<hr/>
<p><em>
Generated with <code>gen-crd-api-reference-docs</code>
on git commit <code>c233d8c</code>.
</em></p>
