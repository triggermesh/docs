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
<tr>
<td>
<code>adapterOverrides</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#AdapterOverrides">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.AdapterOverrides
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>Adapter spec overrides parameters.</p>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<code>status</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#Status">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.Status
</a>
</em>
</td>
<td>
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
<tr>
<td>
<code>adapterOverrides</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#AdapterOverrides">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.AdapterOverrides
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>Adapter spec overrides parameters.</p>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<code>status</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#Status">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.Status
</a>
</em>
</td>
<td>
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
<p>FilterSpec defines the desired state of the component.</p>
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
<tr>
<td>
<code>adapterOverrides</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#AdapterOverrides">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.AdapterOverrides
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>Adapter spec overrides parameters.</p>
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
<p>SplitterSpec defines the desired state of the component.</p>
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
<tr>
<td>
<code>adapterOverrides</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#AdapterOverrides">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.AdapterOverrides
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>Adapter spec overrides parameters.</p>
</td>
</tr>
</tbody>
</table>
<hr/>
<p><em>
Generated with <code>gen-crd-api-reference-docs</code>
on git commit <code>688bc165</code>.
</em></p>
