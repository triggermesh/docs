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
<a href="#flow.triggermesh.io/v1alpha1.Synchronizer">Synchronizer</a>
</li><li>
<a href="#flow.triggermesh.io/v1alpha1.Transformation">Transformation</a>
</li><li>
<a href="#flow.triggermesh.io/v1alpha1.XMLToJSONTransformation">XMLToJSONTransformation</a>
</li><li>
<a href="#flow.triggermesh.io/v1alpha1.XSLTTransformation">XSLTTransformation</a>
</li></ul>
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
<a href="#flow.triggermesh.io/v1alpha1.SynchronizerStatus">
SynchronizerStatus
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
<em>(Optional)</em>
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
<em>(Optional)</em>
<p>Spec holds the desired state of the XMLToJSONTransformation (from the client).</p>
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
<code>sink</code></br>
<em>
<a href="https://pkg.go.dev/knative.dev/pkg/apis/duck/v1#Destination">
knative.dev/pkg/apis/duck/v1.Destination
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>Sink is a reference to an object that will resolve to a uri to use as the sink.</p>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<code>status</code></br>
<em>
<a href="#flow.triggermesh.io/v1alpha1.XMLToJSONTransformationStatus">
XMLToJSONTransformationStatus
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>Status communicates the observed state of the XMLToJSONTransformation (from the controller).</p>
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
<p>Spec holds the desired state of the XSLTTransformation object.</p>
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
<code>sink</code></br>
<em>
<a href="https://pkg.go.dev/knative.dev/pkg/apis/duck/v1#Destination">
knative.dev/pkg/apis/duck/v1.Destination
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>Sink is a reference to an object that will resolve to a uri to use as the sink.</p>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<code>status</code></br>
<em>
<a href="#flow.triggermesh.io/v1alpha1.XSLTTransformationStatus">
XSLTTransformationStatus
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>Status communicates the observed state of the XSLTTransformation object.</p>
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
<h3 id="flow.triggermesh.io/v1alpha1.EventOptions">EventOptions
</h3>
<p>
(<em>Appears on:</em>
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
github.com/triggermesh/triggermesh/pkg/apis.Duration
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
<p>SynchronizerSpec holds the desired state of the Synchronizer.</p>
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
<h3 id="flow.triggermesh.io/v1alpha1.SynchronizerStatus">SynchronizerStatus
</h3>
<p>
(<em>Appears on:</em>
<a href="#flow.triggermesh.io/v1alpha1.Synchronizer">Synchronizer</a>)
</p>
<p>
<p>SynchronizerStatus communicates the observed state of the Synchronizer.</p>
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
<h3 id="flow.triggermesh.io/v1alpha1.ValueFromField">ValueFromField
</h3>
<p>
(<em>Appears on:</em>
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
<p>XMLToJSONTransformationSpec holds the desired state of the XMLToJSONTransformation (from the client).</p>
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
<code>sink</code></br>
<em>
<a href="https://pkg.go.dev/knative.dev/pkg/apis/duck/v1#Destination">
knative.dev/pkg/apis/duck/v1.Destination
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>Sink is a reference to an object that will resolve to a uri to use as the sink.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="flow.triggermesh.io/v1alpha1.XMLToJSONTransformationStatus">XMLToJSONTransformationStatus
</h3>
<p>
(<em>Appears on:</em>
<a href="#flow.triggermesh.io/v1alpha1.XMLToJSONTransformation">XMLToJSONTransformation</a>)
</p>
<p>
<p>XMLToJSONTransformationStatus communicates the observed state of the XMLToJSONTransformation (from the controller).</p>
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
<h3 id="flow.triggermesh.io/v1alpha1.XSLTTransformationSpec">XSLTTransformationSpec
</h3>
<p>
(<em>Appears on:</em>
<a href="#flow.triggermesh.io/v1alpha1.XSLTTransformation">XSLTTransformation</a>)
</p>
<p>
<p>XSLTTransformationSpec holds the desired state of the XSLTTransformation.</p>
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
<code>sink</code></br>
<em>
<a href="https://pkg.go.dev/knative.dev/pkg/apis/duck/v1#Destination">
knative.dev/pkg/apis/duck/v1.Destination
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>Sink is a reference to an object that will resolve to a uri to use as the sink.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="flow.triggermesh.io/v1alpha1.XSLTTransformationStatus">XSLTTransformationStatus
</h3>
<p>
(<em>Appears on:</em>
<a href="#flow.triggermesh.io/v1alpha1.XSLTTransformation">XSLTTransformation</a>)
</p>
<p>
<p>XSLTTransformationStatus communicates the observed state of the component.</p>
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
<p>Although this is not a source, it is a CloudEvents producing entity.</p>
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
<em>(Optional)</em>
<p>AddressStatus fulfills the Addressable contract.</p>
</td>
</tr>
</tbody>
</table>
<hr/>
<p><em>
Generated with <code>gen-crd-api-reference-docs</code>
on git commit <code>6a41e46</code>.
</em></p>
