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
<a href="#flow.triggermesh.io/v1alpha1.DataWeaveTransformation">DataWeaveTransformation</a>
</li><li>
<a href="#flow.triggermesh.io/v1alpha1.JQTransformation">JQTransformation</a>
</li><li>
<a href="#flow.triggermesh.io/v1alpha1.Synchronizer">Synchronizer</a>
</li><li>
<a href="#flow.triggermesh.io/v1alpha1.Transformation">Transformation</a>
</li><li>
<a href="#flow.triggermesh.io/v1alpha1.XMLToJSONTransformation">XMLToJSONTransformation</a>
</li><li>
<a href="#flow.triggermesh.io/v1alpha1.XSLTTransformation">XSLTTransformation</a>
</li></ul>
<h3 id="flow.triggermesh.io/v1alpha1.DataWeaveTransformation">DataWeaveTransformation
</h3>
<p>
<p>DataWeaveTransformation is the Schema for an DataWeave transformation target.</p>
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
<td><code>DataWeaveTransformation</code></td>
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
<a href="#flow.triggermesh.io/v1alpha1.DataWeaveTransformationSpec">
DataWeaveTransformationSpec
</a>
</em>
</td>
<td>
<br/>
<br/>
<table>
<tr>
<td>
<code>dwSpell</code></br>
<em>
<a href="#flow.triggermesh.io/v1alpha1.ValueFromField">
ValueFromField
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>DataWeave spell that will be used by default for transformation.</p>
</td>
</tr>
<tr>
<td>
<code>allowPerEventDwSpell</code></br>
<em>
bool
</em>
</td>
<td>
<em>(Optional)</em>
<p>Whether the default DwSpell can be overriden at each event</p>
</td>
</tr>
<tr>
<td>
<code>inputContentType</code></br>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
<p>Content type for the incoming transformation.</p>
</td>
</tr>
<tr>
<td>
<code>outputContentType</code></br>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
<p>Content type for transformation Output.</p>
</td>
</tr>
<tr>
<td>
<code>SourceSpec</code></br>
<em>
<a href="https://pkg.go.dev/knative.dev/pkg/apis/duck/v1#SourceSpec">
knative.dev/pkg/apis/duck/v1.SourceSpec
</a>
</em>
</td>
<td>
<p>
(Members of <code>SourceSpec</code> are embedded into this type.)
</p>
<p>Support sending to an event sink instead of replying.</p>
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
<h3 id="flow.triggermesh.io/v1alpha1.JQTransformation">JQTransformation
</h3>
<p>
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
<td><code>JQTransformation</code></td>
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
<a href="#flow.triggermesh.io/v1alpha1.JQTransformationSpec">
JQTransformationSpec
</a>
</em>
</td>
<td>
<br/>
<br/>
<table>
<tr>
<td>
<code>query</code></br>
<em>
string
</em>
</td>
<td>
<p>The query that gets passed to the JQ library</p>
</td>
</tr>
<tr>
<td>
<code>eventOptions</code></br>
<em>
<a href="#flow.triggermesh.io/v1alpha1.EventOptions">
EventOptions
</a>
</em>
</td>
<td>
<p>EventOptions for targets</p>
</td>
</tr>
<tr>
<td>
<code>SourceSpec</code></br>
<em>
<a href="https://pkg.go.dev/knative.dev/pkg/apis/duck/v1#SourceSpec">
knative.dev/pkg/apis/duck/v1.SourceSpec
</a>
</em>
</td>
<td>
<p>
(Members of <code>SourceSpec</code> are embedded into this type.)
</p>
<p>Support sending to an event sink instead of replying.</p>
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
<h3 id="flow.triggermesh.io/v1alpha1.Synchronizer">Synchronizer
</h3>
<p>
<p>Synchronizer is the Schema for the Synchronizer target.</p>
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
<td><code>Synchronizer</code></td>
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
<a href="#flow.triggermesh.io/v1alpha1.SynchronizerSpec">
SynchronizerSpec
</a>
</em>
</td>
<td>
<br/>
<br/>
<table>
<tr>
<td>
<code>correlationKey</code></br>
<em>
<a href="#flow.triggermesh.io/v1alpha1.Correlation">
Correlation
</a>
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>response</code></br>
<em>
<a href="#flow.triggermesh.io/v1alpha1.Response">
Response
</a>
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>SourceSpec</code></br>
<em>
<a href="https://pkg.go.dev/knative.dev/pkg/apis/duck/v1#SourceSpec">
knative.dev/pkg/apis/duck/v1.SourceSpec
</a>
</em>
</td>
<td>
<p>
(Members of <code>SourceSpec</code> are embedded into this type.)
</p>
<p>Support sending to an event sink instead of replying.</p>
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
<h3 id="flow.triggermesh.io/v1alpha1.Transformation">Transformation
</h3>
<p>
<p>Transformation allows to declaratively perform data transformations on CloudEvents.</p>
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
<br/>
<br/>
<table>
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
<tr>
<td>
<code>SourceSpec</code></br>
<em>
<a href="https://pkg.go.dev/knative.dev/pkg/apis/duck/v1#SourceSpec">
knative.dev/pkg/apis/duck/v1.SourceSpec
</a>
</em>
</td>
<td>
<p>
(Members of <code>SourceSpec</code> are embedded into this type.)
</p>
<p>Support sending to an event sink instead of replying.</p>
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
<h3 id="flow.triggermesh.io/v1alpha1.XMLToJSONTransformation">XMLToJSONTransformation
</h3>
<p>
<p>XMLToJSONTransformation is the schema for the event transformer.</p>
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
<td><code>XMLToJSONTransformation</code></td>
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
<a href="#flow.triggermesh.io/v1alpha1.XMLToJSONTransformationSpec">
XMLToJSONTransformationSpec
</a>
</em>
</td>
<td>
<br/>
<br/>
<table>
<tr>
<td>
<code>eventOptions</code></br>
<em>
<a href="#flow.triggermesh.io/v1alpha1.EventOptions">
EventOptions
</a>
</em>
</td>
<td>
<p>EventOptions for targets</p>
</td>
</tr>
<tr>
<td>
<code>SourceSpec</code></br>
<em>
<a href="https://pkg.go.dev/knative.dev/pkg/apis/duck/v1#SourceSpec">
knative.dev/pkg/apis/duck/v1.SourceSpec
</a>
</em>
</td>
<td>
<p>
(Members of <code>SourceSpec</code> are embedded into this type.)
</p>
<p>Support sending to an event sink instead of replying.</p>
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
<h3 id="flow.triggermesh.io/v1alpha1.XSLTTransformation">XSLTTransformation
</h3>
<p>
<p>XSLTTransformation is the Schema for an XSLT transformation target.</p>
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
<td><code>XSLTTransformation</code></td>
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
<a href="#flow.triggermesh.io/v1alpha1.XSLTTransformationSpec">
XSLTTransformationSpec
</a>
</em>
</td>
<td>
<br/>
<br/>
<table>
<tr>
<td>
<code>xslt</code></br>
<em>
<a href="#flow.triggermesh.io/v1alpha1.ValueFromField">
ValueFromField
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>XSLT document that will be used by default for transformation.
Can be omited if the XSLT is informed at each event.</p>
</td>
</tr>
<tr>
<td>
<code>allowPerEventXSLT</code></br>
<em>
bool
</em>
</td>
<td>
<em>(Optional)</em>
<p>Whether the default XSLT can be overriden at each event</p>
</td>
</tr>
<tr>
<td>
<code>SourceSpec</code></br>
<em>
<a href="https://pkg.go.dev/knative.dev/pkg/apis/duck/v1#SourceSpec">
knative.dev/pkg/apis/duck/v1.SourceSpec
</a>
</em>
</td>
<td>
<p>
(Members of <code>SourceSpec</code> are embedded into this type.)
</p>
<p>Support sending to an event sink instead of replying.</p>
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
<h3 id="flow.triggermesh.io/v1alpha1.Correlation">Correlation
</h3>
<p>
(<em>Appears on:</em>
<a href="#flow.triggermesh.io/v1alpha1.SynchronizerSpec">SynchronizerSpec</a>)
</p>
<p>
<p>Correlation holds the request-response matching parameters.</p>
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
<code>attribute</code></br>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>length</code></br>
<em>
int
</em>
</td>
<td>
</td>
</tr>
</tbody>
</table>
<h3 id="flow.triggermesh.io/v1alpha1.DataWeaveTransformationSpec">DataWeaveTransformationSpec
</h3>
<p>
(<em>Appears on:</em>
<a href="#flow.triggermesh.io/v1alpha1.DataWeaveTransformation">DataWeaveTransformation</a>)
</p>
<p>
<p>DataWeaveTransformationSpec defines the desired state of the component.</p>
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
<code>dwSpell</code></br>
<em>
<a href="#flow.triggermesh.io/v1alpha1.ValueFromField">
ValueFromField
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>DataWeave spell that will be used by default for transformation.</p>
</td>
</tr>
<tr>
<td>
<code>allowPerEventDwSpell</code></br>
<em>
bool
</em>
</td>
<td>
<em>(Optional)</em>
<p>Whether the default DwSpell can be overriden at each event</p>
</td>
</tr>
<tr>
<td>
<code>inputContentType</code></br>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
<p>Content type for the incoming transformation.</p>
</td>
</tr>
<tr>
<td>
<code>outputContentType</code></br>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
<p>Content type for transformation Output.</p>
</td>
</tr>
<tr>
<td>
<code>SourceSpec</code></br>
<em>
<a href="https://pkg.go.dev/knative.dev/pkg/apis/duck/v1#SourceSpec">
knative.dev/pkg/apis/duck/v1.SourceSpec
</a>
</em>
</td>
<td>
<p>
(Members of <code>SourceSpec</code> are embedded into this type.)
</p>
<p>Support sending to an event sink instead of replying.</p>
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
<h3 id="flow.triggermesh.io/v1alpha1.EventOptions">EventOptions
</h3>
<p>
(<em>Appears on:</em>
<a href="#flow.triggermesh.io/v1alpha1.JQTransformationSpec">JQTransformationSpec</a>, 
<a href="#flow.triggermesh.io/v1alpha1.XMLToJSONTransformationSpec">XMLToJSONTransformationSpec</a>)
</p>
<p>
<p>EventOptions modifies CloudEvents management at Targets.</p>
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
<code>payloadPolicy</code></br>
<em>
github.com/triggermesh/triggermesh/pkg/targets/adapter/cloudevents.PayloadPolicy
</em>
</td>
<td>
<em>(Optional)</em>
<p>PayloadPolicy indicates if replies from the target should include
a payload if available. Possible values are:</p>
<ul>
<li>always: will return a with the reply payload if avaliable.</li>
<li>errors: will only reply with payload in case of an error.</li>
<li>never: will not reply with payload.</li>
</ul>
</td>
</tr>
</tbody>
</table>
<h3 id="flow.triggermesh.io/v1alpha1.JQTransformationSpec">JQTransformationSpec
</h3>
<p>
(<em>Appears on:</em>
<a href="#flow.triggermesh.io/v1alpha1.JQTransformation">JQTransformation</a>)
</p>
<p>
<p>JQTransformationSpec defines the desired state of the component.</p>
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
<code>query</code></br>
<em>
string
</em>
</td>
<td>
<p>The query that gets passed to the JQ library</p>
</td>
</tr>
<tr>
<td>
<code>eventOptions</code></br>
<em>
<a href="#flow.triggermesh.io/v1alpha1.EventOptions">
EventOptions
</a>
</em>
</td>
<td>
<p>EventOptions for targets</p>
</td>
</tr>
<tr>
<td>
<code>SourceSpec</code></br>
<em>
<a href="https://pkg.go.dev/knative.dev/pkg/apis/duck/v1#SourceSpec">
knative.dev/pkg/apis/duck/v1.SourceSpec
</a>
</em>
</td>
<td>
<p>
(Members of <code>SourceSpec</code> are embedded into this type.)
</p>
<p>Support sending to an event sink instead of replying.</p>
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
<h3 id="flow.triggermesh.io/v1alpha1.Response">Response
</h3>
<p>
(<em>Appears on:</em>
<a href="#flow.triggermesh.io/v1alpha1.SynchronizerSpec">SynchronizerSpec</a>)
</p>
<p>
<p>Response defines the response handling configuration.</p>
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
<code>timeout</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis#Duration">
github.com/triggermesh/triggermesh/pkg/apis.Duration
</a>
</em>
</td>
<td>
</td>
</tr>
</tbody>
</table>
<h3 id="flow.triggermesh.io/v1alpha1.SynchronizerSpec">SynchronizerSpec
</h3>
<p>
(<em>Appears on:</em>
<a href="#flow.triggermesh.io/v1alpha1.Synchronizer">Synchronizer</a>)
</p>
<p>
<p>SynchronizerSpec defines the desired state of the component.</p>
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
<code>correlationKey</code></br>
<em>
<a href="#flow.triggermesh.io/v1alpha1.Correlation">
Correlation
</a>
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>response</code></br>
<em>
<a href="#flow.triggermesh.io/v1alpha1.Response">
Response
</a>
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>SourceSpec</code></br>
<em>
<a href="https://pkg.go.dev/knative.dev/pkg/apis/duck/v1#SourceSpec">
knative.dev/pkg/apis/duck/v1.SourceSpec
</a>
</em>
</td>
<td>
<p>
(Members of <code>SourceSpec</code> are embedded into this type.)
</p>
<p>Support sending to an event sink instead of replying.</p>
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
<p>TransformationSpec defines the desired state of the component.</p>
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
<tr>
<td>
<code>SourceSpec</code></br>
<em>
<a href="https://pkg.go.dev/knative.dev/pkg/apis/duck/v1#SourceSpec">
knative.dev/pkg/apis/duck/v1.SourceSpec
</a>
</em>
</td>
<td>
<p>
(Members of <code>SourceSpec</code> are embedded into this type.)
</p>
<p>Support sending to an event sink instead of replying.</p>
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
<h3 id="flow.triggermesh.io/v1alpha1.ValueFromField">ValueFromField
</h3>
<p>
(<em>Appears on:</em>
<a href="#flow.triggermesh.io/v1alpha1.DataWeaveTransformationSpec">DataWeaveTransformationSpec</a>, 
<a href="#flow.triggermesh.io/v1alpha1.XSLTTransformationSpec">XSLTTransformationSpec</a>)
</p>
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
<tr>
<td>
<code>valueFromConfigMap</code></br>
<em>
<a href="https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.18/#configmapkeyselector-v1-core">
Kubernetes core/v1.ConfigMapKeySelector
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>Field value from a Kubernetes ConfigMap.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="flow.triggermesh.io/v1alpha1.XMLToJSONTransformationSpec">XMLToJSONTransformationSpec
</h3>
<p>
(<em>Appears on:</em>
<a href="#flow.triggermesh.io/v1alpha1.XMLToJSONTransformation">XMLToJSONTransformation</a>)
</p>
<p>
<p>XMLToJSONTransformationSpec defines the desired state of the component.</p>
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
<code>eventOptions</code></br>
<em>
<a href="#flow.triggermesh.io/v1alpha1.EventOptions">
EventOptions
</a>
</em>
</td>
<td>
<p>EventOptions for targets</p>
</td>
</tr>
<tr>
<td>
<code>SourceSpec</code></br>
<em>
<a href="https://pkg.go.dev/knative.dev/pkg/apis/duck/v1#SourceSpec">
knative.dev/pkg/apis/duck/v1.SourceSpec
</a>
</em>
</td>
<td>
<p>
(Members of <code>SourceSpec</code> are embedded into this type.)
</p>
<p>Support sending to an event sink instead of replying.</p>
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
<h3 id="flow.triggermesh.io/v1alpha1.XSLTTransformationSpec">XSLTTransformationSpec
</h3>
<p>
(<em>Appears on:</em>
<a href="#flow.triggermesh.io/v1alpha1.XSLTTransformation">XSLTTransformation</a>)
</p>
<p>
<p>XSLTTransformationSpec defines the desired state of the component.</p>
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
<code>xslt</code></br>
<em>
<a href="#flow.triggermesh.io/v1alpha1.ValueFromField">
ValueFromField
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>XSLT document that will be used by default for transformation.
Can be omited if the XSLT is informed at each event.</p>
</td>
</tr>
<tr>
<td>
<code>allowPerEventXSLT</code></br>
<em>
bool
</em>
</td>
<td>
<em>(Optional)</em>
<p>Whether the default XSLT can be overriden at each event</p>
</td>
</tr>
<tr>
<td>
<code>SourceSpec</code></br>
<em>
<a href="https://pkg.go.dev/knative.dev/pkg/apis/duck/v1#SourceSpec">
knative.dev/pkg/apis/duck/v1.SourceSpec
</a>
</em>
</td>
<td>
<p>
(Members of <code>SourceSpec</code> are embedded into this type.)
</p>
<p>Support sending to an event sink instead of replying.</p>
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
on git commit <code>10d65370</code>.
</em></p>
