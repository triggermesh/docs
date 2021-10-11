<p>Packages:</p>
<ul>
<li>
<a href="#extensions.triggermesh.io%2fv1alpha1">extensions.triggermesh.io/v1alpha1</a>
</li>
<li>
<a href="#flow.triggermesh.io%2fv1alpha1">flow.triggermesh.io/v1alpha1</a>
</li>
<li>
<a href="#routing.triggermesh.io%2fv1alpha1">routing.triggermesh.io/v1alpha1</a>
</li>
<li>
<a href="#sources.triggermesh.io%2fv1alpha1">sources.triggermesh.io/v1alpha1</a>
</li>
<li>
<a href="#targets.triggermesh.io%2fv1alpha1">targets.triggermesh.io/v1alpha1</a>
</li>
</ul>
<h2 id="extensions.triggermesh.io/v1alpha1">extensions.triggermesh.io/v1alpha1</h2>
<div>
<p>Package v1alpha1 contains API Schema definitions for the extensions/v1alpha1 API group.</p>
</div>
Resource Types:
<ul><li>
<a href="#extensions.triggermesh.io/v1alpha1.Function">Function</a>
</li></ul>
<h3 id="extensions.triggermesh.io/v1alpha1.Function">Function
</h3>
<div>
<p>Function is an addressable object that executes function code.</p>
</div>
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
<code>apiVersion</code><br/>
string</td>
<td>
<code>
extensions.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code><br/>
string
</td>
<td><code>Function</code></td>
</tr>
<tr>
<td>
<code>metadata</code><br/>
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
<code>spec</code><br/>
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
<code>runtime</code><br/>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>entrypoint</code><br/>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>public</code><br/>
<em>
bool
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>code</code><br/>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>responseIsEvent</code><br/>
<em>
bool
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>eventStore</code><br/>
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
<code>ceOverrides</code><br/>
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
<code>sink</code><br/>
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
<code>status</code><br/>
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
(<em>Appears on:</em><a href="#extensions.triggermesh.io/v1alpha1.FunctionSpec">FunctionSpec</a>)
</p>
<div>
<p>EventStoreConnection contains the data to connect to
an EventStore instance</p>
</div>
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
<code>uri</code><br/>
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
(<em>Appears on:</em><a href="#extensions.triggermesh.io/v1alpha1.Function">Function</a>)
</p>
<div>
<p>FunctionSpec holds the desired state of the Function Specification</p>
</div>
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
<code>runtime</code><br/>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>entrypoint</code><br/>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>public</code><br/>
<em>
bool
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>code</code><br/>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>responseIsEvent</code><br/>
<em>
bool
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>eventStore</code><br/>
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
<code>ceOverrides</code><br/>
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
<code>sink</code><br/>
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
(<em>Appears on:</em><a href="#extensions.triggermesh.io/v1alpha1.Function">Function</a>)
</p>
<div>
<p>FunctionStatus communicates the observed state of the Function (from the controller).</p>
</div>
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
<code>SourceStatus</code><br/>
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
<code>address</code><br/>
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
<h2 id="flow.triggermesh.io/v1alpha1">flow.triggermesh.io/v1alpha1</h2>
<div>
<p>Package v1alpha1 contains API Schema definitions for the flow/v1alpha1 API group.</p>
</div>
Resource Types:
<ul><li>
<a href="#flow.triggermesh.io/v1alpha1.Transformation">Transformation</a>
</li></ul>
<h3 id="flow.triggermesh.io/v1alpha1.Transformation">Transformation
</h3>
<div>
<p>Transformation is a Knative abstraction that encapsulates the interface by which Knative
components express a desire to have a particular image cached.</p>
</div>
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
<code>apiVersion</code><br/>
string</td>
<td>
<code>
flow.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code><br/>
string
</td>
<td><code>Transformation</code></td>
</tr>
<tr>
<td>
<code>metadata</code><br/>
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
<code>spec</code><br/>
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
<code>sink</code><br/>
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
<code>context</code><br/>
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
<code>data</code><br/>
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
<code>status</code><br/>
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
(<em>Appears on:</em><a href="#flow.triggermesh.io/v1alpha1.Transform">Transform</a>)
</p>
<div>
<p>Path is a key-value pair that represents JSON object path</p>
</div>
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
<code>key</code><br/>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>value</code><br/>
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
(<em>Appears on:</em><a href="#flow.triggermesh.io/v1alpha1.TransformationSpec">TransformationSpec</a>)
</p>
<div>
<p>Transform describes transformation schemes for different CE types.</p>
</div>
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
<code>operation</code><br/>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>paths</code><br/>
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
(<em>Appears on:</em><a href="#flow.triggermesh.io/v1alpha1.Transformation">Transformation</a>)
</p>
<div>
<p>TransformationSpec holds the desired state of the Transformation (from the client).</p>
</div>
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
<code>sink</code><br/>
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
<code>context</code><br/>
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
<code>data</code><br/>
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
(<em>Appears on:</em><a href="#flow.triggermesh.io/v1alpha1.Transformation">Transformation</a>)
</p>
<div>
<p>TransformationStatus communicates the observed state of the Transformation (from the controller).</p>
</div>
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
<code>SourceStatus</code><br/>
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
<code>address</code><br/>
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
<h2 id="routing.triggermesh.io/v1alpha1">routing.triggermesh.io/v1alpha1</h2>
<div>
<p>Package v1alpha1 contains API Schema definitions for the routing/v1alpha1 API group.</p>
</div>
Resource Types:
<ul><li>
<a href="#routing.triggermesh.io/v1alpha1.Filter">Filter</a>
</li><li>
<a href="#routing.triggermesh.io/v1alpha1.Splitter">Splitter</a>
</li></ul>
<h3 id="routing.triggermesh.io/v1alpha1.Filter">Filter
</h3>
<div>
<p>Filter is an addressable object that filters incoming events according
to provided Common Language Expression</p>
</div>
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
<code>apiVersion</code><br/>
string</td>
<td>
<code>
routing.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code><br/>
string
</td>
<td><code>Filter</code></td>
</tr>
<tr>
<td>
<code>metadata</code><br/>
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
<code>spec</code><br/>
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
<code>expression</code><br/>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>sink</code><br/>
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
<code>status</code><br/>
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
<div>
<p>Splitter is an addressable object that splits incoming events according
to provided specification.</p>
</div>
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
<code>apiVersion</code><br/>
string</td>
<td>
<code>
routing.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code><br/>
string
</td>
<td><code>Splitter</code></td>
</tr>
<tr>
<td>
<code>metadata</code><br/>
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
<code>spec</code><br/>
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
<code>path</code><br/>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>ceContext</code><br/>
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
<code>sink</code><br/>
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
<code>status</code><br/>
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
(<em>Appears on:</em><a href="#routing.triggermesh.io/v1alpha1.SplitterSpec">SplitterSpec</a>)
</p>
<div>
<p>CloudEventContext declares context attributes that will be propagated to resulting events.</p>
</div>
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
<code>type</code><br/>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>source</code><br/>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>extensions</code><br/>
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
(<em>Appears on:</em><a href="#routing.triggermesh.io/v1alpha1.Filter">Filter</a>)
</p>
<div>
<p>FilterSpec contains CEL expression string and the destination sink</p>
</div>
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
<code>expression</code><br/>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>sink</code><br/>
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
<div>
<p>Router is implemented by all Routing types.</p>
</div>
<h3 id="routing.triggermesh.io/v1alpha1.RouterStatus">RouterStatus
</h3>
<p>
(<em>Appears on:</em><a href="#routing.triggermesh.io/v1alpha1.Filter">Filter</a>, <a href="#routing.triggermesh.io/v1alpha1.Splitter">Splitter</a>, <a href="#routing.triggermesh.io/v1alpha1.RouterStatusManager">RouterStatusManager</a>)
</p>
<div>
<p>RouterStatus defines the observed state of an event source.</p>
</div>
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
<code>SourceStatus</code><br/>
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
<code>AddressStatus</code><br/>
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
<div>
<p>RouterStatusManager manages the status of routers.</p>
</div>
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
<code>ConditionSet</code><br/>
<em>
knative.dev/pkg/apis.ConditionSet
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>RouterStatus</code><br/>
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
(<em>Appears on:</em><a href="#routing.triggermesh.io/v1alpha1.Splitter">Splitter</a>)
</p>
<div>
<p>SplitterSpec holds the desired state of the Splitter.</p>
</div>
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
<code>path</code><br/>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>ceContext</code><br/>
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
<code>sink</code><br/>
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
<div>
<p>ValueFromField is a struct field that can have its value either defined
explicitly or sourced from another entity.</p>
</div>
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
<code>value</code><br/>
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
<code>valueFromSecret</code><br/>
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
<h2 id="sources.triggermesh.io/v1alpha1">sources.triggermesh.io/v1alpha1</h2>
<div>
<p>Package v1alpha1 contains API Schema definitions for the sources/v1alpha1 API group.</p>
</div>
Resource Types:
<ul><li>
<a href="#sources.triggermesh.io/v1alpha1.AWSCloudWatchLogsSource">AWSCloudWatchLogsSource</a>
</li><li>
<a href="#sources.triggermesh.io/v1alpha1.AWSCloudWatchSource">AWSCloudWatchSource</a>
</li><li>
<a href="#sources.triggermesh.io/v1alpha1.AWSCodeCommitSource">AWSCodeCommitSource</a>
</li><li>
<a href="#sources.triggermesh.io/v1alpha1.AWSCognitoIdentitySource">AWSCognitoIdentitySource</a>
</li><li>
<a href="#sources.triggermesh.io/v1alpha1.AWSCognitoUserPoolSource">AWSCognitoUserPoolSource</a>
</li><li>
<a href="#sources.triggermesh.io/v1alpha1.AWSDynamoDBSource">AWSDynamoDBSource</a>
</li><li>
<a href="#sources.triggermesh.io/v1alpha1.AWSKinesisSource">AWSKinesisSource</a>
</li><li>
<a href="#sources.triggermesh.io/v1alpha1.AWSPerformanceInsightsSource">AWSPerformanceInsightsSource</a>
</li><li>
<a href="#sources.triggermesh.io/v1alpha1.AWSS3Source">AWSS3Source</a>
</li><li>
<a href="#sources.triggermesh.io/v1alpha1.AWSSNSSource">AWSSNSSource</a>
</li><li>
<a href="#sources.triggermesh.io/v1alpha1.AWSSQSSource">AWSSQSSource</a>
</li><li>
<a href="#sources.triggermesh.io/v1alpha1.AzureActivityLogsSource">AzureActivityLogsSource</a>
</li><li>
<a href="#sources.triggermesh.io/v1alpha1.AzureBlobStorageSource">AzureBlobStorageSource</a>
</li><li>
<a href="#sources.triggermesh.io/v1alpha1.AzureEventGridSource">AzureEventGridSource</a>
</li><li>
<a href="#sources.triggermesh.io/v1alpha1.AzureEventHubSource">AzureEventHubSource</a>
</li><li>
<a href="#sources.triggermesh.io/v1alpha1.AzureIOTHubSource">AzureIOTHubSource</a>
</li><li>
<a href="#sources.triggermesh.io/v1alpha1.AzureQueueStorageSource">AzureQueueStorageSource</a>
</li><li>
<a href="#sources.triggermesh.io/v1alpha1.AzureServiceBusQueueSource">AzureServiceBusQueueSource</a>
</li><li>
<a href="#sources.triggermesh.io/v1alpha1.GoogleCloudAuditLogsSource">GoogleCloudAuditLogsSource</a>
</li><li>
<a href="#sources.triggermesh.io/v1alpha1.GoogleCloudBillingSource">GoogleCloudBillingSource</a>
</li><li>
<a href="#sources.triggermesh.io/v1alpha1.GoogleCloudPubSubSource">GoogleCloudPubSubSource</a>
</li><li>
<a href="#sources.triggermesh.io/v1alpha1.GoogleCloudRepositoriesSource">GoogleCloudRepositoriesSource</a>
</li><li>
<a href="#sources.triggermesh.io/v1alpha1.GoogleCloudStorageSource">GoogleCloudStorageSource</a>
</li><li>
<a href="#sources.triggermesh.io/v1alpha1.HTTPPollerSource">HTTPPollerSource</a>
</li><li>
<a href="#sources.triggermesh.io/v1alpha1.OCIMetricsSource">OCIMetricsSource</a>
</li><li>
<a href="#sources.triggermesh.io/v1alpha1.SalesforceSource">SalesforceSource</a>
</li><li>
<a href="#sources.triggermesh.io/v1alpha1.SlackSource">SlackSource</a>
</li><li>
<a href="#sources.triggermesh.io/v1alpha1.TwilioSource">TwilioSource</a>
</li><li>
<a href="#sources.triggermesh.io/v1alpha1.WebhookSource">WebhookSource</a>
</li><li>
<a href="#sources.triggermesh.io/v1alpha1.ZendeskSource">ZendeskSource</a>
</li></ul>
<h3 id="sources.triggermesh.io/v1alpha1.AWSCloudWatchLogsSource">AWSCloudWatchLogsSource
</h3>
<div>
<p>AWSCloudWatchLogsSource is the Schema for the event source.</p>
</div>
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
<code>apiVersion</code><br/>
string</td>
<td>
<code>
sources.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code><br/>
string
</td>
<td><code>AWSCloudWatchLogsSource</code></td>
</tr>
<tr>
<td>
<code>metadata</code><br/>
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
<code>spec</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AWSCloudWatchLogsSourceSpec">
AWSCloudWatchLogsSourceSpec
</a>
</em>
</td>
<td>
<br/>
<br/>
<table>
<tr>
<td>
<code>SourceSpec</code><br/>
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
</td>
</tr>
<tr>
<td>
<code>arn</code><br/>
<em>
github.com/triggermesh/triggermesh/pkg/apis.ARN
</em>
</td>
<td>
<p>ARN of the Log Group to source data from.
<a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazoncloudwatchlogs.html#amazoncloudwatchlogs-resources-for-iam-policies">https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazoncloudwatchlogs.html#amazoncloudwatchlogs-resources-for-iam-policies</a></p>
</td>
</tr>
<tr>
<td>
<code>pollingInterval</code><br/>
<em>
github.com/triggermesh/triggermesh/pkg/apis.Duration
</em>
</td>
<td>
<em>(Optional)</em>
<p>Duration which defines how often logs should be pulled from Amazon CloudWatch Logs.
Expressed as a duration string, which format is documented at <a href="https://pkg.go.dev/time#ParseDuration">https://pkg.go.dev/time#ParseDuration</a>.</p>
<p>Defaults to 5m</p>
</td>
</tr>
<tr>
<td>
<code>credentials</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AWSSecurityCredentials">
AWSSecurityCredentials
</a>
</em>
</td>
<td>
<p>Credentials to interact with the Amazon CloudWatch Logs API.</p>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<code>status</code><br/>
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
<h3 id="sources.triggermesh.io/v1alpha1.AWSCloudWatchSource">AWSCloudWatchSource
</h3>
<div>
<p>AWSCloudWatchSource is the Schema for the event source.</p>
</div>
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
<code>apiVersion</code><br/>
string</td>
<td>
<code>
sources.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code><br/>
string
</td>
<td><code>AWSCloudWatchSource</code></td>
</tr>
<tr>
<td>
<code>metadata</code><br/>
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
<code>spec</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AWSCloudWatchSourceSpec">
AWSCloudWatchSourceSpec
</a>
</em>
</td>
<td>
<br/>
<br/>
<table>
<tr>
<td>
<code>SourceSpec</code><br/>
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
</td>
</tr>
<tr>
<td>
<code>region</code><br/>
<em>
string
</em>
</td>
<td>
<p>Code of the AWS region to source metrics from.
Available region codes are documented at
<a href="https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints">https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints</a>.</p>
</td>
</tr>
<tr>
<td>
<code>pollingInterval</code><br/>
<em>
github.com/triggermesh/triggermesh/pkg/apis.Duration
</em>
</td>
<td>
<em>(Optional)</em>
<p>Duration which defines how often metrics should be pulled from Amazon CloudWatch.
Expressed as a duration string, which format is documented at <a href="https://pkg.go.dev/time#ParseDuration">https://pkg.go.dev/time#ParseDuration</a>.</p>
<p>Defaults to 5m</p>
</td>
</tr>
<tr>
<td>
<code>metricQueries</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AWSCloudWatchMetricQuery">
[]AWSCloudWatchMetricQuery
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>List of queries that determine what metrics will be sourced from Amazon CloudWatch.</p>
</td>
</tr>
<tr>
<td>
<code>credentials</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AWSSecurityCredentials">
AWSSecurityCredentials
</a>
</em>
</td>
<td>
<p>Credentials to interact with the Amazon CloudWatch API.</p>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<code>status</code><br/>
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
<h3 id="sources.triggermesh.io/v1alpha1.AWSCodeCommitSource">AWSCodeCommitSource
</h3>
<div>
<p>AWSCodeCommitSource is the Schema for the event source.</p>
</div>
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
<code>apiVersion</code><br/>
string</td>
<td>
<code>
sources.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code><br/>
string
</td>
<td><code>AWSCodeCommitSource</code></td>
</tr>
<tr>
<td>
<code>metadata</code><br/>
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
<code>spec</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AWSCodeCommitSourceSpec">
AWSCodeCommitSourceSpec
</a>
</em>
</td>
<td>
<br/>
<br/>
<table>
<tr>
<td>
<code>SourceSpec</code><br/>
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
</td>
</tr>
<tr>
<td>
<code>arn</code><br/>
<em>
github.com/triggermesh/triggermesh/pkg/apis.ARN
</em>
</td>
<td>
<p>Repository ARN
<a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awscodecommit.html#awscodecommit-resources-for-iam-policies">https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awscodecommit.html#awscodecommit-resources-for-iam-policies</a></p>
</td>
</tr>
<tr>
<td>
<code>branch</code><br/>
<em>
string
</em>
</td>
<td>
<p>Name of the Git branch this source observes.</p>
</td>
</tr>
<tr>
<td>
<code>eventTypes</code><br/>
<em>
[]string
</em>
</td>
<td>
<p>List of event types that should be processed by the source.
Valid values: [push, pull_request]</p>
</td>
</tr>
<tr>
<td>
<code>credentials</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AWSSecurityCredentials">
AWSSecurityCredentials
</a>
</em>
</td>
<td>
<p>Credentials to interact with the Amazon CodeCommit API.</p>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<code>status</code><br/>
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
<h3 id="sources.triggermesh.io/v1alpha1.AWSCognitoIdentitySource">AWSCognitoIdentitySource
</h3>
<div>
<p>AWSCognitoIdentitySource is the Schema for the event source.</p>
</div>
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
<code>apiVersion</code><br/>
string</td>
<td>
<code>
sources.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code><br/>
string
</td>
<td><code>AWSCognitoIdentitySource</code></td>
</tr>
<tr>
<td>
<code>metadata</code><br/>
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
<code>spec</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AWSCognitoIdentitySourceSpec">
AWSCognitoIdentitySourceSpec
</a>
</em>
</td>
<td>
<br/>
<br/>
<table>
<tr>
<td>
<code>SourceSpec</code><br/>
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
</td>
</tr>
<tr>
<td>
<code>arn</code><br/>
<em>
github.com/triggermesh/triggermesh/pkg/apis.ARN
</em>
</td>
<td>
<p>Identity Pool ARN
<a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazoncognitoidentity.html#amazoncognitoidentity-resources-for-iam-policies">https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazoncognitoidentity.html#amazoncognitoidentity-resources-for-iam-policies</a></p>
</td>
</tr>
<tr>
<td>
<code>credentials</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AWSSecurityCredentials">
AWSSecurityCredentials
</a>
</em>
</td>
<td>
<p>Credentials to interact with the Amazon Cognito API.</p>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<code>status</code><br/>
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
<h3 id="sources.triggermesh.io/v1alpha1.AWSCognitoUserPoolSource">AWSCognitoUserPoolSource
</h3>
<div>
<p>AWSCognitoUserPoolSource is the Schema for the event source.</p>
</div>
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
<code>apiVersion</code><br/>
string</td>
<td>
<code>
sources.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code><br/>
string
</td>
<td><code>AWSCognitoUserPoolSource</code></td>
</tr>
<tr>
<td>
<code>metadata</code><br/>
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
<code>spec</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AWSCognitoUserPoolSourceSpec">
AWSCognitoUserPoolSourceSpec
</a>
</em>
</td>
<td>
<br/>
<br/>
<table>
<tr>
<td>
<code>SourceSpec</code><br/>
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
</td>
</tr>
<tr>
<td>
<code>arn</code><br/>
<em>
github.com/triggermesh/triggermesh/pkg/apis.ARN
</em>
</td>
<td>
<p>User Pool ARN
<a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazoncognitouserpools.html#amazoncognitouserpools-resources-for-iam-policies">https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazoncognitouserpools.html#amazoncognitouserpools-resources-for-iam-policies</a></p>
</td>
</tr>
<tr>
<td>
<code>credentials</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AWSSecurityCredentials">
AWSSecurityCredentials
</a>
</em>
</td>
<td>
<p>Credentials to interact with the Amazon Cognito API.</p>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<code>status</code><br/>
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
<h3 id="sources.triggermesh.io/v1alpha1.AWSDynamoDBSource">AWSDynamoDBSource
</h3>
<div>
<p>AWSDynamoDBSource is the Schema for the event source.</p>
</div>
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
<code>apiVersion</code><br/>
string</td>
<td>
<code>
sources.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code><br/>
string
</td>
<td><code>AWSDynamoDBSource</code></td>
</tr>
<tr>
<td>
<code>metadata</code><br/>
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
<code>spec</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AWSDynamoDBSourceSpec">
AWSDynamoDBSourceSpec
</a>
</em>
</td>
<td>
<br/>
<br/>
<table>
<tr>
<td>
<code>SourceSpec</code><br/>
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
</td>
</tr>
<tr>
<td>
<code>arn</code><br/>
<em>
github.com/triggermesh/triggermesh/pkg/apis.ARN
</em>
</td>
<td>
<p>Table ARN
<a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazondynamodb.html#amazondynamodb-resources-for-iam-policies">https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazondynamodb.html#amazondynamodb-resources-for-iam-policies</a></p>
</td>
</tr>
<tr>
<td>
<code>credentials</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AWSSecurityCredentials">
AWSSecurityCredentials
</a>
</em>
</td>
<td>
<p>Credentials to interact with the Amazon DynamoDB API.</p>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<code>status</code><br/>
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
<h3 id="sources.triggermesh.io/v1alpha1.AWSKinesisSource">AWSKinesisSource
</h3>
<div>
<p>AWSKinesisSource is the Schema for the event source.</p>
</div>
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
<code>apiVersion</code><br/>
string</td>
<td>
<code>
sources.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code><br/>
string
</td>
<td><code>AWSKinesisSource</code></td>
</tr>
<tr>
<td>
<code>metadata</code><br/>
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
<code>spec</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AWSKinesisSourceSpec">
AWSKinesisSourceSpec
</a>
</em>
</td>
<td>
<br/>
<br/>
<table>
<tr>
<td>
<code>SourceSpec</code><br/>
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
</td>
</tr>
<tr>
<td>
<code>arn</code><br/>
<em>
github.com/triggermesh/triggermesh/pkg/apis.ARN
</em>
</td>
<td>
<p>Stream ARN
<a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonkinesis.html#amazonkinesis-resources-for-iam-policies">https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonkinesis.html#amazonkinesis-resources-for-iam-policies</a></p>
</td>
</tr>
<tr>
<td>
<code>credentials</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AWSSecurityCredentials">
AWSSecurityCredentials
</a>
</em>
</td>
<td>
<p>Credentials to interact with the Amazon Kinesis API.</p>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<code>status</code><br/>
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
<h3 id="sources.triggermesh.io/v1alpha1.AWSPerformanceInsightsSource">AWSPerformanceInsightsSource
</h3>
<div>
<p>AWSPerformanceInsightsSource is the Schema for the event source.</p>
</div>
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
<code>apiVersion</code><br/>
string</td>
<td>
<code>
sources.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code><br/>
string
</td>
<td><code>AWSPerformanceInsightsSource</code></td>
</tr>
<tr>
<td>
<code>metadata</code><br/>
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
<code>spec</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AWSPerformanceInsightsSourceSpec">
AWSPerformanceInsightsSourceSpec
</a>
</em>
</td>
<td>
<br/>
<br/>
<table>
<tr>
<td>
<code>SourceSpec</code><br/>
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
</td>
</tr>
<tr>
<td>
<code>arn</code><br/>
<em>
github.com/triggermesh/triggermesh/pkg/apis.ARN
</em>
</td>
<td>
<p>ARN of the RDS instance to receive metrics for.
<a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonrds.html#amazonrds-resources-for-iam-policies">https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonrds.html#amazonrds-resources-for-iam-policies</a></p>
</td>
</tr>
<tr>
<td>
<code>pollingInterval</code><br/>
<em>
github.com/triggermesh/triggermesh/pkg/apis.Duration
</em>
</td>
<td>
<p>Duration which defines how often metrics should be pulled from Amazon Performance Insights.
Expressed as a duration string, which format is documented at <a href="https://pkg.go.dev/time#ParseDuration">https://pkg.go.dev/time#ParseDuration</a>.</p>
</td>
</tr>
<tr>
<td>
<code>metrics</code><br/>
<em>
[]string
</em>
</td>
<td>
<p>List of queries that determine what metrics will be sourced from Amazon Performance Insights.</p>
<p>Each item represents the &lsquo;metric&rsquo; attribute of a MetricQuery.
<a href="https://docs.aws.amazon.com/performance-insights/latest/APIReference/API_MetricQuery.html">https://docs.aws.amazon.com/performance-insights/latest/APIReference/API_MetricQuery.html</a></p>
</td>
</tr>
<tr>
<td>
<code>credentials</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AWSSecurityCredentials">
AWSSecurityCredentials
</a>
</em>
</td>
<td>
<p>Credentials to interact with the Amazon RDS and Performance Insights APIs.</p>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<code>status</code><br/>
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
<h3 id="sources.triggermesh.io/v1alpha1.AWSS3Source">AWSS3Source
</h3>
<div>
<p>AWSS3Source is the Schema for the event source.</p>
</div>
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
<code>apiVersion</code><br/>
string</td>
<td>
<code>
sources.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code><br/>
string
</td>
<td><code>AWSS3Source</code></td>
</tr>
<tr>
<td>
<code>metadata</code><br/>
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
<code>spec</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AWSS3SourceSpec">
AWSS3SourceSpec
</a>
</em>
</td>
<td>
<br/>
<br/>
<table>
<tr>
<td>
<code>SourceSpec</code><br/>
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
</td>
</tr>
<tr>
<td>
<code>arn</code><br/>
<em>
github.com/triggermesh/triggermesh/pkg/apis.ARN
</em>
</td>
<td>
<p>Bucket ARN
<a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazons3.html#amazons3-resources-for-iam-policies">https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazons3.html#amazons3-resources-for-iam-policies</a></p>
<p>Although not technically required by S3, we enforce that bucket ARNs
include a region and an account ID, because this information is
required by the reconciler to operate properly.</p>
</td>
</tr>
<tr>
<td>
<code>eventTypes</code><br/>
<em>
[]string
</em>
</td>
<td>
<p>List of event types that the source should subscribe to.
Accepted values:
<a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_QueueConfiguration.html">https://docs.aws.amazon.com/AmazonS3/latest/API/API_QueueConfiguration.html</a>
<a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/notification-how-to-event-types-and-destinations.html">https://docs.aws.amazon.com/AmazonS3/latest/userguide/notification-how-to-event-types-and-destinations.html</a></p>
</td>
</tr>
<tr>
<td>
<code>queueARN</code><br/>
<em>
github.com/triggermesh/triggermesh/pkg/apis.ARN
</em>
</td>
<td>
<em>(Optional)</em>
<p>SQS Queue ARN
<a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonsqs.html#amazonsqs-resources-for-iam-policies">https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonsqs.html#amazonsqs-resources-for-iam-policies</a></p>
<p>When not provided, a SQS queue for receiving event notifications
from the S3 bucket is automatically created and configured.</p>
</td>
</tr>
<tr>
<td>
<code>credentials</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AWSSecurityCredentials">
AWSSecurityCredentials
</a>
</em>
</td>
<td>
<p>Credentials to interact with the Amazon S3 and SQS APIs.</p>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<code>status</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AWSS3SourceStatus">
AWSS3SourceStatus
</a>
</em>
</td>
<td>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.AWSSNSSource">AWSSNSSource
</h3>
<div>
<p>AWSSNSSource is the Schema for the event source.</p>
</div>
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
<code>apiVersion</code><br/>
string</td>
<td>
<code>
sources.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code><br/>
string
</td>
<td><code>AWSSNSSource</code></td>
</tr>
<tr>
<td>
<code>metadata</code><br/>
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
<code>spec</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AWSSNSSourceSpec">
AWSSNSSourceSpec
</a>
</em>
</td>
<td>
<br/>
<br/>
<table>
<tr>
<td>
<code>SourceSpec</code><br/>
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
</td>
</tr>
<tr>
<td>
<code>arn</code><br/>
<em>
github.com/triggermesh/triggermesh/pkg/apis.ARN
</em>
</td>
<td>
<p>Topic ARN
<a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonsns.html#amazonsns-resources-for-iam-policies">https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonsns.html#amazonsns-resources-for-iam-policies</a></p>
</td>
</tr>
<tr>
<td>
<code>subscriptionAttributes</code><br/>
<em>
map[string]*string
</em>
</td>
<td>
<em>(Optional)</em>
<p>Attributes to set on the Subscription that is used for receiving messages from the topic.
For a list of supported subscription attributes, please refer to the following resources:
* <a href="https://docs.aws.amazon.com/sns/latest/api/API_SetSubscriptionAttributes.html">https://docs.aws.amazon.com/sns/latest/api/API_SetSubscriptionAttributes.html</a>
* <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-how-it-works.html">https://docs.aws.amazon.com/sns/latest/dg/sns-how-it-works.html</a></p>
</td>
</tr>
<tr>
<td>
<code>credentials</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AWSSecurityCredentials">
AWSSecurityCredentials
</a>
</em>
</td>
<td>
<p>Credentials to interact with the Amazon SNS API.</p>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<code>status</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AWSSNSSourceStatus">
AWSSNSSourceStatus
</a>
</em>
</td>
<td>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.AWSSQSSource">AWSSQSSource
</h3>
<div>
<p>AWSSQSSource is the Schema for the event source.</p>
</div>
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
<code>apiVersion</code><br/>
string</td>
<td>
<code>
sources.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code><br/>
string
</td>
<td><code>AWSSQSSource</code></td>
</tr>
<tr>
<td>
<code>metadata</code><br/>
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
<code>spec</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AWSSQSSourceSpec">
AWSSQSSourceSpec
</a>
</em>
</td>
<td>
<br/>
<br/>
<table>
<tr>
<td>
<code>SourceSpec</code><br/>
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
</td>
</tr>
<tr>
<td>
<code>arn</code><br/>
<em>
github.com/triggermesh/triggermesh/pkg/apis.ARN
</em>
</td>
<td>
<p>Queue ARN
<a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonsqs.html#amazonsqs-resources-for-iam-policies">https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonsqs.html#amazonsqs-resources-for-iam-policies</a></p>
</td>
</tr>
<tr>
<td>
<code>receiveOptions</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AWSSQSSourceReceiveOptions">
AWSSQSSourceReceiveOptions
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>Options that control the behavior of message receivers.</p>
</td>
</tr>
<tr>
<td>
<code>credentials</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AWSSecurityCredentials">
AWSSecurityCredentials
</a>
</em>
</td>
<td>
<p>Credentials to interact with the Amazon SQS API.</p>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<code>status</code><br/>
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
<h3 id="sources.triggermesh.io/v1alpha1.AzureActivityLogsSource">AzureActivityLogsSource
</h3>
<div>
<p>AzureActivityLogsSource is the Schema for the event source.</p>
</div>
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
<code>apiVersion</code><br/>
string</td>
<td>
<code>
sources.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code><br/>
string
</td>
<td><code>AzureActivityLogsSource</code></td>
</tr>
<tr>
<td>
<code>metadata</code><br/>
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
<code>spec</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AzureActivityLogsSourceSpec">
AzureActivityLogsSourceSpec
</a>
</em>
</td>
<td>
<br/>
<br/>
<table>
<tr>
<td>
<code>SourceSpec</code><br/>
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
</td>
</tr>
<tr>
<td>
<code>eventHubID</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.EventHubResourceID">
EventHubResourceID
</a>
</em>
</td>
<td>
<p>Resource ID of either the Event Hubs instance or Event Hubs namespace to send activity logs to.
This resource ID also conveniently contains the ID of the subscription which activity logs are to be
subscribed to.</p>
<p>If the resource ID represents an Event Hubs namespace, Azure automatically creates an Event Hub with the name
&lsquo;insights-activity-logs&rsquo; inside that namespace. Otherwise, the user-provided Event Hub is used.</p>
<p>Accepted formats:
* /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.EventHub/namespaces/{namespaceName}/eventHubs/{eventHubName}
* /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.EventHub/namespaces/{namespaceName}</p>
</td>
</tr>
<tr>
<td>
<code>eventHubsSASPolicy</code><br/>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
<p>Name of a SAS policy with Manage permissions inside the Event Hubs namespace referenced in the EventHubID
field.</p>
<p>Defaults to &ldquo;RootManageSharedAccessKey&rdquo;.</p>
<p>References:
* <a href="https://docs.microsoft.com/en-us/rest/api/eventhub/2017-04-01/authorization%20rules%20-%20namespaces/getauthorizationrule">https://docs.microsoft.com/en-us/rest/api/eventhub/2017-04-01/authorization%20rules%20-%20namespaces/getauthorizationrule</a>
* <a href="https://docs.microsoft.com/en-us/azure/event-hubs/authorize-access-shared-access-signature">https://docs.microsoft.com/en-us/azure/event-hubs/authorize-access-shared-access-signature</a></p>
</td>
</tr>
<tr>
<td>
<code>categories</code><br/>
<em>
[]string
</em>
</td>
<td>
<em>(Optional)</em>
<p>Categories of Activity Logs to collect.</p>
<p>All available categories are selected when this attribute is empty.
<a href="https://docs.microsoft.com/en-us/azure/azure-monitor/platform/activity-log-schema#categories">https://docs.microsoft.com/en-us/azure/azure-monitor/platform/activity-log-schema#categories</a></p>
</td>
</tr>
<tr>
<td>
<code>auth</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AzureAuth">
AzureAuth
</a>
</em>
</td>
<td>
<p>Authentication method to interact with the Azure Monitor REST API.
This event source only supports the ServicePrincipal authentication.</p>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<code>status</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AzureActivityLogsSourceStatus">
AzureActivityLogsSourceStatus
</a>
</em>
</td>
<td>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.AzureBlobStorageSource">AzureBlobStorageSource
</h3>
<div>
<p>AzureBlobStorageSource is the Schema for the event source.</p>
</div>
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
<code>apiVersion</code><br/>
string</td>
<td>
<code>
sources.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code><br/>
string
</td>
<td><code>AzureBlobStorageSource</code></td>
</tr>
<tr>
<td>
<code>metadata</code><br/>
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
<code>spec</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AzureBlobStorageSourceSpec">
AzureBlobStorageSourceSpec
</a>
</em>
</td>
<td>
<br/>
<br/>
<table>
<tr>
<td>
<code>SourceSpec</code><br/>
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
</td>
</tr>
<tr>
<td>
<code>storageAccountID</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.StorageAccountResourceID">
StorageAccountResourceID
</a>
</em>
</td>
<td>
<p>Resource ID of the Storage Account to receive events for.</p>
<p>Format: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{storageAccountName}</p>
<p>Besides the Storage Account name itself, the resource ID contains
the subscription ID and resource group name which all together
uniquely identify the Storage Account within Azure.</p>
</td>
</tr>
<tr>
<td>
<code>eventHubID</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.EventHubResourceID">
EventHubResourceID
</a>
</em>
</td>
<td>
<p>Resource ID of either the Event Hubs instance or Event Hubs
namespace to send events to.</p>
<p>Accepted formats:
- /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.EventHub/namespaces/{namespaceName}/eventHubs/{eventHubName}
- /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.EventHub/namespaces/{namespaceName}</p>
<p>If the resource ID represents an Event Hubs namespace, an Event Hubs
instance is created on behalf of the user inside that namespace.
Otherwise, the user-provided Event Hub is used.</p>
</td>
</tr>
<tr>
<td>
<code>eventTypes</code><br/>
<em>
[]string
</em>
</td>
<td>
<em>(Optional)</em>
<p>Types of events to subscribe to.</p>
<p>The list of available event types can be found at
<a href="https://docs.microsoft.com/en-us/azure/event-grid/event-schema-blob-storage">https://docs.microsoft.com/en-us/azure/event-grid/event-schema-blob-storage</a></p>
<p>When this attribute is not set, the source automatically subscribes
to the following event types:
- Microsoft.Storage.BlobCreated
- Microsoft.Storage.BlobDeleted</p>
</td>
</tr>
<tr>
<td>
<code>auth</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AzureAuth">
AzureAuth
</a>
</em>
</td>
<td>
<p>Authentication method to interact with the Azure REST API.
This event source only supports the ServicePrincipal authentication.</p>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<code>status</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AzureBlobStorageSourceStatus">
AzureBlobStorageSourceStatus
</a>
</em>
</td>
<td>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.AzureEventGridSource">AzureEventGridSource
</h3>
<div>
<p>AzureEventGridSource is the Schema for the event source.</p>
</div>
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
<code>apiVersion</code><br/>
string</td>
<td>
<code>
sources.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code><br/>
string
</td>
<td><code>AzureEventGridSource</code></td>
</tr>
<tr>
<td>
<code>metadata</code><br/>
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
<code>spec</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AzureEventGridSourceSpec">
AzureEventGridSourceSpec
</a>
</em>
</td>
<td>
<br/>
<br/>
<table>
<tr>
<td>
<code>SourceSpec</code><br/>
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
</td>
</tr>
<tr>
<td>
<code>scope</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AzureResourceID">
AzureResourceID
</a>
</em>
</td>
<td>
<p>The resource ID the event subscription applies to.</p>
<p>Can be
- an Azure subscription:
/subscriptions/{subscriptionId}
- a resource group:
/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}
- a top-level resource from a resource provider (including Event Grid topic):
/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}</p>
</td>
</tr>
<tr>
<td>
<code>eventTypes</code><br/>
<em>
[]string
</em>
</td>
<td>
<em>(Optional)</em>
<p>Types of events to subscribe to.</p>
<p>If not specified, Azure automatically selects all available event types for the provided Scope.</p>
<p>For a list of all available event types, please refer to the list of
Azure services that support system topics at
<a href="https://docs.microsoft.com/en-us/azure/event-grid/system-topics">https://docs.microsoft.com/en-us/azure/event-grid/system-topics</a></p>
</td>
</tr>
<tr>
<td>
<code>eventHubID</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.EventHubResourceID">
EventHubResourceID
</a>
</em>
</td>
<td>
<p>Resource ID of either the Event Hubs instance or Event Hubs
namespace to send events to.</p>
<p>Accepted formats:
- /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.EventHub/namespaces/{namespaceName}/eventHubs/{eventHubName}
- /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.EventHub/namespaces/{namespaceName}</p>
<p>If the resource ID represents an Event Hubs namespace, an Event Hubs
instance is created on behalf of the user inside that namespace.
Otherwise, the user-provided Event Hub is used.</p>
</td>
</tr>
<tr>
<td>
<code>auth</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AzureAuth">
AzureAuth
</a>
</em>
</td>
<td>
<p>Authentication method to interact with the Azure REST API.
This event source only supports the ServicePrincipal authentication.</p>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<code>status</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AzureEventGridSourceStatus">
AzureEventGridSourceStatus
</a>
</em>
</td>
<td>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.AzureEventHubSource">AzureEventHubSource
</h3>
<div>
<p>AzureEventHubSource is the Schema for the event source.</p>
</div>
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
<code>apiVersion</code><br/>
string</td>
<td>
<code>
sources.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code><br/>
string
</td>
<td><code>AzureEventHubSource</code></td>
</tr>
<tr>
<td>
<code>metadata</code><br/>
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
<code>spec</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AzureEventHubSourceSpec">
AzureEventHubSourceSpec
</a>
</em>
</td>
<td>
<br/>
<br/>
<table>
<tr>
<td>
<code>SourceSpec</code><br/>
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
</td>
</tr>
<tr>
<td>
<code>eventHubID</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.EventHubResourceID">
EventHubResourceID
</a>
</em>
</td>
<td>
<p>Resource ID of the Event Hubs instance.</p>
<p>Expected format:
- /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.EventHub/namespaces/{namespaceName}/eventhubs/{eventHubName}</p>
</td>
</tr>
<tr>
<td>
<code>auth</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AzureAuth">
AzureAuth
</a>
</em>
</td>
<td>
<p>Authentication method to interact with the Azure Event Hubs API.</p>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<code>status</code><br/>
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
<h3 id="sources.triggermesh.io/v1alpha1.AzureIOTHubSource">AzureIOTHubSource
</h3>
<div>
<p>AzureIOTHubSource is the Schema for the event source.</p>
</div>
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
<code>apiVersion</code><br/>
string</td>
<td>
<code>
sources.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code><br/>
string
</td>
<td><code>AzureIOTHubSource</code></td>
</tr>
<tr>
<td>
<code>metadata</code><br/>
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
<code>spec</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AzureIOTHubSourceSpec">
AzureIOTHubSourceSpec
</a>
</em>
</td>
<td>
<br/>
<br/>
<table>
<tr>
<td>
<code>SourceSpec</code><br/>
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
</td>
</tr>
<tr>
<td>
<code>auth</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AzureAuth">
AzureAuth
</a>
</em>
</td>
<td>
<p>AzureAuth contains multiple authentication methods for Azure services.</p>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<code>status</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AzureIOTHubSourceStatus">
AzureIOTHubSourceStatus
</a>
</em>
</td>
<td>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.AzureQueueStorageSource">AzureQueueStorageSource
</h3>
<div>
<p>AzureQueueStorageSource is the Schema for the event source.</p>
</div>
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
<code>apiVersion</code><br/>
string</td>
<td>
<code>
sources.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code><br/>
string
</td>
<td><code>AzureQueueStorageSource</code></td>
</tr>
<tr>
<td>
<code>metadata</code><br/>
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
<code>spec</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AzureQueueStorageSourceSpec">
AzureQueueStorageSourceSpec
</a>
</em>
</td>
<td>
<br/>
<br/>
<table>
<tr>
<td>
<code>SourceSpec</code><br/>
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
</td>
</tr>
<tr>
<td>
<code>accountName</code><br/>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>queueName</code><br/>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>accountKey</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.ValueFromField">
ValueFromField
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
<code>status</code><br/>
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
<h3 id="sources.triggermesh.io/v1alpha1.AzureServiceBusQueueSource">AzureServiceBusQueueSource
</h3>
<div>
<p>AzureServiceBusQueueSource is the Schema for the event source.</p>
</div>
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
<code>apiVersion</code><br/>
string</td>
<td>
<code>
sources.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code><br/>
string
</td>
<td><code>AzureServiceBusQueueSource</code></td>
</tr>
<tr>
<td>
<code>metadata</code><br/>
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
<code>spec</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AzureServiceBusQueueSourceSpec">
AzureServiceBusQueueSourceSpec
</a>
</em>
</td>
<td>
<br/>
<br/>
<table>
<tr>
<td>
<code>SourceSpec</code><br/>
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
</td>
</tr>
<tr>
<td>
<code>auth</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AzureAuth">
AzureAuth
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
<code>status</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AzureServiceBusQueueSourceStatus">
AzureServiceBusQueueSourceStatus
</a>
</em>
</td>
<td>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.GoogleCloudAuditLogsSource">GoogleCloudAuditLogsSource
</h3>
<div>
<p>GoogleCloudAuditLogsSource is the Schema for the event source.</p>
</div>
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
<code>apiVersion</code><br/>
string</td>
<td>
<code>
sources.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code><br/>
string
</td>
<td><code>GoogleCloudAuditLogsSource</code></td>
</tr>
<tr>
<td>
<code>metadata</code><br/>
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
<code>spec</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.GoogleCloudAuditLogsSourceSpec">
GoogleCloudAuditLogsSourceSpec
</a>
</em>
</td>
<td>
<br/>
<br/>
<table>
<tr>
<td>
<code>SourceSpec</code><br/>
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
</td>
</tr>
<tr>
<td>
<code>serviceName</code><br/>
<em>
string
</em>
</td>
<td>
<p>The GCP service this instance should source audit logs from. Required.
example: compute.googleapis.com</p>
</td>
</tr>
<tr>
<td>
<code>methodName</code><br/>
<em>
string
</em>
</td>
<td>
<p>The name of the service method or operation. For API calls,
this should be the name of the API method. Required.
beta.compute.instances.insert</p>
</td>
</tr>
<tr>
<td>
<code>resourceName</code><br/>
<em>
string
</em>
</td>
<td>
<p>The resource or collection that is the target of the
operation. The name is a scheme-less URI, not including the
API service name.
example: &ldquo;projects/PROJECT_ID/zones/us-central1-a/instances&rdquo;</p>
</td>
</tr>
<tr>
<td>
<code>pubsub</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.GoogleCloudAuditLogsSourcePubSubSpec">
GoogleCloudAuditLogsSourcePubSubSpec
</a>
</em>
</td>
<td>
<p>Settings related to the Pub/Sub resources associated with the Audit Logs event sink.</p>
</td>
</tr>
<tr>
<td>
<code>serviceAccountKey</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.ValueFromField">
ValueFromField
</a>
</em>
</td>
<td>
<p>Service account key in JSON format.
<a href="https://cloud.google.com/iam/docs/creating-managing-service-account-keys">https://cloud.google.com/iam/docs/creating-managing-service-account-keys</a></p>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<code>status</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.GoogleCloudAuditLogsSourceStatus">
GoogleCloudAuditLogsSourceStatus
</a>
</em>
</td>
<td>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.GoogleCloudBillingSource">GoogleCloudBillingSource
</h3>
<div>
<p>GoogleCloudBillingSource is the Schema for the event source.</p>
</div>
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
<code>apiVersion</code><br/>
string</td>
<td>
<code>
sources.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code><br/>
string
</td>
<td><code>GoogleCloudBillingSource</code></td>
</tr>
<tr>
<td>
<code>metadata</code><br/>
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
<code>spec</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.GoogleCloudBillingSourceSpec">
GoogleCloudBillingSourceSpec
</a>
</em>
</td>
<td>
<br/>
<br/>
<table>
<tr>
<td>
<code>SourceSpec</code><br/>
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
</td>
</tr>
<tr>
<td>
<code>billingAccountId</code><br/>
<em>
string
</em>
</td>
<td>
<p>The identifier for the Cloud Billing account owning the budget.</p>
</td>
</tr>
<tr>
<td>
<code>budgetId</code><br/>
<em>
string
</em>
</td>
<td>
<p>The identifier for the Cloud Billing budget.
You can locate the budget&rsquo;s ID in your budget under Manage notifications.
The ID is displayed after you select Connect a Pub/Sub topic to this budget.</p>
</td>
</tr>
<tr>
<td>
<code>pubsub</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.GoogleCloudBillingSourcePubSubSpec">
GoogleCloudBillingSourcePubSubSpec
</a>
</em>
</td>
<td>
<p>Settings related to the Pub/Sub resources associated with the Billing budget event sink.</p>
</td>
</tr>
<tr>
<td>
<code>serviceAccountKey</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.ValueFromField">
ValueFromField
</a>
</em>
</td>
<td>
<p>Service account key in JSON format.
<a href="https://cloud.google.com/iam/docs/creating-managing-service-account-keys">https://cloud.google.com/iam/docs/creating-managing-service-account-keys</a></p>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<code>status</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.GoogleCloudBillingSourceStatus">
GoogleCloudBillingSourceStatus
</a>
</em>
</td>
<td>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.GoogleCloudPubSubSource">GoogleCloudPubSubSource
</h3>
<div>
<p>GoogleCloudPubSubSource is the Schema for the event source.</p>
</div>
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
<code>apiVersion</code><br/>
string</td>
<td>
<code>
sources.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code><br/>
string
</td>
<td><code>GoogleCloudPubSubSource</code></td>
</tr>
<tr>
<td>
<code>metadata</code><br/>
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
<code>spec</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.GoogleCloudPubSubSourceSpec">
GoogleCloudPubSubSourceSpec
</a>
</em>
</td>
<td>
<br/>
<br/>
<table>
<tr>
<td>
<code>SourceSpec</code><br/>
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
</td>
</tr>
<tr>
<td>
<code>topic</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.GCloudResourceName">
GCloudResourceName
</a>
</em>
</td>
<td>
<p>Full resource name of the Pub/Sub topic to subscribe to, in the
format &ldquo;projects/{project_name}/topics/{topic_name}&rdquo;.</p>
</td>
</tr>
<tr>
<td>
<code>subscriptionID</code><br/>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
<p>ID of the subscription to use to pull messages from the topic.</p>
<p>If supplied, this subscription must 1) exist and 2) belong to the
provided topic. Otherwise, a pull subscription to that topic is
created on behalf of the user.</p>
</td>
</tr>
<tr>
<td>
<code>serviceAccountKey</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.ValueFromField">
ValueFromField
</a>
</em>
</td>
<td>
<p>Service account key in JSON format.
<a href="https://cloud.google.com/iam/docs/creating-managing-service-account-keys">https://cloud.google.com/iam/docs/creating-managing-service-account-keys</a></p>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<code>status</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.GoogleCloudPubSubSourceStatus">
GoogleCloudPubSubSourceStatus
</a>
</em>
</td>
<td>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.GoogleCloudRepositoriesSource">GoogleCloudRepositoriesSource
</h3>
<div>
<p>GoogleCloudRepositoriesSource is the Schema for the event source.</p>
</div>
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
<code>apiVersion</code><br/>
string</td>
<td>
<code>
sources.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code><br/>
string
</td>
<td><code>GoogleCloudRepositoriesSource</code></td>
</tr>
<tr>
<td>
<code>metadata</code><br/>
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
<code>spec</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.GoogleCloudRepositoriesSourceSpec">
GoogleCloudRepositoriesSourceSpec
</a>
</em>
</td>
<td>
<br/>
<br/>
<table>
<tr>
<td>
<code>SourceSpec</code><br/>
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
</td>
</tr>
<tr>
<td>
<code>repository</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.GCloudResourceName">
GCloudResourceName
</a>
</em>
</td>
<td>
<p>Name of the Cloud repo to receive notifications from.</p>
</td>
</tr>
<tr>
<td>
<code>pubsub</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.GoogleCloudRepositoriesSourcePubSubSpec">
GoogleCloudRepositoriesSourcePubSubSpec
</a>
</em>
</td>
<td>
<p>Settings related to the Pub/Sub resources associated with the repo events.</p>
</td>
</tr>
<tr>
<td>
<code>serviceAccountKey</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.ValueFromField">
ValueFromField
</a>
</em>
</td>
<td>
<p>Service account key in JSON format.
<a href="https://cloud.google.com/iam/docs/creating-managing-service-account-keys">https://cloud.google.com/iam/docs/creating-managing-service-account-keys</a></p>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<code>status</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.GoogleCloudRepositoriesSourceStatus">
GoogleCloudRepositoriesSourceStatus
</a>
</em>
</td>
<td>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.GoogleCloudStorageSource">GoogleCloudStorageSource
</h3>
<div>
<p>GoogleCloudStorageSource is the Schema for the event source.</p>
</div>
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
<code>apiVersion</code><br/>
string</td>
<td>
<code>
sources.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code><br/>
string
</td>
<td><code>GoogleCloudStorageSource</code></td>
</tr>
<tr>
<td>
<code>metadata</code><br/>
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
<code>spec</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.GoogleCloudStorageSourceSpec">
GoogleCloudStorageSourceSpec
</a>
</em>
</td>
<td>
<br/>
<br/>
<table>
<tr>
<td>
<code>SourceSpec</code><br/>
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
</td>
</tr>
<tr>
<td>
<code>bucket</code><br/>
<em>
string
</em>
</td>
<td>
<p>Name of the Cloud Storage bucket to receive change notifications from.</p>
</td>
</tr>
<tr>
<td>
<code>pubsub</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.GoogleCloudStorageSourcePubSubSpec">
GoogleCloudStorageSourcePubSubSpec
</a>
</em>
</td>
<td>
<p>Settings related to the Pub/Sub resources associated with the bucket.</p>
</td>
</tr>
<tr>
<td>
<code>eventTypes</code><br/>
<em>
[]string
</em>
</td>
<td>
<em>(Optional)</em>
<p>Types of events to subscribe to.</p>
<p>The list of available event types can be found at
<a href="https://cloud.google.com/storage/docs/pubsub-notifications#events">https://cloud.google.com/storage/docs/pubsub-notifications#events</a></p>
<p>All types are selected when this attribute is not set.</p>
</td>
</tr>
<tr>
<td>
<code>serviceAccountKey</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.ValueFromField">
ValueFromField
</a>
</em>
</td>
<td>
<p>Service account key in JSON format.
<a href="https://cloud.google.com/iam/docs/creating-managing-service-account-keys">https://cloud.google.com/iam/docs/creating-managing-service-account-keys</a></p>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<code>status</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.GoogleCloudStorageSourceStatus">
GoogleCloudStorageSourceStatus
</a>
</em>
</td>
<td>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.HTTPPollerSource">HTTPPollerSource
</h3>
<div>
<p>HTTPPollerSource is the schema for the event source.</p>
</div>
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
<code>apiVersion</code><br/>
string</td>
<td>
<code>
sources.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code><br/>
string
</td>
<td><code>HTTPPollerSource</code></td>
</tr>
<tr>
<td>
<code>metadata</code><br/>
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
<code>spec</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.HTTPPollerSourceSpec">
HTTPPollerSourceSpec
</a>
</em>
</td>
<td>
<br/>
<br/>
<table>
<tr>
<td>
<code>SourceSpec</code><br/>
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
<p>inherits duck/v1 SourceSpec, which currently provides:
* Sink - a reference to an object that will resolve to a domain name or
a URI directly to use as the sink.
* CloudEventOverrides - defines overrides to control the output format
and modifications of the event sent to the sink.</p>
</td>
</tr>
<tr>
<td>
<code>eventType</code><br/>
<em>
string
</em>
</td>
<td>
<p>Value of the CloudEvents &lsquo;type&rsquo; attribute to set on ingested events.
<a href="https://github.com/cloudevents/spec/blob/v1.0.1/spec.md#type">https://github.com/cloudevents/spec/blob/v1.0.1/spec.md#type</a></p>
</td>
</tr>
<tr>
<td>
<code>eventSource</code><br/>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
<p>Value of the CloudEvents &lsquo;source&rsquo; attribute to set on ingested events.
<a href="https://github.com/cloudevents/spec/blob/v1.0.1/spec.md#source-1">https://github.com/cloudevents/spec/blob/v1.0.1/spec.md#source-1</a></p>
</td>
</tr>
<tr>
<td>
<code>endpoint</code><br/>
<em>
<a href="https://pkg.go.dev/knative.dev/pkg/apis#URL">
knative.dev/pkg/apis.URL
</a>
</em>
</td>
<td>
<p>HTTP/S URL of the endpoint to poll data from.</p>
</td>
</tr>
<tr>
<td>
<code>method</code><br/>
<em>
string
</em>
</td>
<td>
<p>HTTP request method to use in requests to the specified &lsquo;endpoint&rsquo;.
<a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Methods">https://developer.mozilla.org/en-US/docs/Web/HTTP/Methods</a></p>
</td>
</tr>
<tr>
<td>
<code>skipVerify</code><br/>
<em>
bool
</em>
</td>
<td>
<em>(Optional)</em>
<p>Controls whether the HTTP client verifies the server&rsquo;s certificate
chain and host name when communicating over TLS.</p>
</td>
</tr>
<tr>
<td>
<code>caCertificate</code><br/>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
<p>CA certificate in X.509 format the HTTP client should use to verify
the identity of remote servers when communicating over TLS.</p>
</td>
</tr>
<tr>
<td>
<code>basicAuthUsername</code><br/>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
<p>User name to set in HTTP requests that require HTTP Basic authentication.</p>
</td>
</tr>
<tr>
<td>
<code>basicAuthPassword</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.ValueFromField">
ValueFromField
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>Password to set in HTTP requests that require HTTP Basic authentication.</p>
</td>
</tr>
<tr>
<td>
<code>headers</code><br/>
<em>
map[string]string
</em>
</td>
<td>
<em>(Optional)</em>
<p>HTTP headers to include in HTTP requests.</p>
</td>
</tr>
<tr>
<td>
<code>interval</code><br/>
<em>
github.com/triggermesh/triggermesh/pkg/apis.Duration
</em>
</td>
<td>
<p>Duration which defines how often the HTTP/S endpoint should be polled.
Expressed as a duration string, which format is documented at <a href="https://pkg.go.dev/time#ParseDuration">https://pkg.go.dev/time#ParseDuration</a>.</p>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<code>status</code><br/>
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
<h3 id="sources.triggermesh.io/v1alpha1.OCIMetricsSource">OCIMetricsSource
</h3>
<div>
<p>OCIMetricsSource is the schema for the event source.</p>
</div>
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
<code>apiVersion</code><br/>
string</td>
<td>
<code>
sources.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code><br/>
string
</td>
<td><code>OCIMetricsSource</code></td>
</tr>
<tr>
<td>
<code>metadata</code><br/>
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
<code>spec</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.OCIMetricsSourceSpec">
OCIMetricsSourceSpec
</a>
</em>
</td>
<td>
<br/>
<br/>
<table>
<tr>
<td>
<code>SourceSpec</code><br/>
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
<p>inherits duck/v1 SourceSpec, which currently provides:
* Sink - a reference to an object that will resolve to a domain name or
a URI directly to use as the sink.
* CloudEventOverrides - defines overrides to control the output format
and modifications of the event sent to the sink.</p>
</td>
</tr>
<tr>
<td>
<code>oracleApiPrivateKey</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.ValueFromField">
ValueFromField
</a>
</em>
</td>
<td>
<p>Oracle User API private key</p>
</td>
</tr>
<tr>
<td>
<code>oracleApiPrivateKeyPassphrase</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.ValueFromField">
ValueFromField
</a>
</em>
</td>
<td>
<p>Oracle User API private key passphrase</p>
</td>
</tr>
<tr>
<td>
<code>oracleApiPrivateKeyFingerprint</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.ValueFromField">
ValueFromField
</a>
</em>
</td>
<td>
<p>Oracle User API cert fingerprint</p>
</td>
</tr>
<tr>
<td>
<code>oracleTenancy</code><br/>
<em>
string
</em>
</td>
<td>
<p>Oracle Tenancy OCID</p>
</td>
</tr>
<tr>
<td>
<code>oracleUser</code><br/>
<em>
string
</em>
</td>
<td>
<p>Oracle User OCID associated with the API key</p>
</td>
</tr>
<tr>
<td>
<code>oracleRegion</code><br/>
<em>
string
</em>
</td>
<td>
<p>Oracle Cloud Region</p>
</td>
</tr>
<tr>
<td>
<code>metricsPollingFrequency</code><br/>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
<p>OCI Metrics Polling Frequency</p>
</td>
</tr>
<tr>
<td>
<code>metrics</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.OCIMetrics">
[]OCIMetrics
</a>
</em>
</td>
<td>
<p>Array of metrics</p>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<code>status</code><br/>
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
<h3 id="sources.triggermesh.io/v1alpha1.SalesforceSource">SalesforceSource
</h3>
<div>
<p>SalesforceSource is the Schema for the event source.</p>
</div>
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
<code>apiVersion</code><br/>
string</td>
<td>
<code>
sources.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code><br/>
string
</td>
<td><code>SalesforceSource</code></td>
</tr>
<tr>
<td>
<code>metadata</code><br/>
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
<code>spec</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.SalesforceSourceSpec">
SalesforceSourceSpec
</a>
</em>
</td>
<td>
<br/>
<br/>
<table>
<tr>
<td>
<code>SourceSpec</code><br/>
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
</td>
</tr>
<tr>
<td>
<code>auth</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.SalesforceAuth">
SalesforceAuth
</a>
</em>
</td>
<td>
<p>Authentication method to interact with the Salesforce API.</p>
</td>
</tr>
<tr>
<td>
<code>apiVersion</code><br/>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
<p>APIVersion at Salesforce.</p>
</td>
</tr>
<tr>
<td>
<code>subscription</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.SalesforceSubscription">
SalesforceSubscription
</a>
</em>
</td>
<td>
<p>Subscription to a Salesforce channel</p>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<code>status</code><br/>
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
<div>
<p>SlackSource is the schema for the event source.</p>
</div>
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
<code>apiVersion</code><br/>
string</td>
<td>
<code>
sources.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code><br/>
string
</td>
<td><code>SlackSource</code></td>
</tr>
<tr>
<td>
<code>metadata</code><br/>
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
<code>spec</code><br/>
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
<code>SourceSpec</code><br/>
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
<p>inherits duck/v1 SourceSpec, which currently provides:
* Sink - a reference to an object that will resolve to a domain name or
a URI directly to use as the sink.
* CloudEventOverrides - defines overrides to control the output format
and modifications of the event sent to the sink.</p>
</td>
</tr>
<tr>
<td>
<code>signingSecret</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.ValueFromField">
ValueFromField
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
<code>appID</code><br/>
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
<code>status</code><br/>
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
<h3 id="sources.triggermesh.io/v1alpha1.TwilioSource">TwilioSource
</h3>
<div>
<p>TwilioSource is the schema for the event source.</p>
</div>
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
<code>apiVersion</code><br/>
string</td>
<td>
<code>
sources.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code><br/>
string
</td>
<td><code>TwilioSource</code></td>
</tr>
<tr>
<td>
<code>metadata</code><br/>
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
<code>spec</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.TwilioSourceSpec">
TwilioSourceSpec
</a>
</em>
</td>
<td>
<br/>
<br/>
<table>
<tr>
<td>
<code>SourceSpec</code><br/>
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
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<code>status</code><br/>
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
<h3 id="sources.triggermesh.io/v1alpha1.WebhookSource">WebhookSource
</h3>
<div>
<p>WebhookSource is the schema for the event source.</p>
</div>
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
<code>apiVersion</code><br/>
string</td>
<td>
<code>
sources.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code><br/>
string
</td>
<td><code>WebhookSource</code></td>
</tr>
<tr>
<td>
<code>metadata</code><br/>
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
<code>spec</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.WebhookSourceSpec">
WebhookSourceSpec
</a>
</em>
</td>
<td>
<br/>
<br/>
<table>
<tr>
<td>
<code>SourceSpec</code><br/>
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
<p>inherits duck/v1 SourceSpec, which currently provides:
* Sink - a reference to an object that will resolve to a domain name or
a URI directly to use as the sink.
* CloudEventOverrides - defines overrides to control the output format
and modifications of the event sent to the sink.</p>
</td>
</tr>
<tr>
<td>
<code>eventType</code><br/>
<em>
string
</em>
</td>
<td>
<p>Value of the CloudEvents &lsquo;type&rsquo; attribute to set on ingested events.
<a href="https://github.com/cloudevents/spec/blob/v1.0.1/spec.md#type">https://github.com/cloudevents/spec/blob/v1.0.1/spec.md#type</a></p>
</td>
</tr>
<tr>
<td>
<code>eventSource</code><br/>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
<p>Value of the CloudEvents &lsquo;source&rsquo; attribute to set on ingested events.
<a href="https://github.com/cloudevents/spec/blob/v1.0.1/spec.md#source-1">https://github.com/cloudevents/spec/blob/v1.0.1/spec.md#source-1</a></p>
</td>
</tr>
<tr>
<td>
<code>basicAuthUsername</code><br/>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
<p>User name HTTP clients must set to authenticate with the webhook using HTTP Basic authentication.</p>
</td>
</tr>
<tr>
<td>
<code>basicAuthPassword</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.ValueFromField">
ValueFromField
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>Password HTTP clients must set to authenticate with the webhook using HTTP Basic authentication.</p>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<code>status</code><br/>
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
<div>
<p>ZendeskSource is the schema for the event source.</p>
</div>
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
<code>apiVersion</code><br/>
string</td>
<td>
<code>
sources.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code><br/>
string
</td>
<td><code>ZendeskSource</code></td>
</tr>
<tr>
<td>
<code>metadata</code><br/>
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
<code>spec</code><br/>
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
<code>SourceSpec</code><br/>
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
<p>inherits duck/v1 SourceSpec, which currently provides:
* Sink - a reference to an object that will resolve to a domain name or
a URI directly to use as the sink.
* CloudEventOverrides - defines overrides to control the output format
and modifications of the event sent to the sink.</p>
</td>
</tr>
<tr>
<td>
<code>token</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.ValueFromField">
ValueFromField
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
<code>email</code><br/>
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
<code>webhookPassword</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.ValueFromField">
ValueFromField
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
<code>webhookUsername</code><br/>
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
<code>subdomain</code><br/>
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
<code>status</code><br/>
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
<h3 id="sources.triggermesh.io/v1alpha1.AWSCloudWatchLogsSourceSpec">AWSCloudWatchLogsSourceSpec
</h3>
<p>
(<em>Appears on:</em><a href="#sources.triggermesh.io/v1alpha1.AWSCloudWatchLogsSource">AWSCloudWatchLogsSource</a>)
</p>
<div>
<p>AWSCloudWatchLogsSourceSpec defines the desired state of the event source.</p>
</div>
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
<code>SourceSpec</code><br/>
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
</td>
</tr>
<tr>
<td>
<code>arn</code><br/>
<em>
github.com/triggermesh/triggermesh/pkg/apis.ARN
</em>
</td>
<td>
<p>ARN of the Log Group to source data from.
<a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazoncloudwatchlogs.html#amazoncloudwatchlogs-resources-for-iam-policies">https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazoncloudwatchlogs.html#amazoncloudwatchlogs-resources-for-iam-policies</a></p>
</td>
</tr>
<tr>
<td>
<code>pollingInterval</code><br/>
<em>
github.com/triggermesh/triggermesh/pkg/apis.Duration
</em>
</td>
<td>
<em>(Optional)</em>
<p>Duration which defines how often logs should be pulled from Amazon CloudWatch Logs.
Expressed as a duration string, which format is documented at <a href="https://pkg.go.dev/time#ParseDuration">https://pkg.go.dev/time#ParseDuration</a>.</p>
<p>Defaults to 5m</p>
</td>
</tr>
<tr>
<td>
<code>credentials</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AWSSecurityCredentials">
AWSSecurityCredentials
</a>
</em>
</td>
<td>
<p>Credentials to interact with the Amazon CloudWatch Logs API.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.AWSCloudWatchMetric">AWSCloudWatchMetric
</h3>
<p>
(<em>Appears on:</em><a href="#sources.triggermesh.io/v1alpha1.AWSCloudWatchMetricStat">AWSCloudWatchMetricStat</a>)
</p>
<div>
<p>AWSCloudWatchMetric is a metric definition.</p>
</div>
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
<code>dimensions</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AWSCloudWatchMetricDimension">
[]AWSCloudWatchMetricDimension
</a>
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>metricName</code><br/>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>namespace</code><br/>
<em>
string
</em>
</td>
<td>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.AWSCloudWatchMetricDimension">AWSCloudWatchMetricDimension
</h3>
<p>
(<em>Appears on:</em><a href="#sources.triggermesh.io/v1alpha1.AWSCloudWatchMetric">AWSCloudWatchMetric</a>)
</p>
<div>
<p>AWSCloudWatchMetricDimension represents the dimensions of a metric.</p>
</div>
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
<code>name</code><br/>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>value</code><br/>
<em>
string
</em>
</td>
<td>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.AWSCloudWatchMetricQuery">AWSCloudWatchMetricQuery
</h3>
<p>
(<em>Appears on:</em><a href="#sources.triggermesh.io/v1alpha1.AWSCloudWatchSourceSpec">AWSCloudWatchSourceSpec</a>)
</p>
<div>
<p>AWSCloudWatchMetricQuery represents a CloudWatch MetricDataQuery.
<a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_MetricDataQuery.html">https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_MetricDataQuery.html</a></p>
</div>
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
<code>name</code><br/>
<em>
string
</em>
</td>
<td>
<p>Unique short name that identifies the query.</p>
</td>
</tr>
<tr>
<td>
<code>expression</code><br/>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
<p>Math expression to be performed on the metric data.</p>
</td>
</tr>
<tr>
<td>
<code>metric</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AWSCloudWatchMetricStat">
AWSCloudWatchMetricStat
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>Representation of a metric with statistics, period, and units, but no math expression.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.AWSCloudWatchMetricStat">AWSCloudWatchMetricStat
</h3>
<p>
(<em>Appears on:</em><a href="#sources.triggermesh.io/v1alpha1.AWSCloudWatchMetricQuery">AWSCloudWatchMetricQuery</a>)
</p>
<div>
<p>AWSCloudWatchMetricStat is a representation of a metric with statistics,
period, and units, but no math expression.</p>
</div>
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
<code>metric</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AWSCloudWatchMetric">
AWSCloudWatchMetric
</a>
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>period</code><br/>
<em>
int64
</em>
</td>
<td>
<p>Definition of the metric</p>
</td>
</tr>
<tr>
<td>
<code>stat</code><br/>
<em>
string
</em>
</td>
<td>
<p>metric resolution in seconds</p>
</td>
</tr>
<tr>
<td>
<code>unit</code><br/>
<em>
string
</em>
</td>
<td>
<p>statistic type to use</p>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.AWSCloudWatchSourceSpec">AWSCloudWatchSourceSpec
</h3>
<p>
(<em>Appears on:</em><a href="#sources.triggermesh.io/v1alpha1.AWSCloudWatchSource">AWSCloudWatchSource</a>)
</p>
<div>
<p>AWSCloudWatchSourceSpec defines the desired state of the event source.</p>
</div>
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
<code>SourceSpec</code><br/>
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
</td>
</tr>
<tr>
<td>
<code>region</code><br/>
<em>
string
</em>
</td>
<td>
<p>Code of the AWS region to source metrics from.
Available region codes are documented at
<a href="https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints">https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints</a>.</p>
</td>
</tr>
<tr>
<td>
<code>pollingInterval</code><br/>
<em>
github.com/triggermesh/triggermesh/pkg/apis.Duration
</em>
</td>
<td>
<em>(Optional)</em>
<p>Duration which defines how often metrics should be pulled from Amazon CloudWatch.
Expressed as a duration string, which format is documented at <a href="https://pkg.go.dev/time#ParseDuration">https://pkg.go.dev/time#ParseDuration</a>.</p>
<p>Defaults to 5m</p>
</td>
</tr>
<tr>
<td>
<code>metricQueries</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AWSCloudWatchMetricQuery">
[]AWSCloudWatchMetricQuery
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>List of queries that determine what metrics will be sourced from Amazon CloudWatch.</p>
</td>
</tr>
<tr>
<td>
<code>credentials</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AWSSecurityCredentials">
AWSSecurityCredentials
</a>
</em>
</td>
<td>
<p>Credentials to interact with the Amazon CloudWatch API.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.AWSCodeCommitSourceSpec">AWSCodeCommitSourceSpec
</h3>
<p>
(<em>Appears on:</em><a href="#sources.triggermesh.io/v1alpha1.AWSCodeCommitSource">AWSCodeCommitSource</a>)
</p>
<div>
<p>AWSCodeCommitSourceSpec defines the desired state of the event source.</p>
</div>
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
<code>SourceSpec</code><br/>
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
</td>
</tr>
<tr>
<td>
<code>arn</code><br/>
<em>
github.com/triggermesh/triggermesh/pkg/apis.ARN
</em>
</td>
<td>
<p>Repository ARN
<a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awscodecommit.html#awscodecommit-resources-for-iam-policies">https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awscodecommit.html#awscodecommit-resources-for-iam-policies</a></p>
</td>
</tr>
<tr>
<td>
<code>branch</code><br/>
<em>
string
</em>
</td>
<td>
<p>Name of the Git branch this source observes.</p>
</td>
</tr>
<tr>
<td>
<code>eventTypes</code><br/>
<em>
[]string
</em>
</td>
<td>
<p>List of event types that should be processed by the source.
Valid values: [push, pull_request]</p>
</td>
</tr>
<tr>
<td>
<code>credentials</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AWSSecurityCredentials">
AWSSecurityCredentials
</a>
</em>
</td>
<td>
<p>Credentials to interact with the Amazon CodeCommit API.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.AWSCognitoIdentitySourceSpec">AWSCognitoIdentitySourceSpec
</h3>
<p>
(<em>Appears on:</em><a href="#sources.triggermesh.io/v1alpha1.AWSCognitoIdentitySource">AWSCognitoIdentitySource</a>)
</p>
<div>
<p>AWSCognitoIdentitySourceSpec defines the desired state of the event source.</p>
</div>
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
<code>SourceSpec</code><br/>
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
</td>
</tr>
<tr>
<td>
<code>arn</code><br/>
<em>
github.com/triggermesh/triggermesh/pkg/apis.ARN
</em>
</td>
<td>
<p>Identity Pool ARN
<a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazoncognitoidentity.html#amazoncognitoidentity-resources-for-iam-policies">https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazoncognitoidentity.html#amazoncognitoidentity-resources-for-iam-policies</a></p>
</td>
</tr>
<tr>
<td>
<code>credentials</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AWSSecurityCredentials">
AWSSecurityCredentials
</a>
</em>
</td>
<td>
<p>Credentials to interact with the Amazon Cognito API.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.AWSCognitoUserPoolSourceSpec">AWSCognitoUserPoolSourceSpec
</h3>
<p>
(<em>Appears on:</em><a href="#sources.triggermesh.io/v1alpha1.AWSCognitoUserPoolSource">AWSCognitoUserPoolSource</a>)
</p>
<div>
<p>AWSCognitoUserPoolSourceSpec defines the desired state of the event source.</p>
</div>
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
<code>SourceSpec</code><br/>
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
</td>
</tr>
<tr>
<td>
<code>arn</code><br/>
<em>
github.com/triggermesh/triggermesh/pkg/apis.ARN
</em>
</td>
<td>
<p>User Pool ARN
<a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazoncognitouserpools.html#amazoncognitouserpools-resources-for-iam-policies">https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazoncognitouserpools.html#amazoncognitouserpools-resources-for-iam-policies</a></p>
</td>
</tr>
<tr>
<td>
<code>credentials</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AWSSecurityCredentials">
AWSSecurityCredentials
</a>
</em>
</td>
<td>
<p>Credentials to interact with the Amazon Cognito API.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.AWSDynamoDBSourceSpec">AWSDynamoDBSourceSpec
</h3>
<p>
(<em>Appears on:</em><a href="#sources.triggermesh.io/v1alpha1.AWSDynamoDBSource">AWSDynamoDBSource</a>)
</p>
<div>
<p>AWSDynamoDBSourceSpec defines the desired state of the event source.</p>
</div>
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
<code>SourceSpec</code><br/>
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
</td>
</tr>
<tr>
<td>
<code>arn</code><br/>
<em>
github.com/triggermesh/triggermesh/pkg/apis.ARN
</em>
</td>
<td>
<p>Table ARN
<a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazondynamodb.html#amazondynamodb-resources-for-iam-policies">https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazondynamodb.html#amazondynamodb-resources-for-iam-policies</a></p>
</td>
</tr>
<tr>
<td>
<code>credentials</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AWSSecurityCredentials">
AWSSecurityCredentials
</a>
</em>
</td>
<td>
<p>Credentials to interact with the Amazon DynamoDB API.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.AWSKinesisSourceSpec">AWSKinesisSourceSpec
</h3>
<p>
(<em>Appears on:</em><a href="#sources.triggermesh.io/v1alpha1.AWSKinesisSource">AWSKinesisSource</a>)
</p>
<div>
<p>AWSKinesisSourceSpec defines the desired state of the event source.</p>
</div>
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
<code>SourceSpec</code><br/>
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
</td>
</tr>
<tr>
<td>
<code>arn</code><br/>
<em>
github.com/triggermesh/triggermesh/pkg/apis.ARN
</em>
</td>
<td>
<p>Stream ARN
<a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonkinesis.html#amazonkinesis-resources-for-iam-policies">https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonkinesis.html#amazonkinesis-resources-for-iam-policies</a></p>
</td>
</tr>
<tr>
<td>
<code>credentials</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AWSSecurityCredentials">
AWSSecurityCredentials
</a>
</em>
</td>
<td>
<p>Credentials to interact with the Amazon Kinesis API.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.AWSPerformanceInsightsSourceSpec">AWSPerformanceInsightsSourceSpec
</h3>
<p>
(<em>Appears on:</em><a href="#sources.triggermesh.io/v1alpha1.AWSPerformanceInsightsSource">AWSPerformanceInsightsSource</a>)
</p>
<div>
<p>AWSPerformanceInsightsSourceSpec defines the desired state of the event source.</p>
</div>
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
<code>SourceSpec</code><br/>
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
</td>
</tr>
<tr>
<td>
<code>arn</code><br/>
<em>
github.com/triggermesh/triggermesh/pkg/apis.ARN
</em>
</td>
<td>
<p>ARN of the RDS instance to receive metrics for.
<a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonrds.html#amazonrds-resources-for-iam-policies">https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonrds.html#amazonrds-resources-for-iam-policies</a></p>
</td>
</tr>
<tr>
<td>
<code>pollingInterval</code><br/>
<em>
github.com/triggermesh/triggermesh/pkg/apis.Duration
</em>
</td>
<td>
<p>Duration which defines how often metrics should be pulled from Amazon Performance Insights.
Expressed as a duration string, which format is documented at <a href="https://pkg.go.dev/time#ParseDuration">https://pkg.go.dev/time#ParseDuration</a>.</p>
</td>
</tr>
<tr>
<td>
<code>metrics</code><br/>
<em>
[]string
</em>
</td>
<td>
<p>List of queries that determine what metrics will be sourced from Amazon Performance Insights.</p>
<p>Each item represents the &lsquo;metric&rsquo; attribute of a MetricQuery.
<a href="https://docs.aws.amazon.com/performance-insights/latest/APIReference/API_MetricQuery.html">https://docs.aws.amazon.com/performance-insights/latest/APIReference/API_MetricQuery.html</a></p>
</td>
</tr>
<tr>
<td>
<code>credentials</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AWSSecurityCredentials">
AWSSecurityCredentials
</a>
</em>
</td>
<td>
<p>Credentials to interact with the Amazon RDS and Performance Insights APIs.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.AWSS3SourceSpec">AWSS3SourceSpec
</h3>
<p>
(<em>Appears on:</em><a href="#sources.triggermesh.io/v1alpha1.AWSS3Source">AWSS3Source</a>)
</p>
<div>
<p>AWSS3SourceSpec defines the desired state of the event source.</p>
</div>
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
<code>SourceSpec</code><br/>
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
</td>
</tr>
<tr>
<td>
<code>arn</code><br/>
<em>
github.com/triggermesh/triggermesh/pkg/apis.ARN
</em>
</td>
<td>
<p>Bucket ARN
<a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazons3.html#amazons3-resources-for-iam-policies">https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazons3.html#amazons3-resources-for-iam-policies</a></p>
<p>Although not technically required by S3, we enforce that bucket ARNs
include a region and an account ID, because this information is
required by the reconciler to operate properly.</p>
</td>
</tr>
<tr>
<td>
<code>eventTypes</code><br/>
<em>
[]string
</em>
</td>
<td>
<p>List of event types that the source should subscribe to.
Accepted values:
<a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_QueueConfiguration.html">https://docs.aws.amazon.com/AmazonS3/latest/API/API_QueueConfiguration.html</a>
<a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/notification-how-to-event-types-and-destinations.html">https://docs.aws.amazon.com/AmazonS3/latest/userguide/notification-how-to-event-types-and-destinations.html</a></p>
</td>
</tr>
<tr>
<td>
<code>queueARN</code><br/>
<em>
github.com/triggermesh/triggermesh/pkg/apis.ARN
</em>
</td>
<td>
<em>(Optional)</em>
<p>SQS Queue ARN
<a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonsqs.html#amazonsqs-resources-for-iam-policies">https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonsqs.html#amazonsqs-resources-for-iam-policies</a></p>
<p>When not provided, a SQS queue for receiving event notifications
from the S3 bucket is automatically created and configured.</p>
</td>
</tr>
<tr>
<td>
<code>credentials</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AWSSecurityCredentials">
AWSSecurityCredentials
</a>
</em>
</td>
<td>
<p>Credentials to interact with the Amazon S3 and SQS APIs.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.AWSS3SourceStatus">AWSS3SourceStatus
</h3>
<p>
(<em>Appears on:</em><a href="#sources.triggermesh.io/v1alpha1.AWSS3Source">AWSS3Source</a>)
</p>
<div>
<p>AWSS3SourceStatus defines the observed state of the event source.</p>
</div>
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
<code>EventSourceStatus</code><br/>
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
<tr>
<td>
<code>queueARN</code><br/>
<em>
github.com/triggermesh/triggermesh/pkg/apis.ARN
</em>
</td>
<td>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.AWSSNSSourceSpec">AWSSNSSourceSpec
</h3>
<p>
(<em>Appears on:</em><a href="#sources.triggermesh.io/v1alpha1.AWSSNSSource">AWSSNSSource</a>)
</p>
<div>
<p>AWSSNSSourceSpec defines the desired state of the event source.</p>
</div>
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
<code>SourceSpec</code><br/>
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
</td>
</tr>
<tr>
<td>
<code>arn</code><br/>
<em>
github.com/triggermesh/triggermesh/pkg/apis.ARN
</em>
</td>
<td>
<p>Topic ARN
<a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonsns.html#amazonsns-resources-for-iam-policies">https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonsns.html#amazonsns-resources-for-iam-policies</a></p>
</td>
</tr>
<tr>
<td>
<code>subscriptionAttributes</code><br/>
<em>
map[string]*string
</em>
</td>
<td>
<em>(Optional)</em>
<p>Attributes to set on the Subscription that is used for receiving messages from the topic.
For a list of supported subscription attributes, please refer to the following resources:
* <a href="https://docs.aws.amazon.com/sns/latest/api/API_SetSubscriptionAttributes.html">https://docs.aws.amazon.com/sns/latest/api/API_SetSubscriptionAttributes.html</a>
* <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-how-it-works.html">https://docs.aws.amazon.com/sns/latest/dg/sns-how-it-works.html</a></p>
</td>
</tr>
<tr>
<td>
<code>credentials</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AWSSecurityCredentials">
AWSSecurityCredentials
</a>
</em>
</td>
<td>
<p>Credentials to interact with the Amazon SNS API.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.AWSSNSSourceStatus">AWSSNSSourceStatus
</h3>
<p>
(<em>Appears on:</em><a href="#sources.triggermesh.io/v1alpha1.AWSSNSSource">AWSSNSSource</a>)
</p>
<div>
<p>AWSSNSSourceStatus defines the observed state of the event source.</p>
</div>
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
<code>EventSourceStatus</code><br/>
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
<tr>
<td>
<code>subscriptionARN</code><br/>
<em>
string
</em>
</td>
<td>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.AWSSQSSourceReceiveOptions">AWSSQSSourceReceiveOptions
</h3>
<p>
(<em>Appears on:</em><a href="#sources.triggermesh.io/v1alpha1.AWSSQSSourceSpec">AWSSQSSourceSpec</a>)
</p>
<div>
<p>AWSSQSSourceReceiveOptions defines options that control the behavior of
Amazon SQS message receivers.</p>
</div>
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
<code>visibilityTimeout</code><br/>
<em>
github.com/triggermesh/triggermesh/pkg/apis.Duration
</em>
</td>
<td>
<em>(Optional)</em>
<p>Period of time during which Amazon SQS prevents other consumers from
receiving and processing a message that has been received via ReceiveMessage.
Expressed as a duration string, which format is documented at <a href="https://pkg.go.dev/time#ParseDuration">https://pkg.go.dev/time#ParseDuration</a>.</p>
<p>If not defined, the overall visibility timeout for the queue is used.</p>
<p>For more details, please refer to the Amazon SQS Developer Guide at
<a href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-visibility-timeout.html">https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-visibility-timeout.html</a>.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.AWSSQSSourceSpec">AWSSQSSourceSpec
</h3>
<p>
(<em>Appears on:</em><a href="#sources.triggermesh.io/v1alpha1.AWSSQSSource">AWSSQSSource</a>)
</p>
<div>
<p>AWSSQSSourceSpec defines the desired state of the event source.</p>
</div>
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
<code>SourceSpec</code><br/>
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
</td>
</tr>
<tr>
<td>
<code>arn</code><br/>
<em>
github.com/triggermesh/triggermesh/pkg/apis.ARN
</em>
</td>
<td>
<p>Queue ARN
<a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonsqs.html#amazonsqs-resources-for-iam-policies">https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonsqs.html#amazonsqs-resources-for-iam-policies</a></p>
</td>
</tr>
<tr>
<td>
<code>receiveOptions</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AWSSQSSourceReceiveOptions">
AWSSQSSourceReceiveOptions
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>Options that control the behavior of message receivers.</p>
</td>
</tr>
<tr>
<td>
<code>credentials</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AWSSecurityCredentials">
AWSSecurityCredentials
</a>
</em>
</td>
<td>
<p>Credentials to interact with the Amazon SQS API.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.AWSSecurityCredentials">AWSSecurityCredentials
</h3>
<p>
(<em>Appears on:</em><a href="#sources.triggermesh.io/v1alpha1.AWSCloudWatchLogsSourceSpec">AWSCloudWatchLogsSourceSpec</a>, <a href="#sources.triggermesh.io/v1alpha1.AWSCloudWatchSourceSpec">AWSCloudWatchSourceSpec</a>, <a href="#sources.triggermesh.io/v1alpha1.AWSCodeCommitSourceSpec">AWSCodeCommitSourceSpec</a>, <a href="#sources.triggermesh.io/v1alpha1.AWSCognitoIdentitySourceSpec">AWSCognitoIdentitySourceSpec</a>, <a href="#sources.triggermesh.io/v1alpha1.AWSCognitoUserPoolSourceSpec">AWSCognitoUserPoolSourceSpec</a>, <a href="#sources.triggermesh.io/v1alpha1.AWSDynamoDBSourceSpec">AWSDynamoDBSourceSpec</a>, <a href="#sources.triggermesh.io/v1alpha1.AWSKinesisSourceSpec">AWSKinesisSourceSpec</a>, <a href="#sources.triggermesh.io/v1alpha1.AWSPerformanceInsightsSourceSpec">AWSPerformanceInsightsSourceSpec</a>, <a href="#sources.triggermesh.io/v1alpha1.AWSS3SourceSpec">AWSS3SourceSpec</a>, <a href="#sources.triggermesh.io/v1alpha1.AWSSNSSourceSpec">AWSSNSSourceSpec</a>, <a href="#sources.triggermesh.io/v1alpha1.AWSSQSSourceSpec">AWSSQSSourceSpec</a>)
</p>
<div>
<p>AWSSecurityCredentials represents a set of AWS security credentials.
See <a href="https://docs.aws.amazon.com/general/latest/gr/aws-security-credentials.html">https://docs.aws.amazon.com/general/latest/gr/aws-security-credentials.html</a></p>
</div>
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
<code>accessKeyID</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.ValueFromField">
ValueFromField
</a>
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>secretAccessKey</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.ValueFromField">
ValueFromField
</a>
</em>
</td>
<td>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.AzureActivityLogsSourceSpec">AzureActivityLogsSourceSpec
</h3>
<p>
(<em>Appears on:</em><a href="#sources.triggermesh.io/v1alpha1.AzureActivityLogsSource">AzureActivityLogsSource</a>)
</p>
<div>
<p>AzureActivityLogsSourceSpec defines the desired state of the event source.</p>
</div>
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
<code>SourceSpec</code><br/>
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
</td>
</tr>
<tr>
<td>
<code>eventHubID</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.EventHubResourceID">
EventHubResourceID
</a>
</em>
</td>
<td>
<p>Resource ID of either the Event Hubs instance or Event Hubs namespace to send activity logs to.
This resource ID also conveniently contains the ID of the subscription which activity logs are to be
subscribed to.</p>
<p>If the resource ID represents an Event Hubs namespace, Azure automatically creates an Event Hub with the name
&lsquo;insights-activity-logs&rsquo; inside that namespace. Otherwise, the user-provided Event Hub is used.</p>
<p>Accepted formats:
* /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.EventHub/namespaces/{namespaceName}/eventHubs/{eventHubName}
* /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.EventHub/namespaces/{namespaceName}</p>
</td>
</tr>
<tr>
<td>
<code>eventHubsSASPolicy</code><br/>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
<p>Name of a SAS policy with Manage permissions inside the Event Hubs namespace referenced in the EventHubID
field.</p>
<p>Defaults to &ldquo;RootManageSharedAccessKey&rdquo;.</p>
<p>References:
* <a href="https://docs.microsoft.com/en-us/rest/api/eventhub/2017-04-01/authorization%20rules%20-%20namespaces/getauthorizationrule">https://docs.microsoft.com/en-us/rest/api/eventhub/2017-04-01/authorization%20rules%20-%20namespaces/getauthorizationrule</a>
* <a href="https://docs.microsoft.com/en-us/azure/event-hubs/authorize-access-shared-access-signature">https://docs.microsoft.com/en-us/azure/event-hubs/authorize-access-shared-access-signature</a></p>
</td>
</tr>
<tr>
<td>
<code>categories</code><br/>
<em>
[]string
</em>
</td>
<td>
<em>(Optional)</em>
<p>Categories of Activity Logs to collect.</p>
<p>All available categories are selected when this attribute is empty.
<a href="https://docs.microsoft.com/en-us/azure/azure-monitor/platform/activity-log-schema#categories">https://docs.microsoft.com/en-us/azure/azure-monitor/platform/activity-log-schema#categories</a></p>
</td>
</tr>
<tr>
<td>
<code>auth</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AzureAuth">
AzureAuth
</a>
</em>
</td>
<td>
<p>Authentication method to interact with the Azure Monitor REST API.
This event source only supports the ServicePrincipal authentication.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.AzureActivityLogsSourceStatus">AzureActivityLogsSourceStatus
</h3>
<p>
(<em>Appears on:</em><a href="#sources.triggermesh.io/v1alpha1.AzureActivityLogsSource">AzureActivityLogsSource</a>)
</p>
<div>
<p>AzureActivityLogsSourceStatus defines the observed state of the event source.</p>
</div>
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
<code>EventSourceStatus</code><br/>
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
<h3 id="sources.triggermesh.io/v1alpha1.AzureAuth">AzureAuth
</h3>
<p>
(<em>Appears on:</em><a href="#sources.triggermesh.io/v1alpha1.AzureActivityLogsSourceSpec">AzureActivityLogsSourceSpec</a>, <a href="#sources.triggermesh.io/v1alpha1.AzureBlobStorageSourceSpec">AzureBlobStorageSourceSpec</a>, <a href="#sources.triggermesh.io/v1alpha1.AzureEventGridSourceSpec">AzureEventGridSourceSpec</a>, <a href="#sources.triggermesh.io/v1alpha1.AzureEventHubSourceSpec">AzureEventHubSourceSpec</a>, <a href="#sources.triggermesh.io/v1alpha1.AzureIOTHubSourceSpec">AzureIOTHubSourceSpec</a>, <a href="#sources.triggermesh.io/v1alpha1.AzureServiceBusQueueSourceSpec">AzureServiceBusQueueSourceSpec</a>)
</p>
<div>
<p>AzureAuth contains multiple authentication methods for Azure services.</p>
</div>
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
<code>servicePrincipal</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AzureServicePrincipal">
AzureServicePrincipal
</a>
</em>
</td>
<td>
<p>Service principals provide a way to create a non-interactive account
associated with your identity to which you grant only the privileges
your app needs to run.
See <a href="https://docs.microsoft.com/en-us/azure/active-directory/develop/app-objects-and-service-principals">https://docs.microsoft.com/en-us/azure/active-directory/develop/app-objects-and-service-principals</a></p>
</td>
</tr>
<tr>
<td>
<code>sasToken</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AzureSASToken">
AzureSASToken
</a>
</em>
</td>
<td>
<p>A shared access signature (SAS) provides secure delegated access to
resources in a storage account.
See <a href="https://docs.microsoft.com/en-us/azure/storage/common/storage-sas-overview">https://docs.microsoft.com/en-us/azure/storage/common/storage-sas-overview</a></p>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.AzureBlobStorageSourceSpec">AzureBlobStorageSourceSpec
</h3>
<p>
(<em>Appears on:</em><a href="#sources.triggermesh.io/v1alpha1.AzureBlobStorageSource">AzureBlobStorageSource</a>)
</p>
<div>
<p>AzureBlobStorageSourceSpec defines the desired state of the event source.</p>
</div>
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
<code>SourceSpec</code><br/>
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
</td>
</tr>
<tr>
<td>
<code>storageAccountID</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.StorageAccountResourceID">
StorageAccountResourceID
</a>
</em>
</td>
<td>
<p>Resource ID of the Storage Account to receive events for.</p>
<p>Format: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{storageAccountName}</p>
<p>Besides the Storage Account name itself, the resource ID contains
the subscription ID and resource group name which all together
uniquely identify the Storage Account within Azure.</p>
</td>
</tr>
<tr>
<td>
<code>eventHubID</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.EventHubResourceID">
EventHubResourceID
</a>
</em>
</td>
<td>
<p>Resource ID of either the Event Hubs instance or Event Hubs
namespace to send events to.</p>
<p>Accepted formats:
- /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.EventHub/namespaces/{namespaceName}/eventHubs/{eventHubName}
- /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.EventHub/namespaces/{namespaceName}</p>
<p>If the resource ID represents an Event Hubs namespace, an Event Hubs
instance is created on behalf of the user inside that namespace.
Otherwise, the user-provided Event Hub is used.</p>
</td>
</tr>
<tr>
<td>
<code>eventTypes</code><br/>
<em>
[]string
</em>
</td>
<td>
<em>(Optional)</em>
<p>Types of events to subscribe to.</p>
<p>The list of available event types can be found at
<a href="https://docs.microsoft.com/en-us/azure/event-grid/event-schema-blob-storage">https://docs.microsoft.com/en-us/azure/event-grid/event-schema-blob-storage</a></p>
<p>When this attribute is not set, the source automatically subscribes
to the following event types:
- Microsoft.Storage.BlobCreated
- Microsoft.Storage.BlobDeleted</p>
</td>
</tr>
<tr>
<td>
<code>auth</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AzureAuth">
AzureAuth
</a>
</em>
</td>
<td>
<p>Authentication method to interact with the Azure REST API.
This event source only supports the ServicePrincipal authentication.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.AzureBlobStorageSourceStatus">AzureBlobStorageSourceStatus
</h3>
<p>
(<em>Appears on:</em><a href="#sources.triggermesh.io/v1alpha1.AzureBlobStorageSource">AzureBlobStorageSource</a>)
</p>
<div>
<p>AzureBlobStorageSourceStatus defines the observed state of the event source.</p>
</div>
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
<code>EventSourceStatus</code><br/>
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
<tr>
<td>
<code>eventHubID</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.EventHubResourceID">
EventHubResourceID
</a>
</em>
</td>
<td>
<p>Resource ID of the Event Hubs instance that is currently receiving
events from the Azure Event Grid subscription.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.AzureEventGridSourceSpec">AzureEventGridSourceSpec
</h3>
<p>
(<em>Appears on:</em><a href="#sources.triggermesh.io/v1alpha1.AzureEventGridSource">AzureEventGridSource</a>)
</p>
<div>
<p>AzureEventGridSourceSpec defines the desired state of the event source.</p>
</div>
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
<code>SourceSpec</code><br/>
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
</td>
</tr>
<tr>
<td>
<code>scope</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AzureResourceID">
AzureResourceID
</a>
</em>
</td>
<td>
<p>The resource ID the event subscription applies to.</p>
<p>Can be
- an Azure subscription:
/subscriptions/{subscriptionId}
- a resource group:
/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}
- a top-level resource from a resource provider (including Event Grid topic):
/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}</p>
</td>
</tr>
<tr>
<td>
<code>eventTypes</code><br/>
<em>
[]string
</em>
</td>
<td>
<em>(Optional)</em>
<p>Types of events to subscribe to.</p>
<p>If not specified, Azure automatically selects all available event types for the provided Scope.</p>
<p>For a list of all available event types, please refer to the list of
Azure services that support system topics at
<a href="https://docs.microsoft.com/en-us/azure/event-grid/system-topics">https://docs.microsoft.com/en-us/azure/event-grid/system-topics</a></p>
</td>
</tr>
<tr>
<td>
<code>eventHubID</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.EventHubResourceID">
EventHubResourceID
</a>
</em>
</td>
<td>
<p>Resource ID of either the Event Hubs instance or Event Hubs
namespace to send events to.</p>
<p>Accepted formats:
- /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.EventHub/namespaces/{namespaceName}/eventHubs/{eventHubName}
- /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.EventHub/namespaces/{namespaceName}</p>
<p>If the resource ID represents an Event Hubs namespace, an Event Hubs
instance is created on behalf of the user inside that namespace.
Otherwise, the user-provided Event Hub is used.</p>
</td>
</tr>
<tr>
<td>
<code>auth</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AzureAuth">
AzureAuth
</a>
</em>
</td>
<td>
<p>Authentication method to interact with the Azure REST API.
This event source only supports the ServicePrincipal authentication.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.AzureEventGridSourceStatus">AzureEventGridSourceStatus
</h3>
<p>
(<em>Appears on:</em><a href="#sources.triggermesh.io/v1alpha1.AzureEventGridSource">AzureEventGridSource</a>)
</p>
<div>
<p>AzureEventGridSourceStatus defines the observed state of the event source.</p>
</div>
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
<code>EventSourceStatus</code><br/>
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
<tr>
<td>
<code>eventSubscriptionID</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AzureResourceID">
AzureResourceID
</a>
</em>
</td>
<td>
<p>Resource ID of the Event Grid subscription that is currently
registered for the user-provided scope.</p>
</td>
</tr>
<tr>
<td>
<code>eventHubID</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.EventHubResourceID">
EventHubResourceID
</a>
</em>
</td>
<td>
<p>Resource ID of the Event Hubs instance that is currently receiving
events from the Azure Event Grid subscription.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.AzureEventHubSourceSpec">AzureEventHubSourceSpec
</h3>
<p>
(<em>Appears on:</em><a href="#sources.triggermesh.io/v1alpha1.AzureEventHubSource">AzureEventHubSource</a>)
</p>
<div>
<p>AzureEventHubSourceSpec defines the desired state of the event source.</p>
</div>
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
<code>SourceSpec</code><br/>
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
</td>
</tr>
<tr>
<td>
<code>eventHubID</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.EventHubResourceID">
EventHubResourceID
</a>
</em>
</td>
<td>
<p>Resource ID of the Event Hubs instance.</p>
<p>Expected format:
- /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.EventHub/namespaces/{namespaceName}/eventhubs/{eventHubName}</p>
</td>
</tr>
<tr>
<td>
<code>auth</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AzureAuth">
AzureAuth
</a>
</em>
</td>
<td>
<p>Authentication method to interact with the Azure Event Hubs API.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.AzureIOTHubSourceSpec">AzureIOTHubSourceSpec
</h3>
<p>
(<em>Appears on:</em><a href="#sources.triggermesh.io/v1alpha1.AzureIOTHubSource">AzureIOTHubSource</a>)
</p>
<div>
<p>AzureIOTHubSourceSpec defines the desired state of the event source.</p>
</div>
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
<code>SourceSpec</code><br/>
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
</td>
</tr>
<tr>
<td>
<code>auth</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AzureAuth">
AzureAuth
</a>
</em>
</td>
<td>
<p>AzureAuth contains multiple authentication methods for Azure services.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.AzureIOTHubSourceStatus">AzureIOTHubSourceStatus
</h3>
<p>
(<em>Appears on:</em><a href="#sources.triggermesh.io/v1alpha1.AzureIOTHubSource">AzureIOTHubSource</a>)
</p>
<div>
<p>AzureIOTHubSourceStatus defines the observed state of the event source.</p>
</div>
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
<code>EventSourceStatus</code><br/>
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
<h3 id="sources.triggermesh.io/v1alpha1.AzureQueueStorageSourceSpec">AzureQueueStorageSourceSpec
</h3>
<p>
(<em>Appears on:</em><a href="#sources.triggermesh.io/v1alpha1.AzureQueueStorageSource">AzureQueueStorageSource</a>)
</p>
<div>
<p>AzureQueueStorageSourceSpec defines the desired state of the event source.</p>
</div>
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
<code>SourceSpec</code><br/>
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
</td>
</tr>
<tr>
<td>
<code>accountName</code><br/>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>queueName</code><br/>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>accountKey</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.ValueFromField">
ValueFromField
</a>
</em>
</td>
<td>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.AzureResourceID">AzureResourceID
</h3>
<p>
(<em>Appears on:</em><a href="#sources.triggermesh.io/v1alpha1.AzureEventGridSourceSpec">AzureEventGridSourceSpec</a>, <a href="#sources.triggermesh.io/v1alpha1.AzureEventGridSourceStatus">AzureEventGridSourceStatus</a>)
</p>
<div>
<p>AzureResourceID represents a resource ID for an Azure resource.</p>
</div>
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
<code>SubscriptionID</code><br/>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>ResourceGroup</code><br/>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>ResourceProvider</code><br/>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>ResourceType</code><br/>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>ResourceName</code><br/>
<em>
string
</em>
</td>
<td>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.AzureSASToken">AzureSASToken
</h3>
<p>
(<em>Appears on:</em><a href="#sources.triggermesh.io/v1alpha1.AzureAuth">AzureAuth</a>)
</p>
<div>
<p>AzureSASToken represents an Azure SAS token.</p>
</div>
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
<code>keyName</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.ValueFromField">
ValueFromField
</a>
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>keyValue</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.ValueFromField">
ValueFromField
</a>
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>connectionString</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.ValueFromField">
ValueFromField
</a>
</em>
</td>
<td>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.AzureServiceBusQueueSourceSpec">AzureServiceBusQueueSourceSpec
</h3>
<p>
(<em>Appears on:</em><a href="#sources.triggermesh.io/v1alpha1.AzureServiceBusQueueSource">AzureServiceBusQueueSource</a>)
</p>
<div>
<p>AzureServiceBusQueueSourceSpec defines the desired state of the event source.</p>
</div>
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
<code>SourceSpec</code><br/>
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
</td>
</tr>
<tr>
<td>
<code>auth</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AzureAuth">
AzureAuth
</a>
</em>
</td>
<td>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.AzureServiceBusQueueSourceStatus">AzureServiceBusQueueSourceStatus
</h3>
<p>
(<em>Appears on:</em><a href="#sources.triggermesh.io/v1alpha1.AzureServiceBusQueueSource">AzureServiceBusQueueSource</a>)
</p>
<div>
<p>AzureServiceBusQueueSourceStatus defines the observed state of the event source.</p>
</div>
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
<code>EventSourceStatus</code><br/>
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
<h3 id="sources.triggermesh.io/v1alpha1.AzureServicePrincipal">AzureServicePrincipal
</h3>
<p>
(<em>Appears on:</em><a href="#sources.triggermesh.io/v1alpha1.AzureAuth">AzureAuth</a>)
</p>
<div>
<p>AzureServicePrincipal represents an AAD Service Principal.</p>
</div>
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
<code>tenantID</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.ValueFromField">
ValueFromField
</a>
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>clientID</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.ValueFromField">
ValueFromField
</a>
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>clientSecret</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.ValueFromField">
ValueFromField
</a>
</em>
</td>
<td>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.EventHubResourceID">EventHubResourceID
</h3>
<p>
(<em>Appears on:</em><a href="#sources.triggermesh.io/v1alpha1.AzureActivityLogsSourceSpec">AzureActivityLogsSourceSpec</a>, <a href="#sources.triggermesh.io/v1alpha1.AzureBlobStorageSourceSpec">AzureBlobStorageSourceSpec</a>, <a href="#sources.triggermesh.io/v1alpha1.AzureBlobStorageSourceStatus">AzureBlobStorageSourceStatus</a>, <a href="#sources.triggermesh.io/v1alpha1.AzureEventGridSourceSpec">AzureEventGridSourceSpec</a>, <a href="#sources.triggermesh.io/v1alpha1.AzureEventGridSourceStatus">AzureEventGridSourceStatus</a>, <a href="#sources.triggermesh.io/v1alpha1.AzureEventHubSourceSpec">AzureEventHubSourceSpec</a>)
</p>
<div>
<p>EventHubResourceID represents a resource ID for an Event Hubs instance or namespace.</p>
</div>
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
<code>SubscriptionID</code><br/>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>ResourceGroup</code><br/>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>Namespace</code><br/>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>EventHub</code><br/>
<em>
string
</em>
</td>
<td>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.EventSource">EventSource
</h3>
<div>
<p>EventSource is implemented by all event source types.</p>
</div>
<h3 id="sources.triggermesh.io/v1alpha1.EventSourceStatus">EventSourceStatus
</h3>
<p>
(<em>Appears on:</em><a href="#sources.triggermesh.io/v1alpha1.AWSCloudWatchLogsSource">AWSCloudWatchLogsSource</a>, <a href="#sources.triggermesh.io/v1alpha1.AWSCloudWatchSource">AWSCloudWatchSource</a>, <a href="#sources.triggermesh.io/v1alpha1.AWSCodeCommitSource">AWSCodeCommitSource</a>, <a href="#sources.triggermesh.io/v1alpha1.AWSCognitoIdentitySource">AWSCognitoIdentitySource</a>, <a href="#sources.triggermesh.io/v1alpha1.AWSCognitoUserPoolSource">AWSCognitoUserPoolSource</a>, <a href="#sources.triggermesh.io/v1alpha1.AWSDynamoDBSource">AWSDynamoDBSource</a>, <a href="#sources.triggermesh.io/v1alpha1.AWSKinesisSource">AWSKinesisSource</a>, <a href="#sources.triggermesh.io/v1alpha1.AWSPerformanceInsightsSource">AWSPerformanceInsightsSource</a>, <a href="#sources.triggermesh.io/v1alpha1.AWSSQSSource">AWSSQSSource</a>, <a href="#sources.triggermesh.io/v1alpha1.AzureEventHubSource">AzureEventHubSource</a>, <a href="#sources.triggermesh.io/v1alpha1.AzureQueueStorageSource">AzureQueueStorageSource</a>, <a href="#sources.triggermesh.io/v1alpha1.HTTPPollerSource">HTTPPollerSource</a>, <a href="#sources.triggermesh.io/v1alpha1.OCIMetricsSource">OCIMetricsSource</a>, <a href="#sources.triggermesh.io/v1alpha1.SalesforceSource">SalesforceSource</a>, <a href="#sources.triggermesh.io/v1alpha1.SlackSource">SlackSource</a>, <a href="#sources.triggermesh.io/v1alpha1.TwilioSource">TwilioSource</a>, <a href="#sources.triggermesh.io/v1alpha1.WebhookSource">WebhookSource</a>, <a href="#sources.triggermesh.io/v1alpha1.AWSS3SourceStatus">AWSS3SourceStatus</a>, <a href="#sources.triggermesh.io/v1alpha1.AWSSNSSourceStatus">AWSSNSSourceStatus</a>, <a href="#sources.triggermesh.io/v1alpha1.AzureActivityLogsSourceStatus">AzureActivityLogsSourceStatus</a>, <a href="#sources.triggermesh.io/v1alpha1.AzureBlobStorageSourceStatus">AzureBlobStorageSourceStatus</a>, <a href="#sources.triggermesh.io/v1alpha1.AzureEventGridSourceStatus">AzureEventGridSourceStatus</a>, <a href="#sources.triggermesh.io/v1alpha1.AzureIOTHubSourceStatus">AzureIOTHubSourceStatus</a>, <a href="#sources.triggermesh.io/v1alpha1.AzureServiceBusQueueSourceStatus">AzureServiceBusQueueSourceStatus</a>, <a href="#sources.triggermesh.io/v1alpha1.EventSourceStatusManager">EventSourceStatusManager</a>, <a href="#sources.triggermesh.io/v1alpha1.GoogleCloudAuditLogsSourceStatus">GoogleCloudAuditLogsSourceStatus</a>, <a href="#sources.triggermesh.io/v1alpha1.GoogleCloudBillingSourceStatus">GoogleCloudBillingSourceStatus</a>, <a href="#sources.triggermesh.io/v1alpha1.GoogleCloudPubSubSourceStatus">GoogleCloudPubSubSourceStatus</a>, <a href="#sources.triggermesh.io/v1alpha1.GoogleCloudRepositoriesSourceStatus">GoogleCloudRepositoriesSourceStatus</a>, <a href="#sources.triggermesh.io/v1alpha1.GoogleCloudStorageSourceStatus">GoogleCloudStorageSourceStatus</a>, <a href="#sources.triggermesh.io/v1alpha1.ZendeskSourceStatus">ZendeskSourceStatus</a>)
</p>
<div>
<p>EventSourceStatus defines the observed state of an event source.</p>
</div>
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
<code>SourceStatus</code><br/>
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
<code>AddressStatus</code><br/>
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
<h3 id="sources.triggermesh.io/v1alpha1.EventSourceStatusManager">EventSourceStatusManager
</h3>
<div>
<p>EventSourceStatusManager manages the status of event sources.</p>
</div>
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
<code>ConditionSet</code><br/>
<em>
knative.dev/pkg/apis.ConditionSet
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>EventSourceStatus</code><br/>
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
<h3 id="sources.triggermesh.io/v1alpha1.GCloudResourceName">GCloudResourceName
</h3>
<p>
(<em>Appears on:</em><a href="#sources.triggermesh.io/v1alpha1.GoogleCloudAuditLogsSourcePubSubSpec">GoogleCloudAuditLogsSourcePubSubSpec</a>, <a href="#sources.triggermesh.io/v1alpha1.GoogleCloudAuditLogsSourceStatus">GoogleCloudAuditLogsSourceStatus</a>, <a href="#sources.triggermesh.io/v1alpha1.GoogleCloudBillingSourcePubSubSpec">GoogleCloudBillingSourcePubSubSpec</a>, <a href="#sources.triggermesh.io/v1alpha1.GoogleCloudBillingSourceStatus">GoogleCloudBillingSourceStatus</a>, <a href="#sources.triggermesh.io/v1alpha1.GoogleCloudPubSubSourceSpec">GoogleCloudPubSubSourceSpec</a>, <a href="#sources.triggermesh.io/v1alpha1.GoogleCloudPubSubSourceStatus">GoogleCloudPubSubSourceStatus</a>, <a href="#sources.triggermesh.io/v1alpha1.GoogleCloudRepositoriesSourcePubSubSpec">GoogleCloudRepositoriesSourcePubSubSpec</a>, <a href="#sources.triggermesh.io/v1alpha1.GoogleCloudRepositoriesSourceSpec">GoogleCloudRepositoriesSourceSpec</a>, <a href="#sources.triggermesh.io/v1alpha1.GoogleCloudRepositoriesSourceStatus">GoogleCloudRepositoriesSourceStatus</a>, <a href="#sources.triggermesh.io/v1alpha1.GoogleCloudStorageSourcePubSubSpec">GoogleCloudStorageSourcePubSubSpec</a>, <a href="#sources.triggermesh.io/v1alpha1.GoogleCloudStorageSourceStatus">GoogleCloudStorageSourceStatus</a>)
</p>
<div>
<p>GCloudResourceName represents a fully qualified resource name,
as described at
<a href="https://cloud.google.com/apis/design/resource_names">https://cloud.google.com/apis/design/resource_names</a></p>
<p>Examples of such resource names include:
- projects/{project_name}/topics/{topic_name}
- projects/{project_name}/repos/{repo_name}
- projects/{project_name}/subscriptions/{subscription_name}</p>
</div>
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
<code>Project</code><br/>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>Collection</code><br/>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>Resource</code><br/>
<em>
string
</em>
</td>
<td>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.GoogleCloudAuditLogsSourcePubSubSpec">GoogleCloudAuditLogsSourcePubSubSpec
</h3>
<p>
(<em>Appears on:</em><a href="#sources.triggermesh.io/v1alpha1.GoogleCloudAuditLogsSourceSpec">GoogleCloudAuditLogsSourceSpec</a>)
</p>
<div>
<p>GoogleCloudAuditLogsSourcePubSubSpec defines the attributes related to the
configuration of Pub/Sub resources.</p>
</div>
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
<code>topic</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.GCloudResourceName">
GCloudResourceName
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>Full resource name of the Pub/Sub topic where change notifications
originating from the configured sink are sent to. If not supplied,
a topic is created on behalf of the user, in the GCP project
referenced by the Project attribute.</p>
<p>The expected format is described at <a href="https://cloud.google.com/pubsub/docs/admin#resource_names:">https://cloud.google.com/pubsub/docs/admin#resource_names:</a>
&ldquo;projects/{project_name}/topics/{topic_name}&rdquo;</p>
</td>
</tr>
<tr>
<td>
<code>project</code><br/>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
<p>Name of the GCP project where Pub/Sub resources associated with the
Cloud Audit log are to be created.</p>
<p>Mutually exclusive with Topic which, if supplied, already contains
the project name.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.GoogleCloudAuditLogsSourceSpec">GoogleCloudAuditLogsSourceSpec
</h3>
<p>
(<em>Appears on:</em><a href="#sources.triggermesh.io/v1alpha1.GoogleCloudAuditLogsSource">GoogleCloudAuditLogsSource</a>)
</p>
<div>
<p>GoogleCloudAuditLogsSourceSpec defines the desired state of the event source.</p>
</div>
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
<code>SourceSpec</code><br/>
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
</td>
</tr>
<tr>
<td>
<code>serviceName</code><br/>
<em>
string
</em>
</td>
<td>
<p>The GCP service this instance should source audit logs from. Required.
example: compute.googleapis.com</p>
</td>
</tr>
<tr>
<td>
<code>methodName</code><br/>
<em>
string
</em>
</td>
<td>
<p>The name of the service method or operation. For API calls,
this should be the name of the API method. Required.
beta.compute.instances.insert</p>
</td>
</tr>
<tr>
<td>
<code>resourceName</code><br/>
<em>
string
</em>
</td>
<td>
<p>The resource or collection that is the target of the
operation. The name is a scheme-less URI, not including the
API service name.
example: &ldquo;projects/PROJECT_ID/zones/us-central1-a/instances&rdquo;</p>
</td>
</tr>
<tr>
<td>
<code>pubsub</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.GoogleCloudAuditLogsSourcePubSubSpec">
GoogleCloudAuditLogsSourcePubSubSpec
</a>
</em>
</td>
<td>
<p>Settings related to the Pub/Sub resources associated with the Audit Logs event sink.</p>
</td>
</tr>
<tr>
<td>
<code>serviceAccountKey</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.ValueFromField">
ValueFromField
</a>
</em>
</td>
<td>
<p>Service account key in JSON format.
<a href="https://cloud.google.com/iam/docs/creating-managing-service-account-keys">https://cloud.google.com/iam/docs/creating-managing-service-account-keys</a></p>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.GoogleCloudAuditLogsSourceStatus">GoogleCloudAuditLogsSourceStatus
</h3>
<p>
(<em>Appears on:</em><a href="#sources.triggermesh.io/v1alpha1.GoogleCloudAuditLogsSource">GoogleCloudAuditLogsSource</a>)
</p>
<div>
<p>GoogleCloudAuditLogsSourceStatus defines the observed state of the event source.</p>
</div>
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
<code>EventSourceStatus</code><br/>
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
<tr>
<td>
<code>auditLogsSink</code><br/>
<em>
string
</em>
</td>
<td>
<p>ID of the AuditLogSink used to publish audit log messages.</p>
</td>
</tr>
<tr>
<td>
<code>topic</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.GCloudResourceName">
GCloudResourceName
</a>
</em>
</td>
<td>
<p>Resource name of the target Pub/Sub topic.</p>
</td>
</tr>
<tr>
<td>
<code>subscription</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.GCloudResourceName">
GCloudResourceName
</a>
</em>
</td>
<td>
<p>Resource name of the managed Pub/Sub subscription associated with
the managed topic.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.GoogleCloudBillingSourcePubSubSpec">GoogleCloudBillingSourcePubSubSpec
</h3>
<p>
(<em>Appears on:</em><a href="#sources.triggermesh.io/v1alpha1.GoogleCloudBillingSourceSpec">GoogleCloudBillingSourceSpec</a>)
</p>
<div>
<p>GoogleCloudBillingSourcePubSubSpec defines the attributes related to the
configuration of Pub/Sub resources.</p>
</div>
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
<code>topic</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.GCloudResourceName">
GCloudResourceName
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>Full resource name of the Pub/Sub topic where change notifications
originating from the configured sink are sent to. If not supplied,
a topic is created on behalf of the user, in the GCP project
referenced by the Project attribute.</p>
<p>The expected format is described at <a href="https://cloud.google.com/pubsub/docs/admin#resource_names:">https://cloud.google.com/pubsub/docs/admin#resource_names:</a>
&ldquo;projects/{project_name}/topics/{topic_name}&rdquo;</p>
</td>
</tr>
<tr>
<td>
<code>project</code><br/>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
<p>Name of the GCP project where Pub/Sub resources associated with the
Cloud Billing budget are to be created.</p>
<p>Mutually exclusive with Topic which, if supplied, already contains
the project name.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.GoogleCloudBillingSourceSpec">GoogleCloudBillingSourceSpec
</h3>
<p>
(<em>Appears on:</em><a href="#sources.triggermesh.io/v1alpha1.GoogleCloudBillingSource">GoogleCloudBillingSource</a>)
</p>
<div>
<p>GoogleCloudBillingSourceSpec defines the desired state of the event source.</p>
</div>
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
<code>SourceSpec</code><br/>
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
</td>
</tr>
<tr>
<td>
<code>billingAccountId</code><br/>
<em>
string
</em>
</td>
<td>
<p>The identifier for the Cloud Billing account owning the budget.</p>
</td>
</tr>
<tr>
<td>
<code>budgetId</code><br/>
<em>
string
</em>
</td>
<td>
<p>The identifier for the Cloud Billing budget.
You can locate the budget&rsquo;s ID in your budget under Manage notifications.
The ID is displayed after you select Connect a Pub/Sub topic to this budget.</p>
</td>
</tr>
<tr>
<td>
<code>pubsub</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.GoogleCloudBillingSourcePubSubSpec">
GoogleCloudBillingSourcePubSubSpec
</a>
</em>
</td>
<td>
<p>Settings related to the Pub/Sub resources associated with the Billing budget event sink.</p>
</td>
</tr>
<tr>
<td>
<code>serviceAccountKey</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.ValueFromField">
ValueFromField
</a>
</em>
</td>
<td>
<p>Service account key in JSON format.
<a href="https://cloud.google.com/iam/docs/creating-managing-service-account-keys">https://cloud.google.com/iam/docs/creating-managing-service-account-keys</a></p>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.GoogleCloudBillingSourceStatus">GoogleCloudBillingSourceStatus
</h3>
<p>
(<em>Appears on:</em><a href="#sources.triggermesh.io/v1alpha1.GoogleCloudBillingSource">GoogleCloudBillingSource</a>)
</p>
<div>
<p>GoogleCloudBillingSourceStatus defines the observed state of the event source.</p>
</div>
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
<code>EventSourceStatus</code><br/>
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
<tr>
<td>
<code>topic</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.GCloudResourceName">
GCloudResourceName
</a>
</em>
</td>
<td>
<p>Resource name of the target Pub/Sub topic.</p>
</td>
</tr>
<tr>
<td>
<code>subscription</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.GCloudResourceName">
GCloudResourceName
</a>
</em>
</td>
<td>
<p>Resource name of the managed Pub/Sub subscription associated with
the managed topic.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.GoogleCloudPubSubSourceSpec">GoogleCloudPubSubSourceSpec
</h3>
<p>
(<em>Appears on:</em><a href="#sources.triggermesh.io/v1alpha1.GoogleCloudPubSubSource">GoogleCloudPubSubSource</a>)
</p>
<div>
<p>GoogleCloudPubSubSourceSpec defines the desired state of the event source.</p>
</div>
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
<code>SourceSpec</code><br/>
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
</td>
</tr>
<tr>
<td>
<code>topic</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.GCloudResourceName">
GCloudResourceName
</a>
</em>
</td>
<td>
<p>Full resource name of the Pub/Sub topic to subscribe to, in the
format &ldquo;projects/{project_name}/topics/{topic_name}&rdquo;.</p>
</td>
</tr>
<tr>
<td>
<code>subscriptionID</code><br/>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
<p>ID of the subscription to use to pull messages from the topic.</p>
<p>If supplied, this subscription must 1) exist and 2) belong to the
provided topic. Otherwise, a pull subscription to that topic is
created on behalf of the user.</p>
</td>
</tr>
<tr>
<td>
<code>serviceAccountKey</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.ValueFromField">
ValueFromField
</a>
</em>
</td>
<td>
<p>Service account key in JSON format.
<a href="https://cloud.google.com/iam/docs/creating-managing-service-account-keys">https://cloud.google.com/iam/docs/creating-managing-service-account-keys</a></p>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.GoogleCloudPubSubSourceStatus">GoogleCloudPubSubSourceStatus
</h3>
<p>
(<em>Appears on:</em><a href="#sources.triggermesh.io/v1alpha1.GoogleCloudPubSubSource">GoogleCloudPubSubSource</a>)
</p>
<div>
<p>GoogleCloudPubSubSourceStatus defines the observed state of the event source.</p>
</div>
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
<code>EventSourceStatus</code><br/>
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
<tr>
<td>
<code>subscription</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.GCloudResourceName">
GCloudResourceName
</a>
</em>
</td>
<td>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.GoogleCloudRepositoriesSourcePubSubSpec">GoogleCloudRepositoriesSourcePubSubSpec
</h3>
<p>
(<em>Appears on:</em><a href="#sources.triggermesh.io/v1alpha1.GoogleCloudRepositoriesSourceSpec">GoogleCloudRepositoriesSourceSpec</a>)
</p>
<div>
<p>GoogleCloudRepositoriesSourcePubSubSpec defines the attributes related to the
configuration of Pub/Sub resources.</p>
</div>
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
<code>topic</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.GCloudResourceName">
GCloudResourceName
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>Full resource name of the Pub/Sub topic where change notifications
originating from the configured sink are sent to. If not supplied,
a topic is created on behalf of the user, in the GCP project
referenced by the Project attribute.</p>
<p>The expected format is described at <a href="https://cloud.google.com/pubsub/docs/admin#resource_names:">https://cloud.google.com/pubsub/docs/admin#resource_names:</a>
&ldquo;projects/{project_name}/topics/{topic_name}&rdquo;</p>
</td>
</tr>
<tr>
<td>
<code>project</code><br/>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
<p>Name of the GCP project where Pub/Sub resources associated with the
Cloud repo are to be created.</p>
<p>Mutually exclusive with Topic which, if supplied, already contains
the project name.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.GoogleCloudRepositoriesSourceSpec">GoogleCloudRepositoriesSourceSpec
</h3>
<p>
(<em>Appears on:</em><a href="#sources.triggermesh.io/v1alpha1.GoogleCloudRepositoriesSource">GoogleCloudRepositoriesSource</a>)
</p>
<div>
<p>GoogleCloudRepositoriesSourceSpec defines the desired state of the event source.</p>
</div>
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
<code>SourceSpec</code><br/>
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
</td>
</tr>
<tr>
<td>
<code>repository</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.GCloudResourceName">
GCloudResourceName
</a>
</em>
</td>
<td>
<p>Name of the Cloud repo to receive notifications from.</p>
</td>
</tr>
<tr>
<td>
<code>pubsub</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.GoogleCloudRepositoriesSourcePubSubSpec">
GoogleCloudRepositoriesSourcePubSubSpec
</a>
</em>
</td>
<td>
<p>Settings related to the Pub/Sub resources associated with the repo events.</p>
</td>
</tr>
<tr>
<td>
<code>serviceAccountKey</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.ValueFromField">
ValueFromField
</a>
</em>
</td>
<td>
<p>Service account key in JSON format.
<a href="https://cloud.google.com/iam/docs/creating-managing-service-account-keys">https://cloud.google.com/iam/docs/creating-managing-service-account-keys</a></p>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.GoogleCloudRepositoriesSourceStatus">GoogleCloudRepositoriesSourceStatus
</h3>
<p>
(<em>Appears on:</em><a href="#sources.triggermesh.io/v1alpha1.GoogleCloudRepositoriesSource">GoogleCloudRepositoriesSource</a>)
</p>
<div>
<p>GoogleCloudRepositoriesSourceStatus defines the observed state of the event source.</p>
</div>
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
<code>EventSourceStatus</code><br/>
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
<tr>
<td>
<code>topic</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.GCloudResourceName">
GCloudResourceName
</a>
</em>
</td>
<td>
<p>Resource name of the target Pub/Sub topic.</p>
</td>
</tr>
<tr>
<td>
<code>subscription</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.GCloudResourceName">
GCloudResourceName
</a>
</em>
</td>
<td>
<p>Resource name of the managed Pub/Sub subscription associated with
the managed topic.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.GoogleCloudStorageSourcePubSubSpec">GoogleCloudStorageSourcePubSubSpec
</h3>
<p>
(<em>Appears on:</em><a href="#sources.triggermesh.io/v1alpha1.GoogleCloudStorageSourceSpec">GoogleCloudStorageSourceSpec</a>)
</p>
<div>
<p>GoogleCloudStorageSourcePubSubSpec defines the attributes related to the
configuration of Pub/Sub resources.</p>
</div>
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
<code>topic</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.GCloudResourceName">
GCloudResourceName
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>Full resource name of the Pub/Sub topic where change notifications
originating from the configured bucket are sent to. If not supplied,
a topic is created on behalf of the user, in the GCP project
referenced by the Project attribute.</p>
<p>The expected format is described at <a href="https://cloud.google.com/pubsub/docs/admin#resource_names:">https://cloud.google.com/pubsub/docs/admin#resource_names:</a>
&ldquo;projects/{project_name}/topics/{topic_name}&rdquo;</p>
</td>
</tr>
<tr>
<td>
<code>project</code><br/>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
<p>Name of the GCP project where Pub/Sub resources associated with the
Cloud Storage bucket are to be created.</p>
<p>Mutually exclusive with Topic which, if supplied, already contains
the project name.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.GoogleCloudStorageSourceSpec">GoogleCloudStorageSourceSpec
</h3>
<p>
(<em>Appears on:</em><a href="#sources.triggermesh.io/v1alpha1.GoogleCloudStorageSource">GoogleCloudStorageSource</a>)
</p>
<div>
<p>GoogleCloudStorageSourceSpec defines the desired state of the event source.</p>
</div>
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
<code>SourceSpec</code><br/>
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
</td>
</tr>
<tr>
<td>
<code>bucket</code><br/>
<em>
string
</em>
</td>
<td>
<p>Name of the Cloud Storage bucket to receive change notifications from.</p>
</td>
</tr>
<tr>
<td>
<code>pubsub</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.GoogleCloudStorageSourcePubSubSpec">
GoogleCloudStorageSourcePubSubSpec
</a>
</em>
</td>
<td>
<p>Settings related to the Pub/Sub resources associated with the bucket.</p>
</td>
</tr>
<tr>
<td>
<code>eventTypes</code><br/>
<em>
[]string
</em>
</td>
<td>
<em>(Optional)</em>
<p>Types of events to subscribe to.</p>
<p>The list of available event types can be found at
<a href="https://cloud.google.com/storage/docs/pubsub-notifications#events">https://cloud.google.com/storage/docs/pubsub-notifications#events</a></p>
<p>All types are selected when this attribute is not set.</p>
</td>
</tr>
<tr>
<td>
<code>serviceAccountKey</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.ValueFromField">
ValueFromField
</a>
</em>
</td>
<td>
<p>Service account key in JSON format.
<a href="https://cloud.google.com/iam/docs/creating-managing-service-account-keys">https://cloud.google.com/iam/docs/creating-managing-service-account-keys</a></p>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.GoogleCloudStorageSourceStatus">GoogleCloudStorageSourceStatus
</h3>
<p>
(<em>Appears on:</em><a href="#sources.triggermesh.io/v1alpha1.GoogleCloudStorageSource">GoogleCloudStorageSource</a>)
</p>
<div>
<p>GoogleCloudStorageSourceStatus defines the observed state of the event source.</p>
</div>
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
<code>EventSourceStatus</code><br/>
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
<tr>
<td>
<code>notificationID</code><br/>
<em>
string
</em>
</td>
<td>
<p>ID of the managed Cloud Storage bucket notification configuration.</p>
</td>
</tr>
<tr>
<td>
<code>topic</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.GCloudResourceName">
GCloudResourceName
</a>
</em>
</td>
<td>
<p>Resource name of the target Pub/Sub topic.</p>
</td>
</tr>
<tr>
<td>
<code>subscription</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.GCloudResourceName">
GCloudResourceName
</a>
</em>
</td>
<td>
<p>Resource name of the managed Pub/Sub subscription associated with
the managed topic.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.HTTPPollerSourceSpec">HTTPPollerSourceSpec
</h3>
<p>
(<em>Appears on:</em><a href="#sources.triggermesh.io/v1alpha1.HTTPPollerSource">HTTPPollerSource</a>)
</p>
<div>
<p>HTTPPollerSourceSpec defines the desired state of the event source.</p>
</div>
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
<code>SourceSpec</code><br/>
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
<p>inherits duck/v1 SourceSpec, which currently provides:
* Sink - a reference to an object that will resolve to a domain name or
a URI directly to use as the sink.
* CloudEventOverrides - defines overrides to control the output format
and modifications of the event sent to the sink.</p>
</td>
</tr>
<tr>
<td>
<code>eventType</code><br/>
<em>
string
</em>
</td>
<td>
<p>Value of the CloudEvents &lsquo;type&rsquo; attribute to set on ingested events.
<a href="https://github.com/cloudevents/spec/blob/v1.0.1/spec.md#type">https://github.com/cloudevents/spec/blob/v1.0.1/spec.md#type</a></p>
</td>
</tr>
<tr>
<td>
<code>eventSource</code><br/>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
<p>Value of the CloudEvents &lsquo;source&rsquo; attribute to set on ingested events.
<a href="https://github.com/cloudevents/spec/blob/v1.0.1/spec.md#source-1">https://github.com/cloudevents/spec/blob/v1.0.1/spec.md#source-1</a></p>
</td>
</tr>
<tr>
<td>
<code>endpoint</code><br/>
<em>
<a href="https://pkg.go.dev/knative.dev/pkg/apis#URL">
knative.dev/pkg/apis.URL
</a>
</em>
</td>
<td>
<p>HTTP/S URL of the endpoint to poll data from.</p>
</td>
</tr>
<tr>
<td>
<code>method</code><br/>
<em>
string
</em>
</td>
<td>
<p>HTTP request method to use in requests to the specified &lsquo;endpoint&rsquo;.
<a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Methods">https://developer.mozilla.org/en-US/docs/Web/HTTP/Methods</a></p>
</td>
</tr>
<tr>
<td>
<code>skipVerify</code><br/>
<em>
bool
</em>
</td>
<td>
<em>(Optional)</em>
<p>Controls whether the HTTP client verifies the server&rsquo;s certificate
chain and host name when communicating over TLS.</p>
</td>
</tr>
<tr>
<td>
<code>caCertificate</code><br/>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
<p>CA certificate in X.509 format the HTTP client should use to verify
the identity of remote servers when communicating over TLS.</p>
</td>
</tr>
<tr>
<td>
<code>basicAuthUsername</code><br/>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
<p>User name to set in HTTP requests that require HTTP Basic authentication.</p>
</td>
</tr>
<tr>
<td>
<code>basicAuthPassword</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.ValueFromField">
ValueFromField
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>Password to set in HTTP requests that require HTTP Basic authentication.</p>
</td>
</tr>
<tr>
<td>
<code>headers</code><br/>
<em>
map[string]string
</em>
</td>
<td>
<em>(Optional)</em>
<p>HTTP headers to include in HTTP requests.</p>
</td>
</tr>
<tr>
<td>
<code>interval</code><br/>
<em>
github.com/triggermesh/triggermesh/pkg/apis.Duration
</em>
</td>
<td>
<p>Duration which defines how often the HTTP/S endpoint should be polled.
Expressed as a duration string, which format is documented at <a href="https://pkg.go.dev/time#ParseDuration">https://pkg.go.dev/time#ParseDuration</a>.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.OCIMetrics">OCIMetrics
</h3>
<p>
(<em>Appears on:</em><a href="#sources.triggermesh.io/v1alpha1.OCIMetricsSourceSpec">OCIMetricsSourceSpec</a>)
</p>
<div>
<p>OCIMetrics represents OCI metrics structure.</p>
</div>
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
<code>name</code><br/>
<em>
string
</em>
</td>
<td>
<p>Human description for the metrics entry</p>
</td>
</tr>
<tr>
<td>
<code>metricsNamespace</code><br/>
<em>
string
</em>
</td>
<td>
<p>Namespace for the query metric to use</p>
</td>
</tr>
<tr>
<td>
<code>metricsQuery</code><br/>
<em>
string
</em>
</td>
<td>
<p>OCI Metrics Query See <a href="https://docs.cloud.oracle.com/en-us/iaas/api/#/en/monitoring/20180401/MetricData">https://docs.cloud.oracle.com/en-us/iaas/api/#/en/monitoring/20180401/MetricData</a></p>
</td>
</tr>
<tr>
<td>
<code>oracleCompartment</code><br/>
<em>
string
</em>
</td>
<td>
<p>Oracle Compartment OCID</p>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.OCIMetricsSourceSpec">OCIMetricsSourceSpec
</h3>
<p>
(<em>Appears on:</em><a href="#sources.triggermesh.io/v1alpha1.OCIMetricsSource">OCIMetricsSource</a>)
</p>
<div>
<p>OCIMetricsSourceSpec defines the desired state of the event source.</p>
</div>
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
<code>SourceSpec</code><br/>
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
<p>inherits duck/v1 SourceSpec, which currently provides:
* Sink - a reference to an object that will resolve to a domain name or
a URI directly to use as the sink.
* CloudEventOverrides - defines overrides to control the output format
and modifications of the event sent to the sink.</p>
</td>
</tr>
<tr>
<td>
<code>oracleApiPrivateKey</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.ValueFromField">
ValueFromField
</a>
</em>
</td>
<td>
<p>Oracle User API private key</p>
</td>
</tr>
<tr>
<td>
<code>oracleApiPrivateKeyPassphrase</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.ValueFromField">
ValueFromField
</a>
</em>
</td>
<td>
<p>Oracle User API private key passphrase</p>
</td>
</tr>
<tr>
<td>
<code>oracleApiPrivateKeyFingerprint</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.ValueFromField">
ValueFromField
</a>
</em>
</td>
<td>
<p>Oracle User API cert fingerprint</p>
</td>
</tr>
<tr>
<td>
<code>oracleTenancy</code><br/>
<em>
string
</em>
</td>
<td>
<p>Oracle Tenancy OCID</p>
</td>
</tr>
<tr>
<td>
<code>oracleUser</code><br/>
<em>
string
</em>
</td>
<td>
<p>Oracle User OCID associated with the API key</p>
</td>
</tr>
<tr>
<td>
<code>oracleRegion</code><br/>
<em>
string
</em>
</td>
<td>
<p>Oracle Cloud Region</p>
</td>
</tr>
<tr>
<td>
<code>metricsPollingFrequency</code><br/>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
<p>OCI Metrics Polling Frequency</p>
</td>
</tr>
<tr>
<td>
<code>metrics</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.OCIMetrics">
[]OCIMetrics
</a>
</em>
</td>
<td>
<p>Array of metrics</p>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.SalesforceAuth">SalesforceAuth
</h3>
<p>
(<em>Appears on:</em><a href="#sources.triggermesh.io/v1alpha1.SalesforceSourceSpec">SalesforceSourceSpec</a>)
</p>
<div>
<p>SalesforceAuth contains Salesforce credentials.</p>
</div>
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
<code>clientID</code><br/>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>server</code><br/>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>user</code><br/>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>certKey</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.ValueFromField">
ValueFromField
</a>
</em>
</td>
<td>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.SalesforceSourceSpec">SalesforceSourceSpec
</h3>
<p>
(<em>Appears on:</em><a href="#sources.triggermesh.io/v1alpha1.SalesforceSource">SalesforceSource</a>)
</p>
<div>
<p>SalesforceSourceSpec defines the desired state of the event source.</p>
</div>
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
<code>SourceSpec</code><br/>
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
</td>
</tr>
<tr>
<td>
<code>auth</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.SalesforceAuth">
SalesforceAuth
</a>
</em>
</td>
<td>
<p>Authentication method to interact with the Salesforce API.</p>
</td>
</tr>
<tr>
<td>
<code>apiVersion</code><br/>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
<p>APIVersion at Salesforce.</p>
</td>
</tr>
<tr>
<td>
<code>subscription</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.SalesforceSubscription">
SalesforceSubscription
</a>
</em>
</td>
<td>
<p>Subscription to a Salesforce channel</p>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.SalesforceSubscription">SalesforceSubscription
</h3>
<p>
(<em>Appears on:</em><a href="#sources.triggermesh.io/v1alpha1.SalesforceSourceSpec">SalesforceSourceSpec</a>)
</p>
<div>
<p>SalesforceSubscription to connect to.</p>
</div>
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
<code>channel</code><br/>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>replayID</code><br/>
<em>
int
</em>
</td>
<td>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.SlackSourceSpec">SlackSourceSpec
</h3>
<p>
(<em>Appears on:</em><a href="#sources.triggermesh.io/v1alpha1.SlackSource">SlackSource</a>)
</p>
<div>
<p>SlackSourceSpec defines the desired state of the event source.</p>
</div>
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
<code>SourceSpec</code><br/>
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
<p>inherits duck/v1 SourceSpec, which currently provides:
* Sink - a reference to an object that will resolve to a domain name or
a URI directly to use as the sink.
* CloudEventOverrides - defines overrides to control the output format
and modifications of the event sent to the sink.</p>
</td>
</tr>
<tr>
<td>
<code>signingSecret</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.ValueFromField">
ValueFromField
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
<code>appID</code><br/>
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
<h3 id="sources.triggermesh.io/v1alpha1.StorageAccountResourceID">StorageAccountResourceID
</h3>
<p>
(<em>Appears on:</em><a href="#sources.triggermesh.io/v1alpha1.AzureBlobStorageSourceSpec">AzureBlobStorageSourceSpec</a>)
</p>
<div>
<p>StorageAccountResourceID represents a resource ID for a Storage Account.</p>
</div>
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
<code>SubscriptionID</code><br/>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>ResourceGroup</code><br/>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>StorageAccount</code><br/>
<em>
string
</em>
</td>
<td>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.TwilioSourceSpec">TwilioSourceSpec
</h3>
<p>
(<em>Appears on:</em><a href="#sources.triggermesh.io/v1alpha1.TwilioSource">TwilioSource</a>)
</p>
<div>
<p>TwilioSourceSpec defines the desired state of the event source.</p>
</div>
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
<code>SourceSpec</code><br/>
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
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.ValueFromField">ValueFromField
</h3>
<p>
(<em>Appears on:</em><a href="#sources.triggermesh.io/v1alpha1.AWSSecurityCredentials">AWSSecurityCredentials</a>, <a href="#sources.triggermesh.io/v1alpha1.AzureQueueStorageSourceSpec">AzureQueueStorageSourceSpec</a>, <a href="#sources.triggermesh.io/v1alpha1.AzureSASToken">AzureSASToken</a>, <a href="#sources.triggermesh.io/v1alpha1.AzureServicePrincipal">AzureServicePrincipal</a>, <a href="#sources.triggermesh.io/v1alpha1.GoogleCloudAuditLogsSourceSpec">GoogleCloudAuditLogsSourceSpec</a>, <a href="#sources.triggermesh.io/v1alpha1.GoogleCloudBillingSourceSpec">GoogleCloudBillingSourceSpec</a>, <a href="#sources.triggermesh.io/v1alpha1.GoogleCloudPubSubSourceSpec">GoogleCloudPubSubSourceSpec</a>, <a href="#sources.triggermesh.io/v1alpha1.GoogleCloudRepositoriesSourceSpec">GoogleCloudRepositoriesSourceSpec</a>, <a href="#sources.triggermesh.io/v1alpha1.GoogleCloudStorageSourceSpec">GoogleCloudStorageSourceSpec</a>, <a href="#sources.triggermesh.io/v1alpha1.HTTPPollerSourceSpec">HTTPPollerSourceSpec</a>, <a href="#sources.triggermesh.io/v1alpha1.OCIMetricsSourceSpec">OCIMetricsSourceSpec</a>, <a href="#sources.triggermesh.io/v1alpha1.SalesforceAuth">SalesforceAuth</a>, <a href="#sources.triggermesh.io/v1alpha1.SlackSourceSpec">SlackSourceSpec</a>, <a href="#sources.triggermesh.io/v1alpha1.WebhookSourceSpec">WebhookSourceSpec</a>, <a href="#sources.triggermesh.io/v1alpha1.ZendeskSourceSpec">ZendeskSourceSpec</a>)
</p>
<div>
<p>ValueFromField is a struct field that can have its value either defined
explicitly or sourced from another entity.</p>
</div>
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
<code>value</code><br/>
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
<code>valueFromSecret</code><br/>
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
<h3 id="sources.triggermesh.io/v1alpha1.WebhookSourceSpec">WebhookSourceSpec
</h3>
<p>
(<em>Appears on:</em><a href="#sources.triggermesh.io/v1alpha1.WebhookSource">WebhookSource</a>)
</p>
<div>
<p>WebhookSourceSpec defines the desired state of the event source.</p>
</div>
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
<code>SourceSpec</code><br/>
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
<p>inherits duck/v1 SourceSpec, which currently provides:
* Sink - a reference to an object that will resolve to a domain name or
a URI directly to use as the sink.
* CloudEventOverrides - defines overrides to control the output format
and modifications of the event sent to the sink.</p>
</td>
</tr>
<tr>
<td>
<code>eventType</code><br/>
<em>
string
</em>
</td>
<td>
<p>Value of the CloudEvents &lsquo;type&rsquo; attribute to set on ingested events.
<a href="https://github.com/cloudevents/spec/blob/v1.0.1/spec.md#type">https://github.com/cloudevents/spec/blob/v1.0.1/spec.md#type</a></p>
</td>
</tr>
<tr>
<td>
<code>eventSource</code><br/>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
<p>Value of the CloudEvents &lsquo;source&rsquo; attribute to set on ingested events.
<a href="https://github.com/cloudevents/spec/blob/v1.0.1/spec.md#source-1">https://github.com/cloudevents/spec/blob/v1.0.1/spec.md#source-1</a></p>
</td>
</tr>
<tr>
<td>
<code>basicAuthUsername</code><br/>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
<p>User name HTTP clients must set to authenticate with the webhook using HTTP Basic authentication.</p>
</td>
</tr>
<tr>
<td>
<code>basicAuthPassword</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.ValueFromField">
ValueFromField
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>Password HTTP clients must set to authenticate with the webhook using HTTP Basic authentication.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.ZendeskSourceSpec">ZendeskSourceSpec
</h3>
<p>
(<em>Appears on:</em><a href="#sources.triggermesh.io/v1alpha1.ZendeskSource">ZendeskSource</a>)
</p>
<div>
<p>ZendeskSourceSpec defines the desired state of the event source.</p>
</div>
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
<code>SourceSpec</code><br/>
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
<p>inherits duck/v1 SourceSpec, which currently provides:
* Sink - a reference to an object that will resolve to a domain name or
a URI directly to use as the sink.
* CloudEventOverrides - defines overrides to control the output format
and modifications of the event sent to the sink.</p>
</td>
</tr>
<tr>
<td>
<code>token</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.ValueFromField">
ValueFromField
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
<code>email</code><br/>
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
<code>webhookPassword</code><br/>
<em>
<a href="#sources.triggermesh.io/v1alpha1.ValueFromField">
ValueFromField
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
<code>webhookUsername</code><br/>
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
<code>subdomain</code><br/>
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
(<em>Appears on:</em><a href="#sources.triggermesh.io/v1alpha1.ZendeskSource">ZendeskSource</a>)
</p>
<div>
<p>ZendeskSourceStatus defines the observed state of the event source.</p>
</div>
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
<code>EventSourceStatus</code><br/>
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
<h2 id="targets.triggermesh.io/v1alpha1">targets.triggermesh.io/v1alpha1</h2>
<div>
<p>Package v1alpha1 contains API Schema definitions for the targets/v1alpha1 API group.</p>
</div>
Resource Types:
<ul><li>
<a href="#targets.triggermesh.io/v1alpha1.AWSComprehendTarget">AWSComprehendTarget</a>
</li><li>
<a href="#targets.triggermesh.io/v1alpha1.AWSDynamoDBTarget">AWSDynamoDBTarget</a>
</li><li>
<a href="#targets.triggermesh.io/v1alpha1.AWSKinesisTarget">AWSKinesisTarget</a>
</li><li>
<a href="#targets.triggermesh.io/v1alpha1.AWSLambdaTarget">AWSLambdaTarget</a>
</li><li>
<a href="#targets.triggermesh.io/v1alpha1.AWSS3Target">AWSS3Target</a>
</li><li>
<a href="#targets.triggermesh.io/v1alpha1.AWSSNSTarget">AWSSNSTarget</a>
</li><li>
<a href="#targets.triggermesh.io/v1alpha1.AWSSQSTarget">AWSSQSTarget</a>
</li><li>
<a href="#targets.triggermesh.io/v1alpha1.AlibabaOSSTarget">AlibabaOSSTarget</a>
</li><li>
<a href="#targets.triggermesh.io/v1alpha1.ConfluentTarget">ConfluentTarget</a>
</li><li>
<a href="#targets.triggermesh.io/v1alpha1.DatadogTarget">DatadogTarget</a>
</li><li>
<a href="#targets.triggermesh.io/v1alpha1.ElasticsearchTarget">ElasticsearchTarget</a>
</li><li>
<a href="#targets.triggermesh.io/v1alpha1.GoogleCloudFirestoreTarget">GoogleCloudFirestoreTarget</a>
</li><li>
<a href="#targets.triggermesh.io/v1alpha1.GoogleCloudStorageTarget">GoogleCloudStorageTarget</a>
</li><li>
<a href="#targets.triggermesh.io/v1alpha1.GoogleCloudWorkflowsTarget">GoogleCloudWorkflowsTarget</a>
</li><li>
<a href="#targets.triggermesh.io/v1alpha1.GoogleSheetTarget">GoogleSheetTarget</a>
</li><li>
<a href="#targets.triggermesh.io/v1alpha1.HTTPTarget">HTTPTarget</a>
</li><li>
<a href="#targets.triggermesh.io/v1alpha1.HasuraTarget">HasuraTarget</a>
</li><li>
<a href="#targets.triggermesh.io/v1alpha1.InfraTarget">InfraTarget</a>
</li><li>
<a href="#targets.triggermesh.io/v1alpha1.JiraTarget">JiraTarget</a>
</li><li>
<a href="#targets.triggermesh.io/v1alpha1.LogzTarget">LogzTarget</a>
</li><li>
<a href="#targets.triggermesh.io/v1alpha1.OracleTarget">OracleTarget</a>
</li><li>
<a href="#targets.triggermesh.io/v1alpha1.SalesforceTarget">SalesforceTarget</a>
</li><li>
<a href="#targets.triggermesh.io/v1alpha1.SendGridTarget">SendGridTarget</a>
</li><li>
<a href="#targets.triggermesh.io/v1alpha1.SlackTarget">SlackTarget</a>
</li><li>
<a href="#targets.triggermesh.io/v1alpha1.SplunkTarget">SplunkTarget</a>
</li><li>
<a href="#targets.triggermesh.io/v1alpha1.TektonTarget">TektonTarget</a>
</li><li>
<a href="#targets.triggermesh.io/v1alpha1.TwilioTarget">TwilioTarget</a>
</li><li>
<a href="#targets.triggermesh.io/v1alpha1.UiPathTarget">UiPathTarget</a>
</li><li>
<a href="#targets.triggermesh.io/v1alpha1.ZendeskTarget">ZendeskTarget</a>
</li></ul>
<h3 id="targets.triggermesh.io/v1alpha1.AWSComprehendTarget">AWSComprehendTarget
</h3>
<div>
<p>AWSComprehendTarget is the Schema for an AWS Comprehend Target.</p>
</div>
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
<code>apiVersion</code><br/>
string</td>
<td>
<code>
targets.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code><br/>
string
</td>
<td><code>AWSComprehendTarget</code></td>
</tr>
<tr>
<td>
<code>metadata</code><br/>
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
<code>spec</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.AWSComprehendTargetSpec">
AWSComprehendTargetSpec
</a>
</em>
</td>
<td>
<p>Spec holds the desired state of the AWSComprehendTarget (from the client).</p>
<br/>
<br/>
<table>
<tr>
<td>
<code>awsApiKey</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>AWS account Key.</p>
</td>
</tr>
<tr>
<td>
<code>awsApiSecret</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>AWS account secret key.</p>
</td>
</tr>
<tr>
<td>
<code>region</code><br/>
<em>
string
</em>
</td>
<td>
<p>Region to use for calling into Comprehend API.</p>
</td>
</tr>
<tr>
<td>
<code>eventOptions</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.EventOptions">
EventOptions
</a>
</em>
</td>
<td>
<p>EventOptions for targets.</p>
</td>
</tr>
<tr>
<td>
<code>language</code><br/>
<em>
string
</em>
</td>
<td>
<p>Language code to use to interact with Comprehend. The supported list can be found at: <a href="https://docs.aws.amazon.com/comprehend/latest/dg/supported-languages.html">https://docs.aws.amazon.com/comprehend/latest/dg/supported-languages.html</a></p>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<code>status</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.AWSComprehendTargetStatus">
AWSComprehendTargetStatus
</a>
</em>
</td>
<td>
<p>Status communicates the observed state of the AWSComprehendTarget (from the controller).</p>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.AWSDynamoDBTarget">AWSDynamoDBTarget
</h3>
<div>
<p>AWSDynamoDBTarget is the Schema for an AWS DynamoDB Target.</p>
</div>
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
<code>apiVersion</code><br/>
string</td>
<td>
<code>
targets.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code><br/>
string
</td>
<td><code>AWSDynamoDBTarget</code></td>
</tr>
<tr>
<td>
<code>metadata</code><br/>
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
<code>spec</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.AWSDynamoDBTargetSpec">
AWSDynamoDBTargetSpec
</a>
</em>
</td>
<td>
<p>Spec holds the desired state of the AWSDynamoDBTarget (from the client).</p>
<br/>
<br/>
<table>
<tr>
<td>
<code>awsApiKey</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>AWS account Key</p>
</td>
</tr>
<tr>
<td>
<code>awsApiSecret</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>AWS account secret key</p>
</td>
</tr>
<tr>
<td>
<code>arn</code><br/>
<em>
string
</em>
</td>
<td>
<p>Table ARN
<a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazondynamodb.html#amazondynamodb-resources-for-iam-policies">https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazondynamodb.html#amazondynamodb-resources-for-iam-policies</a></p>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<code>status</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.AWSDynamoDBTargetStatus">
AWSDynamoDBTargetStatus
</a>
</em>
</td>
<td>
<p>Status communicates the observed state of the AWSDynamoDBTarget (from the controller).</p>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.AWSKinesisTarget">AWSKinesisTarget
</h3>
<div>
<p>AWSKinesisTarget is the Schema for an AWS Kinesis Target.</p>
</div>
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
<code>apiVersion</code><br/>
string</td>
<td>
<code>
targets.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code><br/>
string
</td>
<td><code>AWSKinesisTarget</code></td>
</tr>
<tr>
<td>
<code>metadata</code><br/>
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
<code>spec</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.AWSKinesisTargetSpec">
AWSKinesisTargetSpec
</a>
</em>
</td>
<td>
<p>Spec holds the desired state of the AWSKinesisTarget (from the client).</p>
<br/>
<br/>
<table>
<tr>
<td>
<code>awsApiKey</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>AWS account Key</p>
</td>
</tr>
<tr>
<td>
<code>awsApiSecret</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>AWS account secret key</p>
</td>
</tr>
<tr>
<td>
<code>arn</code><br/>
<em>
string
</em>
</td>
<td>
<p>Amazon Resource Name of the Kinesis stream.
<a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonkinesis.html#amazonkinesis-resources-for-iam-policies">https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonkinesis.html#amazonkinesis-resources-for-iam-policies</a></p>
</td>
</tr>
<tr>
<td>
<code>partition</code><br/>
<em>
string
</em>
</td>
<td>
<p>Kinesis Partition to publish the events to</p>
</td>
</tr>
<tr>
<td>
<code>discardCloudEventContext</code><br/>
<em>
bool
</em>
</td>
<td>
<p>Whether to omit CloudEvent context attributes in created Kinesis records.
When this property is false (default), the entire CloudEvent payload is included.
When this property is true, only the CloudEvent data is included.</p>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<code>status</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.AWSTargetStatus">
AWSTargetStatus
</a>
</em>
</td>
<td>
<p>Status communicates the observed state of the AWSKinesisTarget (from the controller).</p>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.AWSLambdaTarget">AWSLambdaTarget
</h3>
<div>
<p>AWSLambdaTarget is the Schema for an AWS Lambda Target.</p>
</div>
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
<code>apiVersion</code><br/>
string</td>
<td>
<code>
targets.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code><br/>
string
</td>
<td><code>AWSLambdaTarget</code></td>
</tr>
<tr>
<td>
<code>metadata</code><br/>
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
<code>spec</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.AWSLambdaTargetSpec">
AWSLambdaTargetSpec
</a>
</em>
</td>
<td>
<p>Spec holds the desired state of the AWSLambdaTarget (from the client).</p>
<br/>
<br/>
<table>
<tr>
<td>
<code>awsApiKey</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>AWS account Key</p>
</td>
</tr>
<tr>
<td>
<code>awsApiSecret</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>AWS account secret key</p>
</td>
</tr>
<tr>
<td>
<code>arn</code><br/>
<em>
string
</em>
</td>
<td>
<p>Amazon Resource Name of the Lambda function.
<a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awslambda.html#awslambda-resources-for-iam-policies">https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awslambda.html#awslambda-resources-for-iam-policies</a></p>
</td>
</tr>
<tr>
<td>
<code>discardCloudEventContext</code><br/>
<em>
bool
</em>
</td>
<td>
<p>Whether to omit CloudEvent context attributes in Lambda function calls.
When this property is false (default), the entire CloudEvent payload is included.
When this property is true, only the CloudEvent data is included.</p>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<code>status</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.AWSTargetStatus">
AWSTargetStatus
</a>
</em>
</td>
<td>
<p>Status communicates the observed state of the AWSLambdaTarget (from the controller).</p>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.AWSS3Target">AWSS3Target
</h3>
<div>
<p>AWSS3Target is the Schema for an AWS s3 Target.</p>
</div>
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
<code>apiVersion</code><br/>
string</td>
<td>
<code>
targets.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code><br/>
string
</td>
<td><code>AWSS3Target</code></td>
</tr>
<tr>
<td>
<code>metadata</code><br/>
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
<code>spec</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.AWSS3TargetSpec">
AWSS3TargetSpec
</a>
</em>
</td>
<td>
<p>Spec holds the desired state of the AWSS3Target (from the client).</p>
<br/>
<br/>
<table>
<tr>
<td>
<code>awsApiKey</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>AWS account Key</p>
</td>
</tr>
<tr>
<td>
<code>awsApiSecret</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>AWS account secret key</p>
</td>
</tr>
<tr>
<td>
<code>arn</code><br/>
<em>
string
</em>
</td>
<td>
<p>Amazon Resource Name of the S3 bucket.
<a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazons3.html#amazons3-resources-for-iam-policies">https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazons3.html#amazons3-resources-for-iam-policies</a></p>
</td>
</tr>
<tr>
<td>
<code>discardCloudEventContext</code><br/>
<em>
bool
</em>
</td>
<td>
<p>Whether to omit CloudEvent context attributes in created S3 objects.
When this property is false (default), the entire CloudEvent payload is included.
When this property is true, only the CloudEvent data is included.</p>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<code>status</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.AWSS3TargetStatus">
AWSS3TargetStatus
</a>
</em>
</td>
<td>
<p>Status communicates the observed state of the AWSS3Target (from the controller).</p>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.AWSSNSTarget">AWSSNSTarget
</h3>
<div>
<p>AWSSNSTarget is the Schema for the event target.</p>
</div>
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
<code>apiVersion</code><br/>
string</td>
<td>
<code>
targets.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code><br/>
string
</td>
<td><code>AWSSNSTarget</code></td>
</tr>
<tr>
<td>
<code>metadata</code><br/>
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
<code>spec</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.AWSSNSTargetSpec">
AWSSNSTargetSpec
</a>
</em>
</td>
<td>
<p>Spec holds the desired state of the AWSSNSTarget (from the client).</p>
<br/>
<br/>
<table>
<tr>
<td>
<code>awsApiKey</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>AWS account Key</p>
</td>
</tr>
<tr>
<td>
<code>awsApiSecret</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>AWS account secret key</p>
</td>
</tr>
<tr>
<td>
<code>arn</code><br/>
<em>
string
</em>
</td>
<td>
<p>Amazon Resource Name of the SNS topic.
<a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonsns.html#amazonsns-resources-for-iam-policies">https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonsns.html#amazonsns-resources-for-iam-policies</a></p>
</td>
</tr>
<tr>
<td>
<code>discardCloudEventContext</code><br/>
<em>
bool
</em>
</td>
<td>
<p>Whether to omit CloudEvent context attributes in created SNS notifications.
When this property is false (default), the entire CloudEvent payload is included.
When this property is true, only the CloudEvent data is included.</p>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<code>status</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.AWSTargetStatus">
AWSTargetStatus
</a>
</em>
</td>
<td>
<p>Status communicates the observed state of the AWSSNSTarget (from the controller).</p>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.AWSSQSTarget">AWSSQSTarget
</h3>
<div>
<p>AWSSQSTarget is the Schema for an AWS SQS Target.</p>
</div>
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
<code>apiVersion</code><br/>
string</td>
<td>
<code>
targets.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code><br/>
string
</td>
<td><code>AWSSQSTarget</code></td>
</tr>
<tr>
<td>
<code>metadata</code><br/>
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
<code>spec</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.AWSSQSTargetSpec">
AWSSQSTargetSpec
</a>
</em>
</td>
<td>
<p>Spec holds the desired state of the AWSSQSTarget (from the client).</p>
<br/>
<br/>
<table>
<tr>
<td>
<code>awsApiKey</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>AWS account Key</p>
</td>
</tr>
<tr>
<td>
<code>awsApiSecret</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>AWS account secret key</p>
</td>
</tr>
<tr>
<td>
<code>arn</code><br/>
<em>
string
</em>
</td>
<td>
<p>Amazon Resource Name of the SQS queue.
<a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonsqs.html#amazonsqs-resources-for-iam-policies">https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonsqs.html#amazonsqs-resources-for-iam-policies</a></p>
</td>
</tr>
<tr>
<td>
<code>discardCloudEventContext</code><br/>
<em>
bool
</em>
</td>
<td>
<p>Whether to omit CloudEvent context attributes in created SQS messages.
When this property is false (default), the entire CloudEvent payload is included.
When this property is true, only the CloudEvent data is included.</p>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<code>status</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.AWSTargetStatus">
AWSTargetStatus
</a>
</em>
</td>
<td>
<p>Status communicates the observed state of the AWSSQSTarget (from the controller).</p>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.AlibabaOSSTarget">AlibabaOSSTarget
</h3>
<div>
<p>AlibabaOSSTarget is the Schema for an Alibaba Object Storage Service Target.</p>
</div>
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
<code>apiVersion</code><br/>
string</td>
<td>
<code>
targets.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code><br/>
string
</td>
<td><code>AlibabaOSSTarget</code></td>
</tr>
<tr>
<td>
<code>metadata</code><br/>
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
<code>spec</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.AlibabaOSSTargetSpec">
AlibabaOSSTargetSpec
</a>
</em>
</td>
<td>
<br/>
<br/>
<table>
<tr>
<td>
<code>accessKeyID</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>Alibaba SDK access key id as registered. For more information on how to
create an access key pair, please refer to
<a href="https://www.alibabacloud.com/help/doc-detail/53045.htm?spm=a2c63.p38356.879954.9.23bc7d91ARN6Hy#task968">https://www.alibabacloud.com/help/doc-detail/53045.htm?spm=a2c63.p38356.879954.9.23bc7d91ARN6Hy#task968</a>.</p>
</td>
</tr>
<tr>
<td>
<code>accessKeySecret</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>Alibaba SDK access key secret as registered.</p>
</td>
</tr>
<tr>
<td>
<code>endpoint</code><br/>
<em>
string
</em>
</td>
<td>
<p>The domain name used to access the OSS. For more information, please refer
to the region and endpoint guide at
<a href="https://www.alibabacloud.com/help/doc-detail/31837.htm?spm=a2c63.p38356.879954.8.23bc7d91ARN6Hy#concept-zt4-cvy-5db">https://www.alibabacloud.com/help/doc-detail/31837.htm?spm=a2c63.p38356.879954.8.23bc7d91ARN6Hy#concept-zt4-cvy-5db</a></p>
</td>
</tr>
<tr>
<td>
<code>bucket</code><br/>
<em>
string
</em>
</td>
<td>
<p>The unique container to store objects in OSS.</p>
</td>
</tr>
<tr>
<td>
<code>eventOptions</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.EventOptions">
EventOptions
</a>
</em>
</td>
<td>
<p>EventOptions for targets</p>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<code>status</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.AlibabaOSSTargetStatus">
AlibabaOSSTargetStatus
</a>
</em>
</td>
<td>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.ConfluentTarget">ConfluentTarget
</h3>
<div>
<p>ConfluentTarget is the Schema for an ConfluentTarget.</p>
</div>
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
<code>apiVersion</code><br/>
string</td>
<td>
<code>
targets.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code><br/>
string
</td>
<td><code>ConfluentTarget</code></td>
</tr>
<tr>
<td>
<code>metadata</code><br/>
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
<code>spec</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.ConfluentTargetSpec">
ConfluentTargetSpec
</a>
</em>
</td>
<td>
<p>Spec holds the desired state of the ConfluentTarget (from the client).</p>
<br/>
<br/>
<table>
<tr>
<td>
<code>username</code><br/>
<em>
string
</em>
</td>
<td>
<p>SASLUsername Confluent account User</p>
</td>
</tr>
<tr>
<td>
<code>password</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>SASLPassword Confluent account Password</p>
</td>
</tr>
<tr>
<td>
<code>topic</code><br/>
<em>
string
</em>
</td>
<td>
<p>Topic where messages are produced.</p>
</td>
</tr>
<tr>
<td>
<code>topicReplicationFactor</code><br/>
<em>
int
</em>
</td>
<td>
<em>(Optional)</em>
<p>TopicReplicationFactor is the number of replicas for the topic.</p>
</td>
</tr>
<tr>
<td>
<code>topicPartitions</code><br/>
<em>
int
</em>
</td>
<td>
<em>(Optional)</em>
<p>TopicPartitions is the number of partitions for the topic.</p>
</td>
</tr>
<tr>
<td>
<code>bootstrapServers</code><br/>
<em>
[]string
</em>
</td>
<td>
<p>BootstrapServers holds the name of the Kafka Bootstrap server.</p>
</td>
</tr>
<tr>
<td>
<code>securityProtocol</code><br/>
<em>
string
</em>
</td>
<td>
<p>SecurityProtocol allows the user to set the security protocol</p>
</td>
</tr>
<tr>
<td>
<code>saslMechanism</code><br/>
<em>
string
</em>
</td>
<td>
<p>SASLMechanisms all the assignment of specific SASL mechanisms.</p>
</td>
</tr>
<tr>
<td>
<code>discardCloudEventContext</code><br/>
<em>
bool
</em>
</td>
<td>
<p>Whether to omit CloudEvent context attributes in created messages.
When this property is false (default), the entire CloudEvent payload is included.
When this property is true, only the CloudEvent data is included.</p>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<code>status</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.ConfluentTargetStatus">
ConfluentTargetStatus
</a>
</em>
</td>
<td>
<p>Status communicates the observed state of the ConfluentTarget (from the controller).</p>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.DatadogTarget">DatadogTarget
</h3>
<div>
<p>DatadogTarget is the Schema for an HTTP Target.</p>
</div>
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
<code>apiVersion</code><br/>
string</td>
<td>
<code>
targets.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code><br/>
string
</td>
<td><code>DatadogTarget</code></td>
</tr>
<tr>
<td>
<code>metadata</code><br/>
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
<code>spec</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.DatadogTargetSpec">
DatadogTargetSpec
</a>
</em>
</td>
<td>
<br/>
<br/>
<table>
<tr>
<td>
<code>apiKey</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>DatadogApiKey represents how Datadog credentials should be provided in the secret</p>
</td>
</tr>
<tr>
<td>
<code>metricPrefix</code><br/>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
<p>MetricPrefix is prepended to the name of the associated metrics.</p>
</td>
</tr>
<tr>
<td>
<code>eventOptions</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.EventOptions">
EventOptions
</a>
</em>
</td>
<td>
<p>EventOptions for targets</p>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<code>status</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.DatadogTargetStatus">
DatadogTargetStatus
</a>
</em>
</td>
<td>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.ElasticsearchTarget">ElasticsearchTarget
</h3>
<div>
<p>ElasticsearchTarget is the Schema for an Elasticsearch Target.</p>
</div>
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
<code>apiVersion</code><br/>
string</td>
<td>
<code>
targets.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code><br/>
string
</td>
<td><code>ElasticsearchTarget</code></td>
</tr>
<tr>
<td>
<code>metadata</code><br/>
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
<code>spec</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.ElasticsearchTargetSpec">
ElasticsearchTargetSpec
</a>
</em>
</td>
<td>
<p>Spec holds the desired state of the ElasticsearchTarget (from the client).</p>
<br/>
<br/>
<table>
<tr>
<td>
<code>connection</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.Connection">
Connection
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>Connection information to elasticsearch.</p>
</td>
</tr>
<tr>
<td>
<code>indexName</code><br/>
<em>
string
</em>
</td>
<td>
<p>IndexName to write to.</p>
</td>
</tr>
<tr>
<td>
<code>discardCloudEventContext</code><br/>
<em>
bool
</em>
</td>
<td>
<p>Whether to omit CloudEvent context attributes in created documents.
When this property is false (default), the entire CloudEvent payload is included.
When this property is true, only the CloudEvent data is included.</p>
</td>
</tr>
<tr>
<td>
<code>eventOptions</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.EventOptions">
EventOptions
</a>
</em>
</td>
<td>
<p>EventOptions for targets.</p>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<code>status</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.ElasticsearchTargetStatus">
ElasticsearchTargetStatus
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>Status communicates the observed state of the ElasticsearchTarget (from the controller).</p>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.GoogleCloudFirestoreTarget">GoogleCloudFirestoreTarget
</h3>
<div>
<p>GoogleCloudFirestoreTarget is the Schema for the GoogleCloudFirestore Target.</p>
</div>
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
<code>apiVersion</code><br/>
string</td>
<td>
<code>
targets.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code><br/>
string
</td>
<td><code>GoogleCloudFirestoreTarget</code></td>
</tr>
<tr>
<td>
<code>metadata</code><br/>
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
<code>spec</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.GoogleCloudFirestoreTargetSpec">
GoogleCloudFirestoreTargetSpec
</a>
</em>
</td>
<td>
<br/>
<br/>
<table>
<tr>
<td>
<code>credentialsJson</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>Credentials represents how Google Firestore credentials should be provided in the secret</p>
</td>
</tr>
<tr>
<td>
<code>defaultCollection</code><br/>
<em>
string
</em>
</td>
<td>
<p>DefaultCollection sets a default Firestore collection to select from</p>
</td>
</tr>
<tr>
<td>
<code>projectID</code><br/>
<em>
string
</em>
</td>
<td>
<p>ProjectID specifies the Google project ID</p>
</td>
</tr>
<tr>
<td>
<code>discardCloudEventContext</code><br/>
<em>
bool
</em>
</td>
<td>
<p>Whether to omit CloudEvent context attributes in created SNS notifications.
When this property is false (default), the entire CloudEvent payload is included.
When this property is true, only the CloudEvent data is included.</p>
</td>
</tr>
<tr>
<td>
<code>eventOptions</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.EventOptions">
EventOptions
</a>
</em>
</td>
<td>
<p>EventOptions for targets</p>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<code>status</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.GoogleCloudFirestoreTargetStatus">
GoogleCloudFirestoreTargetStatus
</a>
</em>
</td>
<td>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.GoogleCloudStorageTarget">GoogleCloudStorageTarget
</h3>
<div>
<p>GoogleCloudStorageTarget is the Schema for an Google Storage Target.</p>
</div>
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
<code>apiVersion</code><br/>
string</td>
<td>
<code>
targets.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code><br/>
string
</td>
<td><code>GoogleCloudStorageTarget</code></td>
</tr>
<tr>
<td>
<code>metadata</code><br/>
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
<code>spec</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.GoogleCloudStorageTargetSpec">
GoogleCloudStorageTargetSpec
</a>
</em>
</td>
<td>
<br/>
<br/>
<table>
<tr>
<td>
<code>credentialsJson</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>Credentials represents how Google Storage credentials should be provided in the secret</p>
</td>
</tr>
<tr>
<td>
<code>bucketName</code><br/>
<em>
string
</em>
</td>
<td>
<p>BucketName specifies the Google Storage Bucket</p>
</td>
</tr>
<tr>
<td>
<code>eventOptions</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.EventOptions">
EventOptions
</a>
</em>
</td>
<td>
<p>EventOptions for targets</p>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<code>status</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.GoogleCloudStorageTargetStatus">
GoogleCloudStorageTargetStatus
</a>
</em>
</td>
<td>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.GoogleCloudWorkflowsTarget">GoogleCloudWorkflowsTarget
</h3>
<div>
<p>GoogleCloudWorkflowsTarget is the Schema for an Google Cloud Workflows Target.</p>
</div>
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
<code>apiVersion</code><br/>
string</td>
<td>
<code>
targets.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code><br/>
string
</td>
<td><code>GoogleCloudWorkflowsTarget</code></td>
</tr>
<tr>
<td>
<code>metadata</code><br/>
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
<code>spec</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.GoogleCloudWorkflowsTargetSpec">
GoogleCloudWorkflowsTargetSpec
</a>
</em>
</td>
<td>
<br/>
<br/>
<table>
<tr>
<td>
<code>credentialsJson</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>GoogleCloudWorkflowsApiKey represents how GoogleCloudWorkflows credentials should be provided in the secret</p>
</td>
</tr>
<tr>
<td>
<code>eventOptions</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.EventOptions">
EventOptions
</a>
</em>
</td>
<td>
<p>EventOptions for targets</p>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<code>status</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.GoogleCloudWorkflowsTargetStatus">
GoogleCloudWorkflowsTargetStatus
</a>
</em>
</td>
<td>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.GoogleSheetTarget">GoogleSheetTarget
</h3>
<div>
<p>GoogleSheetTarget is the Schema for an GoogleSheet Target.</p>
</div>
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
<code>apiVersion</code><br/>
string</td>
<td>
<code>
targets.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code><br/>
string
</td>
<td><code>GoogleSheetTarget</code></td>
</tr>
<tr>
<td>
<code>metadata</code><br/>
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
<code>spec</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.GoogleSheetTargetSpec">
GoogleSheetTargetSpec
</a>
</em>
</td>
<td>
<p>Spec holds the desired state of the GoogleSheetTarget (from the client).</p>
<br/>
<br/>
<table>
<tr>
<td>
<code>googleServiceAccount</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>GoogleSheet credential JSON for auth</p>
</td>
</tr>
<tr>
<td>
<code>id</code><br/>
<em>
string
</em>
</td>
<td>
<p>ID of Google a spreadsheet</p>
</td>
</tr>
<tr>
<td>
<code>defaultPrefix</code><br/>
<em>
string
</em>
</td>
<td>
<p>DefaultPrefix is a pre-defined prefix for the individual sheets.</p>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<code>status</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.GoogleSheetTargetStatus">
GoogleSheetTargetStatus
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>Status communicates the observed state of the GoogleSheetTarget (from the controller).</p>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.HTTPTarget">HTTPTarget
</h3>
<div>
<p>HTTPTarget is the Schema for an HTTP Target.</p>
</div>
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
<code>apiVersion</code><br/>
string</td>
<td>
<code>
targets.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code><br/>
string
</td>
<td><code>HTTPTarget</code></td>
</tr>
<tr>
<td>
<code>metadata</code><br/>
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
<code>spec</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.HTTPTargetSpec">
HTTPTargetSpec
</a>
</em>
</td>
<td>
<br/>
<br/>
<table>
<tr>
<td>
<code>response</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.HTTPEventResponse">
HTTPEventResponse
</a>
</em>
</td>
<td>
<p>Response data to be used at replies.</p>
</td>
</tr>
<tr>
<td>
<code>endpoint</code><br/>
<em>
<a href="https://pkg.go.dev/knative.dev/pkg/apis#URL">
knative.dev/pkg/apis.URL
</a>
</em>
</td>
<td>
<p>Endpoint to connect to.</p>
</td>
</tr>
<tr>
<td>
<code>method</code><br/>
<em>
string
</em>
</td>
<td>
<p>Method to use at requests.</p>
</td>
</tr>
<tr>
<td>
<code>headers</code><br/>
<em>
map[string]string
</em>
</td>
<td>
<em>(Optional)</em>
<p>Headers to be included at HTTP requests</p>
</td>
</tr>
<tr>
<td>
<code>skipVerify</code><br/>
<em>
bool
</em>
</td>
<td>
<em>(Optional)</em>
<p>SkipVerify disables server certificate validation.</p>
</td>
</tr>
<tr>
<td>
<code>caCertificate</code><br/>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
<p>CACertificate uses the CA certificate to verify the remote server certificate.</p>
</td>
</tr>
<tr>
<td>
<code>basicAuthUsername</code><br/>
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
<code>basicAuthPassword</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>BasicAuthPassword used for basic authentication.</p>
</td>
</tr>
<tr>
<td>
<code>oauthClientID</code><br/>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
<p>OAuthClientID used for OAuth2 authentication.</p>
</td>
</tr>
<tr>
<td>
<code>oauthClientSecret</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>OAuthClientSecret used for OAuth2 authentication.</p>
</td>
</tr>
<tr>
<td>
<code>oauthTokenURL</code><br/>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
<p>OAuthTokenURL used for OAuth2 authentication.</p>
</td>
</tr>
<tr>
<td>
<code>oauthScopes</code><br/>
<em>
[]string
</em>
</td>
<td>
<em>(Optional)</em>
<p>OAuthScopes used for OAuth2 authentication.</p>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<code>status</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.HTTPTargetStatus">
HTTPTargetStatus
</a>
</em>
</td>
<td>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.HasuraTarget">HasuraTarget
</h3>
<div>
<p>HasuraTarget is the Schema for the event target.</p>
</div>
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
<code>apiVersion</code><br/>
string</td>
<td>
<code>
targets.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code><br/>
string
</td>
<td><code>HasuraTarget</code></td>
</tr>
<tr>
<td>
<code>metadata</code><br/>
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
<code>spec</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.HasuraTargetSpec">
HasuraTargetSpec
</a>
</em>
</td>
<td>
<br/>
<br/>
<table>
<tr>
<td>
<code>endpoint</code><br/>
<em>
string
</em>
</td>
<td>
<p>The GraphQL server endpoint.</p>
</td>
</tr>
<tr>
<td>
<code>jwt</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>A user token for interfacing with Hasura.</p>
</td>
</tr>
<tr>
<td>
<code>admin</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>An alternate token for interfacing with Hasura using admin privileges.</p>
</td>
</tr>
<tr>
<td>
<code>defaultRole</code><br/>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
<p>A default role that the queries should use when running the query.</p>
</td>
</tr>
<tr>
<td>
<code>queries</code><br/>
<em>
map[string]string
</em>
</td>
<td>
<em>(Optional)</em>
<p>A predefined list of queries that an event can specify in the io.triggermesh.graphql.query event type.</p>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<code>status</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.HasuraTargetStatus">
HasuraTargetStatus
</a>
</em>
</td>
<td>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.InfraTarget">InfraTarget
</h3>
<div>
<p>InfraTarget is the Schema for the Infra JS Target.</p>
</div>
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
<code>apiVersion</code><br/>
string</td>
<td>
<code>
targets.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code><br/>
string
</td>
<td><code>InfraTarget</code></td>
</tr>
<tr>
<td>
<code>metadata</code><br/>
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
<code>spec</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.InfraTargetSpec">
InfraTargetSpec
</a>
</em>
</td>
<td>
<br/>
<br/>
<table>
<tr>
<td>
<code>script</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.InfraTargetScript">
InfraTargetScript
</a>
</em>
</td>
<td>
<p>Script to be executed at every request.</p>
</td>
</tr>
<tr>
<td>
<code>state</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.InfraTargetState">
InfraTargetState
</a>
</em>
</td>
<td>
<p>State actions and options.</p>
</td>
</tr>
<tr>
<td>
<code>typeLoopProtection</code><br/>
<em>
bool
</em>
</td>
<td>
<p>TypeLoopProtection protect against infinite loops when the cloudevent type does not change.</p>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<code>status</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.InfraTargetStatus">
InfraTargetStatus
</a>
</em>
</td>
<td>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.JiraTarget">JiraTarget
</h3>
<div>
<p>JiraTarget is the Schema for the Infra JS Target.</p>
</div>
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
<code>apiVersion</code><br/>
string</td>
<td>
<code>
targets.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code><br/>
string
</td>
<td><code>JiraTarget</code></td>
</tr>
<tr>
<td>
<code>metadata</code><br/>
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
<code>spec</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.JiraTargetSpec">
JiraTargetSpec
</a>
</em>
</td>
<td>
<br/>
<br/>
<table>
<tr>
<td>
<code>auth</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.JiraAuth">
JiraAuth
</a>
</em>
</td>
<td>
<p>Authentication to interact with the Salesforce API.</p>
</td>
</tr>
<tr>
<td>
<code>url</code><br/>
<em>
string
</em>
</td>
<td>
<p>URL for Jira service.</p>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<code>status</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.JiraTargetStatus">
JiraTargetStatus
</a>
</em>
</td>
<td>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.LogzTarget">LogzTarget
</h3>
<div>
<p>LogzTarget is the Schema for the Logz Target.</p>
</div>
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
<code>apiVersion</code><br/>
string</td>
<td>
<code>
targets.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code><br/>
string
</td>
<td><code>LogzTarget</code></td>
</tr>
<tr>
<td>
<code>metadata</code><br/>
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
<code>spec</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.LogzTargetSpec">
LogzTargetSpec
</a>
</em>
</td>
<td>
<br/>
<br/>
<table>
<tr>
<td>
<code>shippingToken</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>ShippingToken defines the API token.</p>
</td>
</tr>
<tr>
<td>
<code>logsListenerURL</code><br/>
<em>
string
</em>
</td>
<td>
<p>LogsListenerURL Defines the Log listener URL</p>
</td>
</tr>
<tr>
<td>
<code>eventOptions</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.EventOptions">
EventOptions
</a>
</em>
</td>
<td>
<p>EventOptions for targets</p>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<code>status</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.LogzTargetStatus">
LogzTargetStatus
</a>
</em>
</td>
<td>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.OracleTarget">OracleTarget
</h3>
<div>
<p>OracleTarget is the Schema for an Oracle Target.</p>
</div>
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
<code>apiVersion</code><br/>
string</td>
<td>
<code>
targets.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code><br/>
string
</td>
<td><code>OracleTarget</code></td>
</tr>
<tr>
<td>
<code>metadata</code><br/>
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
<code>spec</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.OracleTargetSpec">
OracleTargetSpec
</a>
</em>
</td>
<td>
<p>Spec holds the desired state of the OracleTarget (from the client).</p>
<br/>
<br/>
<table>
<tr>
<td>
<code>oracleApiPrivateKey</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>Oracle User API private key.</p>
</td>
</tr>
<tr>
<td>
<code>oracleApiPrivateKeyPassphrase</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>Oracle User API private key passphrase.</p>
</td>
</tr>
<tr>
<td>
<code>oracleApiPrivateKeyFingerprint</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>Oracle User API cert fingerprint.</p>
</td>
</tr>
<tr>
<td>
<code>oracleTenancy</code><br/>
<em>
string
</em>
</td>
<td>
<p>Oracle Tenancy OCID.</p>
</td>
</tr>
<tr>
<td>
<code>oracleUser</code><br/>
<em>
string
</em>
</td>
<td>
<p>Oracle User OCID associated with the API key.</p>
</td>
</tr>
<tr>
<td>
<code>oracleRegion</code><br/>
<em>
string
</em>
</td>
<td>
<p>Oracle Cloud Region.</p>
</td>
</tr>
<tr>
<td>
<code>function</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.OracleFunctionSpecSpec">
OracleFunctionSpecSpec
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
<code>status</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.OracleTargetStatus">
OracleTargetStatus
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>Status communicates the observed state of the OracleTarget (from the controller).</p>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.SalesforceTarget">SalesforceTarget
</h3>
<div>
<p>SalesforceTarget receives CloudEvents typed <code>io.triggermesh.salesforce.apicall</code>
that fullfil the schema at <a href="https://docs.triggermesh.io/schemas/salesforce.apicall.json">https://docs.triggermesh.io/schemas/salesforce.apicall.json</a>
and consumes the Salesforce API.</p>
<p>Upon a successful call a response is returned typed <code>io.triggermesh.salesforce.apicall.response</code>
containing the returned payload as the CloudEvent data and a <code>category: success</code> extension.
In case of an error the payload will be conformant with <a href="https://docs.triggermesh.io/schemas/triggermesh.error.json">https://docs.triggermesh.io/schemas/triggermesh.error.json</a>
and the CloudEvent extension will be set to <code>category: error</code>.</p>
</div>
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
<code>apiVersion</code><br/>
string</td>
<td>
<code>
targets.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code><br/>
string
</td>
<td><code>SalesforceTarget</code></td>
</tr>
<tr>
<td>
<code>metadata</code><br/>
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
<code>spec</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SalesforceTargetSpec">
SalesforceTargetSpec
</a>
</em>
</td>
<td>
<br/>
<br/>
<table>
<tr>
<td>
<code>auth</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SalesforceAuth">
SalesforceAuth
</a>
</em>
</td>
<td>
<p>Authentication information to interact with the Salesforce API.</p>
</td>
</tr>
<tr>
<td>
<code>apiVersion</code><br/>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
<p>APIVersion at Salesforce. If not set the latest version will be used.</p>
</td>
</tr>
<tr>
<td>
<code>eventOptions</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.EventOptions">
EventOptions
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>EventOptions for targets</p>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<code>status</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SalesforceTargetStatus">
SalesforceTargetStatus
</a>
</em>
</td>
<td>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.SendGridTarget">SendGridTarget
</h3>
<div>
<p>SendGridTarget is the Schema for an Sendgrid Target.</p>
</div>
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
<code>apiVersion</code><br/>
string</td>
<td>
<code>
targets.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code><br/>
string
</td>
<td><code>SendGridTarget</code></td>
</tr>
<tr>
<td>
<code>metadata</code><br/>
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
<code>spec</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SendGridTargetSpec">
SendGridTargetSpec
</a>
</em>
</td>
<td>
<p>Spec holds the desired state of the SendGridTarget (from the client).</p>
<br/>
<br/>
<table>
<tr>
<td>
<code>apiKey</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>APIKey for account</p>
</td>
</tr>
<tr>
<td>
<code>defaultFromEmail</code><br/>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
<p>DefaultFromEmail is a default email account to assign to the outgoing email&rsquo;s.</p>
</td>
</tr>
<tr>
<td>
<code>defaultToEmail</code><br/>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
<p>DefaultToEmail is a default recipient email account to assign to the outgoing email&rsquo;s.</p>
</td>
</tr>
<tr>
<td>
<code>defaultToName</code><br/>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
<p>DefaultToName is a default recipient name to assign to the outgoing email&rsquo;s.</p>
</td>
</tr>
<tr>
<td>
<code>defaultFromName</code><br/>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
<p>DefaultFromName is a default sender name to assign to the outgoing email&rsquo;s.</p>
</td>
</tr>
<tr>
<td>
<code>defaultMessage</code><br/>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
<p>DefaultMessage is a default message to assign to the outgoing email&rsquo;s.</p>
</td>
</tr>
<tr>
<td>
<code>defaultSubject</code><br/>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
<p>DefaultSubject is a default subject to assign to the outgoing email&rsquo;s.</p>
</td>
</tr>
<tr>
<td>
<code>eventOptions</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.EventOptions">
EventOptions
</a>
</em>
</td>
<td>
<p>EventOptions for targets</p>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<code>status</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SendGridTargetStatus">
SendGridTargetStatus
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>Status communicates the observed state of the SendGridTarget (from the controller).</p>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.SlackTarget">SlackTarget
</h3>
<div>
<p>SlackTarget defines the schema for the Slack target.</p>
</div>
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
<code>apiVersion</code><br/>
string</td>
<td>
<code>
targets.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code><br/>
string
</td>
<td><code>SlackTarget</code></td>
</tr>
<tr>
<td>
<code>metadata</code><br/>
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
<code>spec</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SlackTargetSpec">
SlackTargetSpec
</a>
</em>
</td>
<td>
<p>Spec holds the desired state of the SlackTarget (from the client).</p>
<br/>
<br/>
<table>
<tr>
<td>
<code>token</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>Token for Slack App</p>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<code>status</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SlackTargetStatus">
SlackTargetStatus
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>Status communicates the observed state of the SlackTarget (from the controller).</p>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.SplunkTarget">SplunkTarget
</h3>
<div>
<p>SplunkTarget is the Schema for the event target.</p>
</div>
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
<code>apiVersion</code><br/>
string</td>
<td>
<code>
targets.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code><br/>
string
</td>
<td><code>SplunkTarget</code></td>
</tr>
<tr>
<td>
<code>metadata</code><br/>
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
<code>spec</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SplunkTargetSpec">
SplunkTargetSpec
</a>
</em>
</td>
<td>
<br/>
<br/>
<table>
<tr>
<td>
<code>endpoint</code><br/>
<em>
<a href="https://pkg.go.dev/knative.dev/pkg/apis#URL">
knative.dev/pkg/apis.URL
</a>
</em>
</td>
<td>
<p>URL of the HTTP Event Collector (HEC).
Only the scheme, hostname, and port (optionally) are evaluated, the URL path is trimmed if present.
see <a href="https://docs.splunk.com/Documentation/Splunk/latest/Data/UsetheHTTPEventCollector#Enable_HTTP_Event_Collector">https://docs.splunk.com/Documentation/Splunk/latest/Data/UsetheHTTPEventCollector#Enable_HTTP_Event_Collector</a></p>
</td>
</tr>
<tr>
<td>
<code>token</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.ValueFromField">
ValueFromField
</a>
</em>
</td>
<td>
<p>Token for authenticating requests against the HEC.
see <a href="https://docs.splunk.com/Documentation/Splunk/latest/Data/UsetheHTTPEventCollector#About_Event_Collector_tokens">https://docs.splunk.com/Documentation/Splunk/latest/Data/UsetheHTTPEventCollector#About_Event_Collector_tokens</a></p>
</td>
</tr>
<tr>
<td>
<code>index</code><br/>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
<p>Name of the index to send events to.
When undefined, events are sent to the default index defined in the HEC token&rsquo;s configuration.</p>
</td>
</tr>
<tr>
<td>
<code>skipTLSVerify</code><br/>
<em>
bool
</em>
</td>
<td>
<em>(Optional)</em>
<p>Controls whether the Splunk client verifies the server&rsquo;s certificate
chain and host name when communicating over TLS.</p>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<code>status</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SplunkTargetStatus">
SplunkTargetStatus
</a>
</em>
</td>
<td>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.TektonTarget">TektonTarget
</h3>
<div>
<p>TektonTarget defines the schema for the Tekton target.</p>
</div>
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
<code>apiVersion</code><br/>
string</td>
<td>
<code>
targets.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code><br/>
string
</td>
<td><code>TektonTarget</code></td>
</tr>
<tr>
<td>
<code>metadata</code><br/>
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
<code>spec</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.TektonTargetSpec">
TektonTargetSpec
</a>
</em>
</td>
<td>
<p>Spec holds the desired state of the TektonTarget (from the client).</p>
<br/>
<br/>
<table>
<tr>
<td>
<code>reapPolicy</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.TektonTargetReapPolicy">
TektonTargetReapPolicy
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>ReapPolicy dictates the reaping policy to be applied for the target</p>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<code>status</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.TektonTargetStatus">
TektonTargetStatus
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>Status communicates the observed state of the TektonTarget (from the controller).</p>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.TwilioTarget">TwilioTarget
</h3>
<div>
<p>TwilioTarget is the Schema for an Twilio Target.</p>
</div>
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
<code>apiVersion</code><br/>
string</td>
<td>
<code>
targets.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code><br/>
string
</td>
<td><code>TwilioTarget</code></td>
</tr>
<tr>
<td>
<code>metadata</code><br/>
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
<code>spec</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.TwilioTargetSpec">
TwilioTargetSpec
</a>
</em>
</td>
<td>
<p>Spec holds the desired state of the TwilioTarget (from the client).</p>
<br/>
<br/>
<table>
<tr>
<td>
<code>sid</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>Twilio account SID</p>
</td>
</tr>
<tr>
<td>
<code>token</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>Twilio account Token</p>
</td>
</tr>
<tr>
<td>
<code>defaultPhoneFrom</code><br/>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
<p>DefaultPhoneFrom is the purchased Twilio phone we are using</p>
</td>
</tr>
<tr>
<td>
<code>defaultPhoneTo</code><br/>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
<p>DefaultPhoneTo is the destination phone</p>
</td>
</tr>
<tr>
<td>
<code>eventOptions</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.EventOptions">
EventOptions
</a>
</em>
</td>
<td>
<p>EventOptions for targets</p>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<code>status</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.TwilioTargetStatus">
TwilioTargetStatus
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>Status communicates the observed state of the TwilioTarget (from the controller).</p>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.UiPathTarget">UiPathTarget
</h3>
<div>
<p>UiPathTarget is the Schema for the event target.</p>
</div>
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
<code>apiVersion</code><br/>
string</td>
<td>
<code>
targets.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code><br/>
string
</td>
<td><code>UiPathTarget</code></td>
</tr>
<tr>
<td>
<code>metadata</code><br/>
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
<code>spec</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.UiPathTargetSpec">
UiPathTargetSpec
</a>
</em>
</td>
<td>
<br/>
<br/>
<table>
<tr>
<td>
<code>userKey</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>UserKey An OAuth token used to obtain an access key.</p>
</td>
</tr>
<tr>
<td>
<code>robotName</code><br/>
<em>
string
</em>
</td>
<td>
<p>RobotName is the robot to invoke with this target.</p>
</td>
</tr>
<tr>
<td>
<code>processName</code><br/>
<em>
string
</em>
</td>
<td>
<p>ProccessName is the process name that will be used by UiPath for the target.</p>
</td>
</tr>
<tr>
<td>
<code>tenantName</code><br/>
<em>
string
</em>
</td>
<td>
<p>TenantName is the tenant that contains the components that will be invoked by the target.</p>
</td>
</tr>
<tr>
<td>
<code>accountLogicalName</code><br/>
<em>
string
</em>
</td>
<td>
<p>AccountLogicalName is the unique site URL used to identif the UiPath tenant.</p>
</td>
</tr>
<tr>
<td>
<code>clientID</code><br/>
<em>
string
</em>
</td>
<td>
<p>ClientID is the OAuth id registered to this target.</p>
</td>
</tr>
<tr>
<td>
<code>organizationUnitID</code><br/>
<em>
string
</em>
</td>
<td>
<p>OrganizationUnitID is the organization unit within the tenant that the UiPath proccess will run under.</p>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<code>status</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.UiPathTargetStatus">
UiPathTargetStatus
</a>
</em>
</td>
<td>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.ZendeskTarget">ZendeskTarget
</h3>
<div>
<p>ZendeskTarget is the Schema for an Zendesk Target.</p>
</div>
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
<code>apiVersion</code><br/>
string</td>
<td>
<code>
targets.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code><br/>
string
</td>
<td><code>ZendeskTarget</code></td>
</tr>
<tr>
<td>
<code>metadata</code><br/>
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
<code>spec</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.ZendeskTargetSpec">
ZendeskTargetSpec
</a>
</em>
</td>
<td>
<p>Spec holds the desired state of the ZendeskTarget (from the client).</p>
<br/>
<br/>
<table>
<tr>
<td>
<code>token</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>Token contains the Zendesk account Token.</p>
</td>
</tr>
<tr>
<td>
<code>subdomain</code><br/>
<em>
string
</em>
</td>
<td>
<p>Subdomain the Zendesk subdomain.</p>
</td>
</tr>
<tr>
<td>
<code>email</code><br/>
<em>
string
</em>
</td>
<td>
<p>Email the registered Zendesk email account.</p>
</td>
</tr>
<tr>
<td>
<code>subject</code><br/>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
<p>Subject a static subject assignemnt for every ticket.</p>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<code>status</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.ZendeskTargetStatus">
ZendeskTargetStatus
</a>
</em>
</td>
<td>
<p>Status communicates the observed state of the ZendeskTarget (from the controller).</p>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.AWSComprehendTargetSpec">AWSComprehendTargetSpec
</h3>
<p>
(<em>Appears on:</em><a href="#targets.triggermesh.io/v1alpha1.AWSComprehendTarget">AWSComprehendTarget</a>)
</p>
<div>
<p>AWSComprehendTargetSpec holds the desired state of the event target.</p>
</div>
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
<code>awsApiKey</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>AWS account Key.</p>
</td>
</tr>
<tr>
<td>
<code>awsApiSecret</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>AWS account secret key.</p>
</td>
</tr>
<tr>
<td>
<code>region</code><br/>
<em>
string
</em>
</td>
<td>
<p>Region to use for calling into Comprehend API.</p>
</td>
</tr>
<tr>
<td>
<code>eventOptions</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.EventOptions">
EventOptions
</a>
</em>
</td>
<td>
<p>EventOptions for targets.</p>
</td>
</tr>
<tr>
<td>
<code>language</code><br/>
<em>
string
</em>
</td>
<td>
<p>Language code to use to interact with Comprehend. The supported list can be found at: <a href="https://docs.aws.amazon.com/comprehend/latest/dg/supported-languages.html">https://docs.aws.amazon.com/comprehend/latest/dg/supported-languages.html</a></p>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.AWSComprehendTargetStatus">AWSComprehendTargetStatus
</h3>
<p>
(<em>Appears on:</em><a href="#targets.triggermesh.io/v1alpha1.AWSComprehendTarget">AWSComprehendTarget</a>)
</p>
<div>
<p>AWSComprehendTargetStatus communicates the observed state of the event target.</p>
</div>
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
<code>AWSTargetStatus</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.AWSTargetStatus">
AWSTargetStatus
</a>
</em>
</td>
<td>
<p>
(Members of <code>AWSTargetStatus</code> are embedded into this type.)
</p>
</td>
</tr>
<tr>
<td>
<code>CloudEventStatus</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.CloudEventStatus">
CloudEventStatus
</a>
</em>
</td>
<td>
<p>
(Members of <code>CloudEventStatus</code> are embedded into this type.)
</p>
<p>Accepted/emitted CloudEvent attributes</p>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.AWSDynamoDBTargetSpec">AWSDynamoDBTargetSpec
</h3>
<p>
(<em>Appears on:</em><a href="#targets.triggermesh.io/v1alpha1.AWSDynamoDBTarget">AWSDynamoDBTarget</a>)
</p>
<div>
<p>AWSDynamoDBTargetSpec holds the desired state of the event target.</p>
</div>
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
<code>awsApiKey</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>AWS account Key</p>
</td>
</tr>
<tr>
<td>
<code>awsApiSecret</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>AWS account secret key</p>
</td>
</tr>
<tr>
<td>
<code>arn</code><br/>
<em>
string
</em>
</td>
<td>
<p>Table ARN
<a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazondynamodb.html#amazondynamodb-resources-for-iam-policies">https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazondynamodb.html#amazondynamodb-resources-for-iam-policies</a></p>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.AWSDynamoDBTargetStatus">AWSDynamoDBTargetStatus
</h3>
<p>
(<em>Appears on:</em><a href="#targets.triggermesh.io/v1alpha1.AWSDynamoDBTarget">AWSDynamoDBTarget</a>)
</p>
<div>
<p>AWSDynamoDBTargetStatus communicates the observed state of the event target.</p>
</div>
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
<code>AWSTargetStatus</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.AWSTargetStatus">
AWSTargetStatus
</a>
</em>
</td>
<td>
<p>
(Members of <code>AWSTargetStatus</code> are embedded into this type.)
</p>
</td>
</tr>
<tr>
<td>
<code>CloudEventStatus</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.CloudEventStatus">
CloudEventStatus
</a>
</em>
</td>
<td>
<p>
(Members of <code>CloudEventStatus</code> are embedded into this type.)
</p>
<p>Accepted/emitted CloudEvent attributes</p>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.AWSKinesisTargetSpec">AWSKinesisTargetSpec
</h3>
<p>
(<em>Appears on:</em><a href="#targets.triggermesh.io/v1alpha1.AWSKinesisTarget">AWSKinesisTarget</a>)
</p>
<div>
<p>AWSKinesisTargetSpec holds the desired state of the event target.</p>
</div>
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
<code>awsApiKey</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>AWS account Key</p>
</td>
</tr>
<tr>
<td>
<code>awsApiSecret</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>AWS account secret key</p>
</td>
</tr>
<tr>
<td>
<code>arn</code><br/>
<em>
string
</em>
</td>
<td>
<p>Amazon Resource Name of the Kinesis stream.
<a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonkinesis.html#amazonkinesis-resources-for-iam-policies">https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonkinesis.html#amazonkinesis-resources-for-iam-policies</a></p>
</td>
</tr>
<tr>
<td>
<code>partition</code><br/>
<em>
string
</em>
</td>
<td>
<p>Kinesis Partition to publish the events to</p>
</td>
</tr>
<tr>
<td>
<code>discardCloudEventContext</code><br/>
<em>
bool
</em>
</td>
<td>
<p>Whether to omit CloudEvent context attributes in created Kinesis records.
When this property is false (default), the entire CloudEvent payload is included.
When this property is true, only the CloudEvent data is included.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.AWSLambdaTargetSpec">AWSLambdaTargetSpec
</h3>
<p>
(<em>Appears on:</em><a href="#targets.triggermesh.io/v1alpha1.AWSLambdaTarget">AWSLambdaTarget</a>)
</p>
<div>
<p>AWSLambdaTargetSpec holds the desired state of the event target.</p>
</div>
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
<code>awsApiKey</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>AWS account Key</p>
</td>
</tr>
<tr>
<td>
<code>awsApiSecret</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>AWS account secret key</p>
</td>
</tr>
<tr>
<td>
<code>arn</code><br/>
<em>
string
</em>
</td>
<td>
<p>Amazon Resource Name of the Lambda function.
<a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awslambda.html#awslambda-resources-for-iam-policies">https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awslambda.html#awslambda-resources-for-iam-policies</a></p>
</td>
</tr>
<tr>
<td>
<code>discardCloudEventContext</code><br/>
<em>
bool
</em>
</td>
<td>
<p>Whether to omit CloudEvent context attributes in Lambda function calls.
When this property is false (default), the entire CloudEvent payload is included.
When this property is true, only the CloudEvent data is included.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.AWSS3TargetSpec">AWSS3TargetSpec
</h3>
<p>
(<em>Appears on:</em><a href="#targets.triggermesh.io/v1alpha1.AWSS3Target">AWSS3Target</a>)
</p>
<div>
<p>AWSS3TargetSpec holds the desired state of the even target.</p>
</div>
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
<code>awsApiKey</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>AWS account Key</p>
</td>
</tr>
<tr>
<td>
<code>awsApiSecret</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>AWS account secret key</p>
</td>
</tr>
<tr>
<td>
<code>arn</code><br/>
<em>
string
</em>
</td>
<td>
<p>Amazon Resource Name of the S3 bucket.
<a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazons3.html#amazons3-resources-for-iam-policies">https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazons3.html#amazons3-resources-for-iam-policies</a></p>
</td>
</tr>
<tr>
<td>
<code>discardCloudEventContext</code><br/>
<em>
bool
</em>
</td>
<td>
<p>Whether to omit CloudEvent context attributes in created S3 objects.
When this property is false (default), the entire CloudEvent payload is included.
When this property is true, only the CloudEvent data is included.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.AWSS3TargetStatus">AWSS3TargetStatus
</h3>
<p>
(<em>Appears on:</em><a href="#targets.triggermesh.io/v1alpha1.AWSS3Target">AWSS3Target</a>)
</p>
<div>
<p>AWSS3TargetStatus communicates the observed state of the event target.</p>
</div>
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
<code>AWSTargetStatus</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.AWSTargetStatus">
AWSTargetStatus
</a>
</em>
</td>
<td>
<p>
(Members of <code>AWSTargetStatus</code> are embedded into this type.)
</p>
</td>
</tr>
<tr>
<td>
<code>CloudEventStatus</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.CloudEventStatus">
CloudEventStatus
</a>
</em>
</td>
<td>
<p>
(Members of <code>CloudEventStatus</code> are embedded into this type.)
</p>
<p>Accepted/emitted CloudEvent attributes</p>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.AWSSNSTargetSpec">AWSSNSTargetSpec
</h3>
<p>
(<em>Appears on:</em><a href="#targets.triggermesh.io/v1alpha1.AWSSNSTarget">AWSSNSTarget</a>)
</p>
<div>
<p>AWSSNSTargetSpec holds the desired state of the event target.</p>
</div>
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
<code>awsApiKey</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>AWS account Key</p>
</td>
</tr>
<tr>
<td>
<code>awsApiSecret</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>AWS account secret key</p>
</td>
</tr>
<tr>
<td>
<code>arn</code><br/>
<em>
string
</em>
</td>
<td>
<p>Amazon Resource Name of the SNS topic.
<a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonsns.html#amazonsns-resources-for-iam-policies">https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonsns.html#amazonsns-resources-for-iam-policies</a></p>
</td>
</tr>
<tr>
<td>
<code>discardCloudEventContext</code><br/>
<em>
bool
</em>
</td>
<td>
<p>Whether to omit CloudEvent context attributes in created SNS notifications.
When this property is false (default), the entire CloudEvent payload is included.
When this property is true, only the CloudEvent data is included.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.AWSSQSTargetSpec">AWSSQSTargetSpec
</h3>
<p>
(<em>Appears on:</em><a href="#targets.triggermesh.io/v1alpha1.AWSSQSTarget">AWSSQSTarget</a>)
</p>
<div>
<p>AWSSQSTargetSpec holds the desired state of the event target.</p>
</div>
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
<code>awsApiKey</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>AWS account Key</p>
</td>
</tr>
<tr>
<td>
<code>awsApiSecret</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>AWS account secret key</p>
</td>
</tr>
<tr>
<td>
<code>arn</code><br/>
<em>
string
</em>
</td>
<td>
<p>Amazon Resource Name of the SQS queue.
<a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonsqs.html#amazonsqs-resources-for-iam-policies">https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonsqs.html#amazonsqs-resources-for-iam-policies</a></p>
</td>
</tr>
<tr>
<td>
<code>discardCloudEventContext</code><br/>
<em>
bool
</em>
</td>
<td>
<p>Whether to omit CloudEvent context attributes in created SQS messages.
When this property is false (default), the entire CloudEvent payload is included.
When this property is true, only the CloudEvent data is included.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.AWSTargetStatus">AWSTargetStatus
</h3>
<p>
(<em>Appears on:</em><a href="#targets.triggermesh.io/v1alpha1.AWSKinesisTarget">AWSKinesisTarget</a>, <a href="#targets.triggermesh.io/v1alpha1.AWSLambdaTarget">AWSLambdaTarget</a>, <a href="#targets.triggermesh.io/v1alpha1.AWSSNSTarget">AWSSNSTarget</a>, <a href="#targets.triggermesh.io/v1alpha1.AWSSQSTarget">AWSSQSTarget</a>, <a href="#targets.triggermesh.io/v1alpha1.AWSComprehendTargetStatus">AWSComprehendTargetStatus</a>, <a href="#targets.triggermesh.io/v1alpha1.AWSDynamoDBTargetStatus">AWSDynamoDBTargetStatus</a>, <a href="#targets.triggermesh.io/v1alpha1.AWSS3TargetStatus">AWSS3TargetStatus</a>)
</p>
<div>
<p>AWSTargetStatus communicates the observed state of the various  AWS Targets (from the controller).</p>
</div>
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
<code>Status</code><br/>
<em>
<a href="https://pkg.go.dev/knative.dev/pkg/apis/duck/v1#Status">
knative.dev/pkg/apis/duck/v1.Status
</a>
</em>
</td>
<td>
<p>
(Members of <code>Status</code> are embedded into this type.)
</p>
<p>inherits duck/v1beta1 Status, which currently provides:
* ObservedGeneration - the &lsquo;Generation&rsquo; of the Service that was last
processed by the controller.
* Conditions - the latest available observations of a resource&rsquo;s current
state.</p>
</td>
</tr>
<tr>
<td>
<code>AddressStatus</code><br/>
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
<p>AddressStatus fulfills the Addressable contract.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.AlibabaOSSTargetSpec">AlibabaOSSTargetSpec
</h3>
<p>
(<em>Appears on:</em><a href="#targets.triggermesh.io/v1alpha1.AlibabaOSSTarget">AlibabaOSSTarget</a>)
</p>
<div>
<p>AlibabaOSSTargetSpec holds the desired state of the AlibabaOSSTarget.</p>
</div>
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
<code>accessKeyID</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>Alibaba SDK access key id as registered. For more information on how to
create an access key pair, please refer to
<a href="https://www.alibabacloud.com/help/doc-detail/53045.htm?spm=a2c63.p38356.879954.9.23bc7d91ARN6Hy#task968">https://www.alibabacloud.com/help/doc-detail/53045.htm?spm=a2c63.p38356.879954.9.23bc7d91ARN6Hy#task968</a>.</p>
</td>
</tr>
<tr>
<td>
<code>accessKeySecret</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>Alibaba SDK access key secret as registered.</p>
</td>
</tr>
<tr>
<td>
<code>endpoint</code><br/>
<em>
string
</em>
</td>
<td>
<p>The domain name used to access the OSS. For more information, please refer
to the region and endpoint guide at
<a href="https://www.alibabacloud.com/help/doc-detail/31837.htm?spm=a2c63.p38356.879954.8.23bc7d91ARN6Hy#concept-zt4-cvy-5db">https://www.alibabacloud.com/help/doc-detail/31837.htm?spm=a2c63.p38356.879954.8.23bc7d91ARN6Hy#concept-zt4-cvy-5db</a></p>
</td>
</tr>
<tr>
<td>
<code>bucket</code><br/>
<em>
string
</em>
</td>
<td>
<p>The unique container to store objects in OSS.</p>
</td>
</tr>
<tr>
<td>
<code>eventOptions</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.EventOptions">
EventOptions
</a>
</em>
</td>
<td>
<p>EventOptions for targets</p>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.AlibabaOSSTargetStatus">AlibabaOSSTargetStatus
</h3>
<p>
(<em>Appears on:</em><a href="#targets.triggermesh.io/v1alpha1.AlibabaOSSTarget">AlibabaOSSTarget</a>)
</p>
<div>
<p>AlibabaOSSTargetStatus communicates the observed state of the AlibabaOSSTarget (from the controller).</p>
</div>
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
<code>Status</code><br/>
<em>
<a href="https://pkg.go.dev/knative.dev/pkg/apis/duck/v1#Status">
knative.dev/pkg/apis/duck/v1.Status
</a>
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
<code>AddressStatus</code><br/>
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
<tr>
<td>
<code>CloudEventStatus</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.CloudEventStatus">
CloudEventStatus
</a>
</em>
</td>
<td>
<p>
(Members of <code>CloudEventStatus</code> are embedded into this type.)
</p>
<p>Accepted/emitted CloudEvent attributes</p>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.CloudEventStatus">CloudEventStatus
</h3>
<p>
(<em>Appears on:</em><a href="#targets.triggermesh.io/v1alpha1.AWSComprehendTargetStatus">AWSComprehendTargetStatus</a>, <a href="#targets.triggermesh.io/v1alpha1.AWSDynamoDBTargetStatus">AWSDynamoDBTargetStatus</a>, <a href="#targets.triggermesh.io/v1alpha1.AWSS3TargetStatus">AWSS3TargetStatus</a>, <a href="#targets.triggermesh.io/v1alpha1.AlibabaOSSTargetStatus">AlibabaOSSTargetStatus</a>, <a href="#targets.triggermesh.io/v1alpha1.DatadogTargetStatus">DatadogTargetStatus</a>, <a href="#targets.triggermesh.io/v1alpha1.GoogleCloudFirestoreTargetStatus">GoogleCloudFirestoreTargetStatus</a>, <a href="#targets.triggermesh.io/v1alpha1.GoogleCloudStorageTargetStatus">GoogleCloudStorageTargetStatus</a>, <a href="#targets.triggermesh.io/v1alpha1.GoogleCloudWorkflowsTargetStatus">GoogleCloudWorkflowsTargetStatus</a>, <a href="#targets.triggermesh.io/v1alpha1.GoogleSheetTargetStatus">GoogleSheetTargetStatus</a>, <a href="#targets.triggermesh.io/v1alpha1.HasuraTargetStatus">HasuraTargetStatus</a>, <a href="#targets.triggermesh.io/v1alpha1.LogzTargetStatus">LogzTargetStatus</a>, <a href="#targets.triggermesh.io/v1alpha1.SalesforceTargetStatus">SalesforceTargetStatus</a>, <a href="#targets.triggermesh.io/v1alpha1.SendGridTargetStatus">SendGridTargetStatus</a>, <a href="#targets.triggermesh.io/v1alpha1.SlackTargetStatus">SlackTargetStatus</a>, <a href="#targets.triggermesh.io/v1alpha1.TektonTargetStatus">TektonTargetStatus</a>, <a href="#targets.triggermesh.io/v1alpha1.TwilioTargetStatus">TwilioTargetStatus</a>, <a href="#targets.triggermesh.io/v1alpha1.UiPathTargetStatus">UiPathTargetStatus</a>, <a href="#targets.triggermesh.io/v1alpha1.ZendeskTargetStatus">ZendeskTargetStatus</a>)
</p>
<div>
<p>CloudEventStatus contains attributes that target types can embed to declare
the event types they accept and emit.</p>
</div>
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
<code>acceptedEventTypes</code><br/>
<em>
[]string
</em>
</td>
<td>
<em>(Optional)</em>
<p>AcceptedEventTypes are the CloudEvent types that a target can process.</p>
</td>
</tr>
<tr>
<td>
<code>ceAttributes</code><br/>
<em>
<a href="https://pkg.go.dev/knative.dev/pkg/apis/duck/v1#CloudEventAttributes">
[]knative.dev/pkg/apis/duck/v1.CloudEventAttributes
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>ResponseAttributes are the CloudEvent attributes contained in the responses returned by a target.
NOTE: the json tag <em>must</em> be exactly <code>ceAttributes</code> to satisfy Knative&rsquo;s Source duck type.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.ConfluentTargetSpec">ConfluentTargetSpec
</h3>
<p>
(<em>Appears on:</em><a href="#targets.triggermesh.io/v1alpha1.ConfluentTarget">ConfluentTarget</a>)
</p>
<div>
<p>ConfluentTargetSpec holds the desired state of the ConfluentTarget.</p>
</div>
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
<code>username</code><br/>
<em>
string
</em>
</td>
<td>
<p>SASLUsername Confluent account User</p>
</td>
</tr>
<tr>
<td>
<code>password</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>SASLPassword Confluent account Password</p>
</td>
</tr>
<tr>
<td>
<code>topic</code><br/>
<em>
string
</em>
</td>
<td>
<p>Topic where messages are produced.</p>
</td>
</tr>
<tr>
<td>
<code>topicReplicationFactor</code><br/>
<em>
int
</em>
</td>
<td>
<em>(Optional)</em>
<p>TopicReplicationFactor is the number of replicas for the topic.</p>
</td>
</tr>
<tr>
<td>
<code>topicPartitions</code><br/>
<em>
int
</em>
</td>
<td>
<em>(Optional)</em>
<p>TopicPartitions is the number of partitions for the topic.</p>
</td>
</tr>
<tr>
<td>
<code>bootstrapServers</code><br/>
<em>
[]string
</em>
</td>
<td>
<p>BootstrapServers holds the name of the Kafka Bootstrap server.</p>
</td>
</tr>
<tr>
<td>
<code>securityProtocol</code><br/>
<em>
string
</em>
</td>
<td>
<p>SecurityProtocol allows the user to set the security protocol</p>
</td>
</tr>
<tr>
<td>
<code>saslMechanism</code><br/>
<em>
string
</em>
</td>
<td>
<p>SASLMechanisms all the assignment of specific SASL mechanisms.</p>
</td>
</tr>
<tr>
<td>
<code>discardCloudEventContext</code><br/>
<em>
bool
</em>
</td>
<td>
<p>Whether to omit CloudEvent context attributes in created messages.
When this property is false (default), the entire CloudEvent payload is included.
When this property is true, only the CloudEvent data is included.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.ConfluentTargetStatus">ConfluentTargetStatus
</h3>
<p>
(<em>Appears on:</em><a href="#targets.triggermesh.io/v1alpha1.ConfluentTarget">ConfluentTarget</a>)
</p>
<div>
<p>ConfluentTargetStatus communicates the observed state of the ConfluentTarget (from the controller).</p>
</div>
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
<code>Status</code><br/>
<em>
<a href="https://pkg.go.dev/knative.dev/pkg/apis/duck/v1#Status">
knative.dev/pkg/apis/duck/v1.Status
</a>
</em>
</td>
<td>
<p>
(Members of <code>Status</code> are embedded into this type.)
</p>
<p>inherits duck/v1beta1 Status, which currently provides:
* ObservedGeneration - the &lsquo;Generation&rsquo; of the Service that was last
processed by the controller.
* Conditions - the latest available observations of a resource&rsquo;s current
state.</p>
</td>
</tr>
<tr>
<td>
<code>AddressStatus</code><br/>
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
<p>AddressStatus fulfills the Addressable contract.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.Connection">Connection
</h3>
<p>
(<em>Appears on:</em><a href="#targets.triggermesh.io/v1alpha1.ElasticsearchTargetSpec">ElasticsearchTargetSpec</a>)
</p>
<div>
<p>Connection contains connection and configuration parameters</p>
</div>
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
<code>addresses</code><br/>
<em>
[]string
</em>
</td>
<td>
<p>Array of hostnames or IP addresses to connect the target to.</p>
</td>
</tr>
<tr>
<td>
<code>caCert</code><br/>
<em>
string
</em>
</td>
<td>
<p>CA Certificate used to verify connection with the Elasticsearch instance.</p>
</td>
</tr>
<tr>
<td>
<code>skipVerify</code><br/>
<em>
bool
</em>
</td>
<td>
<p>Skip verification of the SSL certificate during the connection.</p>
</td>
</tr>
<tr>
<td>
<code>username</code><br/>
<em>
string
</em>
</td>
<td>
<p>Elasticsearch account username.</p>
</td>
</tr>
<tr>
<td>
<code>password</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>Elasticsearch account password.</p>
</td>
</tr>
<tr>
<td>
<code>apiKey</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>When informed supersedes username and password.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.DatadogTargetSpec">DatadogTargetSpec
</h3>
<p>
(<em>Appears on:</em><a href="#targets.triggermesh.io/v1alpha1.DatadogTarget">DatadogTarget</a>)
</p>
<div>
<p>DatadogTargetSpec holds the desired state of the DatadogTarget.</p>
</div>
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
<code>apiKey</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>DatadogApiKey represents how Datadog credentials should be provided in the secret</p>
</td>
</tr>
<tr>
<td>
<code>metricPrefix</code><br/>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
<p>MetricPrefix is prepended to the name of the associated metrics.</p>
</td>
</tr>
<tr>
<td>
<code>eventOptions</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.EventOptions">
EventOptions
</a>
</em>
</td>
<td>
<p>EventOptions for targets</p>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.DatadogTargetStatus">DatadogTargetStatus
</h3>
<p>
(<em>Appears on:</em><a href="#targets.triggermesh.io/v1alpha1.DatadogTarget">DatadogTarget</a>)
</p>
<div>
<p>DatadogTargetStatus communicates the observed state of the DatadogTarget (from the controller).</p>
</div>
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
<code>Status</code><br/>
<em>
<a href="https://pkg.go.dev/knative.dev/pkg/apis/duck/v1#Status">
knative.dev/pkg/apis/duck/v1.Status
</a>
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
<code>AddressStatus</code><br/>
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
<tr>
<td>
<code>CloudEventStatus</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.CloudEventStatus">
CloudEventStatus
</a>
</em>
</td>
<td>
<p>
(Members of <code>CloudEventStatus</code> are embedded into this type.)
</p>
<p>Accepted/emitted CloudEvent attributes</p>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.ElasticsearchTargetSpec">ElasticsearchTargetSpec
</h3>
<p>
(<em>Appears on:</em><a href="#targets.triggermesh.io/v1alpha1.ElasticsearchTarget">ElasticsearchTarget</a>)
</p>
<div>
<p>ElasticsearchTargetSpec holds the desired state of the ElasticsearchTarget.</p>
</div>
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
<code>connection</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.Connection">
Connection
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>Connection information to elasticsearch.</p>
</td>
</tr>
<tr>
<td>
<code>indexName</code><br/>
<em>
string
</em>
</td>
<td>
<p>IndexName to write to.</p>
</td>
</tr>
<tr>
<td>
<code>discardCloudEventContext</code><br/>
<em>
bool
</em>
</td>
<td>
<p>Whether to omit CloudEvent context attributes in created documents.
When this property is false (default), the entire CloudEvent payload is included.
When this property is true, only the CloudEvent data is included.</p>
</td>
</tr>
<tr>
<td>
<code>eventOptions</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.EventOptions">
EventOptions
</a>
</em>
</td>
<td>
<p>EventOptions for targets.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.ElasticsearchTargetStatus">ElasticsearchTargetStatus
</h3>
<p>
(<em>Appears on:</em><a href="#targets.triggermesh.io/v1alpha1.ElasticsearchTarget">ElasticsearchTarget</a>)
</p>
<div>
<p>ElasticsearchTargetStatus communicates the observed state of the ElasticsearchTarget (from the controller).</p>
</div>
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
<code>Status</code><br/>
<em>
<a href="https://pkg.go.dev/knative.dev/pkg/apis/duck/v1#Status">
knative.dev/pkg/apis/duck/v1.Status
</a>
</em>
</td>
<td>
<p>
(Members of <code>Status</code> are embedded into this type.)
</p>
<p>inherits duck/v1beta1 Status, which currently provides:
* ObservedGeneration - the &lsquo;Generation&rsquo; of the Service that was last
processed by the controller.
* Conditions - the latest available observations of a resource&rsquo;s current
state.</p>
</td>
</tr>
<tr>
<td>
<code>AddressStatus</code><br/>
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
<p>AddressStatus fulfills the Addressable contract.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.EnvKeyValue">EnvKeyValue
(<code>map[string]string</code> alias)</h3>
<div>
<p>EnvKeyValue is a list of keys/values that can be serialized to a format
compatible with kelseyhightower/envconfig.</p>
</div>
<h3 id="targets.triggermesh.io/v1alpha1.EventOptions">EventOptions
</h3>
<p>
(<em>Appears on:</em><a href="#targets.triggermesh.io/v1alpha1.AWSComprehendTargetSpec">AWSComprehendTargetSpec</a>, <a href="#targets.triggermesh.io/v1alpha1.AlibabaOSSTargetSpec">AlibabaOSSTargetSpec</a>, <a href="#targets.triggermesh.io/v1alpha1.DatadogTargetSpec">DatadogTargetSpec</a>, <a href="#targets.triggermesh.io/v1alpha1.ElasticsearchTargetSpec">ElasticsearchTargetSpec</a>, <a href="#targets.triggermesh.io/v1alpha1.GoogleCloudFirestoreTargetSpec">GoogleCloudFirestoreTargetSpec</a>, <a href="#targets.triggermesh.io/v1alpha1.GoogleCloudStorageTargetSpec">GoogleCloudStorageTargetSpec</a>, <a href="#targets.triggermesh.io/v1alpha1.GoogleCloudWorkflowsTargetSpec">GoogleCloudWorkflowsTargetSpec</a>, <a href="#targets.triggermesh.io/v1alpha1.LogzTargetSpec">LogzTargetSpec</a>, <a href="#targets.triggermesh.io/v1alpha1.SalesforceTargetSpec">SalesforceTargetSpec</a>, <a href="#targets.triggermesh.io/v1alpha1.SendGridTargetSpec">SendGridTargetSpec</a>, <a href="#targets.triggermesh.io/v1alpha1.TwilioTargetSpec">TwilioTargetSpec</a>)
</p>
<div>
<p>EventOptions modifies CloudEvents management at Targets.</p>
</div>
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
<code>payloadPolicy</code><br/>
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
<h3 id="targets.triggermesh.io/v1alpha1.GoogleCloudFirestoreTargetSpec">GoogleCloudFirestoreTargetSpec
</h3>
<p>
(<em>Appears on:</em><a href="#targets.triggermesh.io/v1alpha1.GoogleCloudFirestoreTarget">GoogleCloudFirestoreTarget</a>)
</p>
<div>
<p>GoogleCloudFirestoreTargetSpec holds the desired state of the GoogleCloudFirestoreTarget.</p>
</div>
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
<code>credentialsJson</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>Credentials represents how Google Firestore credentials should be provided in the secret</p>
</td>
</tr>
<tr>
<td>
<code>defaultCollection</code><br/>
<em>
string
</em>
</td>
<td>
<p>DefaultCollection sets a default Firestore collection to select from</p>
</td>
</tr>
<tr>
<td>
<code>projectID</code><br/>
<em>
string
</em>
</td>
<td>
<p>ProjectID specifies the Google project ID</p>
</td>
</tr>
<tr>
<td>
<code>discardCloudEventContext</code><br/>
<em>
bool
</em>
</td>
<td>
<p>Whether to omit CloudEvent context attributes in created SNS notifications.
When this property is false (default), the entire CloudEvent payload is included.
When this property is true, only the CloudEvent data is included.</p>
</td>
</tr>
<tr>
<td>
<code>eventOptions</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.EventOptions">
EventOptions
</a>
</em>
</td>
<td>
<p>EventOptions for targets</p>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.GoogleCloudFirestoreTargetStatus">GoogleCloudFirestoreTargetStatus
</h3>
<p>
(<em>Appears on:</em><a href="#targets.triggermesh.io/v1alpha1.GoogleCloudFirestoreTarget">GoogleCloudFirestoreTarget</a>)
</p>
<div>
<p>GoogleCloudFirestoreTargetStatus communicates the observed state of the GoogleCloudFirestoreTarget (from the controller).</p>
</div>
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
<code>Status</code><br/>
<em>
<a href="https://pkg.go.dev/knative.dev/pkg/apis/duck/v1#Status">
knative.dev/pkg/apis/duck/v1.Status
</a>
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
<code>AddressStatus</code><br/>
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
<tr>
<td>
<code>CloudEventStatus</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.CloudEventStatus">
CloudEventStatus
</a>
</em>
</td>
<td>
<p>
(Members of <code>CloudEventStatus</code> are embedded into this type.)
</p>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.GoogleCloudStorageTargetSpec">GoogleCloudStorageTargetSpec
</h3>
<p>
(<em>Appears on:</em><a href="#targets.triggermesh.io/v1alpha1.GoogleCloudStorageTarget">GoogleCloudStorageTarget</a>)
</p>
<div>
<p>GoogleCloudStorageTargetSpec holds the desired state of the GoogleCloudStorageTarget.</p>
</div>
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
<code>credentialsJson</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>Credentials represents how Google Storage credentials should be provided in the secret</p>
</td>
</tr>
<tr>
<td>
<code>bucketName</code><br/>
<em>
string
</em>
</td>
<td>
<p>BucketName specifies the Google Storage Bucket</p>
</td>
</tr>
<tr>
<td>
<code>eventOptions</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.EventOptions">
EventOptions
</a>
</em>
</td>
<td>
<p>EventOptions for targets</p>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.GoogleCloudStorageTargetStatus">GoogleCloudStorageTargetStatus
</h3>
<p>
(<em>Appears on:</em><a href="#targets.triggermesh.io/v1alpha1.GoogleCloudStorageTarget">GoogleCloudStorageTarget</a>)
</p>
<div>
<p>GoogleCloudStorageTargetStatus communicates the observed state of the GoogleCloudStorageTarget (from the controller).</p>
</div>
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
<code>Status</code><br/>
<em>
<a href="https://pkg.go.dev/knative.dev/pkg/apis/duck/v1#Status">
knative.dev/pkg/apis/duck/v1.Status
</a>
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
<code>AddressStatus</code><br/>
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
<tr>
<td>
<code>CloudEventStatus</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.CloudEventStatus">
CloudEventStatus
</a>
</em>
</td>
<td>
<p>
(Members of <code>CloudEventStatus</code> are embedded into this type.)
</p>
<p>Accepted/emitted CloudEvent attributes</p>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.GoogleCloudWorkflowsTargetSpec">GoogleCloudWorkflowsTargetSpec
</h3>
<p>
(<em>Appears on:</em><a href="#targets.triggermesh.io/v1alpha1.GoogleCloudWorkflowsTarget">GoogleCloudWorkflowsTarget</a>)
</p>
<div>
<p>GoogleCloudWorkflowsTargetSpec holds the desired state of the GoogleCloudWorkflowsTarget.</p>
</div>
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
<code>credentialsJson</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>GoogleCloudWorkflowsApiKey represents how GoogleCloudWorkflows credentials should be provided in the secret</p>
</td>
</tr>
<tr>
<td>
<code>eventOptions</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.EventOptions">
EventOptions
</a>
</em>
</td>
<td>
<p>EventOptions for targets</p>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.GoogleCloudWorkflowsTargetStatus">GoogleCloudWorkflowsTargetStatus
</h3>
<p>
(<em>Appears on:</em><a href="#targets.triggermesh.io/v1alpha1.GoogleCloudWorkflowsTarget">GoogleCloudWorkflowsTarget</a>)
</p>
<div>
<p>GoogleCloudWorkflowsTargetStatus communicates the observed state of the GoogleCloudWorkflowsTarget (from the controller).</p>
</div>
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
<code>Status</code><br/>
<em>
<a href="https://pkg.go.dev/knative.dev/pkg/apis/duck/v1#Status">
knative.dev/pkg/apis/duck/v1.Status
</a>
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
<code>AddressStatus</code><br/>
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
<tr>
<td>
<code>CloudEventStatus</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.CloudEventStatus">
CloudEventStatus
</a>
</em>
</td>
<td>
<p>
(Members of <code>CloudEventStatus</code> are embedded into this type.)
</p>
<p>Accepted/emitted CloudEvent attributes</p>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.GoogleSheetTargetSpec">GoogleSheetTargetSpec
</h3>
<p>
(<em>Appears on:</em><a href="#targets.triggermesh.io/v1alpha1.GoogleSheetTarget">GoogleSheetTarget</a>)
</p>
<div>
<p>GoogleSheetTargetSpec holds the desired state of the GoogleSheetTarget.</p>
</div>
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
<code>googleServiceAccount</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>GoogleSheet credential JSON for auth</p>
</td>
</tr>
<tr>
<td>
<code>id</code><br/>
<em>
string
</em>
</td>
<td>
<p>ID of Google a spreadsheet</p>
</td>
</tr>
<tr>
<td>
<code>defaultPrefix</code><br/>
<em>
string
</em>
</td>
<td>
<p>DefaultPrefix is a pre-defined prefix for the individual sheets.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.GoogleSheetTargetStatus">GoogleSheetTargetStatus
</h3>
<p>
(<em>Appears on:</em><a href="#targets.triggermesh.io/v1alpha1.GoogleSheetTarget">GoogleSheetTarget</a>)
</p>
<div>
<p>GoogleSheetTargetStatus communicates the observed state of the GoogleSheetTarget (from the controller).</p>
</div>
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
<code>Status</code><br/>
<em>
<a href="https://pkg.go.dev/knative.dev/pkg/apis/duck/v1#Status">
knative.dev/pkg/apis/duck/v1.Status
</a>
</em>
</td>
<td>
<p>
(Members of <code>Status</code> are embedded into this type.)
</p>
<p>inherits duck/v1beta1 Status, which currently provides:
* ObservedGeneration - the &lsquo;Generation&rsquo; of the Service that was last
processed by the controller.
* Conditions - the latest available observations of a resource&rsquo;s current
state.</p>
</td>
</tr>
<tr>
<td>
<code>AddressStatus</code><br/>
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
<p>AddressStatus fulfills the Addressable contract.</p>
</td>
</tr>
<tr>
<td>
<code>CloudEventStatus</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.CloudEventStatus">
CloudEventStatus
</a>
</em>
</td>
<td>
<p>
(Members of <code>CloudEventStatus</code> are embedded into this type.)
</p>
<p>Accepted/emitted CloudEvent attributes</p>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.HTTPEventResponse">HTTPEventResponse
</h3>
<p>
(<em>Appears on:</em><a href="#targets.triggermesh.io/v1alpha1.HTTPTargetSpec">HTTPTargetSpec</a>)
</p>
<div>
<p>HTTPEventResponse for reply events context.</p>
</div>
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
<code>eventType</code><br/>
<em>
string
</em>
</td>
<td>
<p>EventType for the reply.</p>
</td>
</tr>
<tr>
<td>
<code>eventSource</code><br/>
<em>
string
</em>
</td>
<td>
<p>EventSource for the reply.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.HTTPTargetSpec">HTTPTargetSpec
</h3>
<p>
(<em>Appears on:</em><a href="#targets.triggermesh.io/v1alpha1.HTTPTarget">HTTPTarget</a>)
</p>
<div>
<p>HTTPTargetSpec holds the desired state of the HTTPTarget.</p>
</div>
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
<code>response</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.HTTPEventResponse">
HTTPEventResponse
</a>
</em>
</td>
<td>
<p>Response data to be used at replies.</p>
</td>
</tr>
<tr>
<td>
<code>endpoint</code><br/>
<em>
<a href="https://pkg.go.dev/knative.dev/pkg/apis#URL">
knative.dev/pkg/apis.URL
</a>
</em>
</td>
<td>
<p>Endpoint to connect to.</p>
</td>
</tr>
<tr>
<td>
<code>method</code><br/>
<em>
string
</em>
</td>
<td>
<p>Method to use at requests.</p>
</td>
</tr>
<tr>
<td>
<code>headers</code><br/>
<em>
map[string]string
</em>
</td>
<td>
<em>(Optional)</em>
<p>Headers to be included at HTTP requests</p>
</td>
</tr>
<tr>
<td>
<code>skipVerify</code><br/>
<em>
bool
</em>
</td>
<td>
<em>(Optional)</em>
<p>SkipVerify disables server certificate validation.</p>
</td>
</tr>
<tr>
<td>
<code>caCertificate</code><br/>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
<p>CACertificate uses the CA certificate to verify the remote server certificate.</p>
</td>
</tr>
<tr>
<td>
<code>basicAuthUsername</code><br/>
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
<code>basicAuthPassword</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>BasicAuthPassword used for basic authentication.</p>
</td>
</tr>
<tr>
<td>
<code>oauthClientID</code><br/>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
<p>OAuthClientID used for OAuth2 authentication.</p>
</td>
</tr>
<tr>
<td>
<code>oauthClientSecret</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>OAuthClientSecret used for OAuth2 authentication.</p>
</td>
</tr>
<tr>
<td>
<code>oauthTokenURL</code><br/>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
<p>OAuthTokenURL used for OAuth2 authentication.</p>
</td>
</tr>
<tr>
<td>
<code>oauthScopes</code><br/>
<em>
[]string
</em>
</td>
<td>
<em>(Optional)</em>
<p>OAuthScopes used for OAuth2 authentication.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.HTTPTargetStatus">HTTPTargetStatus
</h3>
<p>
(<em>Appears on:</em><a href="#targets.triggermesh.io/v1alpha1.HTTPTarget">HTTPTarget</a>)
</p>
<div>
<p>HTTPTargetStatus communicates the observed state of the HTTPTarget (from the controller).</p>
</div>
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
<code>Status</code><br/>
<em>
<a href="https://pkg.go.dev/knative.dev/pkg/apis/duck/v1#Status">
knative.dev/pkg/apis/duck/v1.Status
</a>
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
<code>AddressStatus</code><br/>
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
<h3 id="targets.triggermesh.io/v1alpha1.HasuraTargetSpec">HasuraTargetSpec
</h3>
<p>
(<em>Appears on:</em><a href="#targets.triggermesh.io/v1alpha1.HasuraTarget">HasuraTarget</a>)
</p>
<div>
<p>HasuraTargetSpec defines the desired state of the event target.</p>
</div>
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
<code>endpoint</code><br/>
<em>
string
</em>
</td>
<td>
<p>The GraphQL server endpoint.</p>
</td>
</tr>
<tr>
<td>
<code>jwt</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>A user token for interfacing with Hasura.</p>
</td>
</tr>
<tr>
<td>
<code>admin</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>An alternate token for interfacing with Hasura using admin privileges.</p>
</td>
</tr>
<tr>
<td>
<code>defaultRole</code><br/>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
<p>A default role that the queries should use when running the query.</p>
</td>
</tr>
<tr>
<td>
<code>queries</code><br/>
<em>
map[string]string
</em>
</td>
<td>
<em>(Optional)</em>
<p>A predefined list of queries that an event can specify in the io.triggermesh.graphql.query event type.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.HasuraTargetStatus">HasuraTargetStatus
</h3>
<p>
(<em>Appears on:</em><a href="#targets.triggermesh.io/v1alpha1.HasuraTarget">HasuraTarget</a>)
</p>
<div>
<p>HasuraTargetStatus defines the observed state of the event target.</p>
</div>
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
<code>Status</code><br/>
<em>
<a href="https://pkg.go.dev/knative.dev/pkg/apis/duck/v1#Status">
knative.dev/pkg/apis/duck/v1.Status
</a>
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
<code>AddressStatus</code><br/>
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
<tr>
<td>
<code>CloudEventStatus</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.CloudEventStatus">
CloudEventStatus
</a>
</em>
</td>
<td>
<p>
(Members of <code>CloudEventStatus</code> are embedded into this type.)
</p>
<p>Accepted/emitted CloudEvent attributes</p>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.HeaderPolicy">HeaderPolicy
(<code>string</code> alias)</h3>
<p>
(<em>Appears on:</em><a href="#targets.triggermesh.io/v1alpha1.InfraTargetState">InfraTargetState</a>)
</p>
<div>
<p>HeaderPolicy is the action to take on stateful headers</p>
</div>
<table>
<thead>
<tr>
<th>Value</th>
<th>Description</th>
</tr>
</thead>
<tbody><tr><td><p>&#34;ensure&#34;</p></td>
<td><p>HeaderPolicyEnsure headers, will create or copy stateful headers to the new CloudEvent.</p>
</td>
</tr><tr><td><p>&#34;none&#34;</p></td>
<td><p>HeaderPolicyNone wont copy stateful headers to the new CloudEvent.</p>
</td>
</tr><tr><td><p>&#34;propagate&#34;</p></td>
<td><p>HeaderPolicyPropagate will copy stateful headers to the new CloudEvent.</p>
</td>
</tr></tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.InfraTargetScript">InfraTargetScript
</h3>
<p>
(<em>Appears on:</em><a href="#targets.triggermesh.io/v1alpha1.InfraTargetSpec">InfraTargetSpec</a>)
</p>
<div>
<p>InfraTargetScript holds the script options</p>
</div>
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
<code>code</code><br/>
<em>
string
</em>
</td>
<td>
<p>Code to be executed at every request.</p>
</td>
</tr>
<tr>
<td>
<code>timeout</code><br/>
<em>
int
</em>
</td>
<td>
<p>Timeout is the script execution time after which
it will be halted.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.InfraTargetSpec">InfraTargetSpec
</h3>
<p>
(<em>Appears on:</em><a href="#targets.triggermesh.io/v1alpha1.InfraTarget">InfraTarget</a>)
</p>
<div>
<p>InfraTargetSpec holds the desired state of the InfraTarget.</p>
</div>
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
<code>script</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.InfraTargetScript">
InfraTargetScript
</a>
</em>
</td>
<td>
<p>Script to be executed at every request.</p>
</td>
</tr>
<tr>
<td>
<code>state</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.InfraTargetState">
InfraTargetState
</a>
</em>
</td>
<td>
<p>State actions and options.</p>
</td>
</tr>
<tr>
<td>
<code>typeLoopProtection</code><br/>
<em>
bool
</em>
</td>
<td>
<p>TypeLoopProtection protect against infinite loops when the cloudevent type does not change.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.InfraTargetState">InfraTargetState
</h3>
<p>
(<em>Appears on:</em><a href="#targets.triggermesh.io/v1alpha1.InfraTargetSpec">InfraTargetSpec</a>)
</p>
<div>
<p>InfraTargetState holds the state options</p>
</div>
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
<code>headersPolicy</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.HeaderPolicy">
HeaderPolicy
</a>
</em>
</td>
<td>
<p>HeadersPolicy determines actions on stateful headers.</p>
</td>
</tr>
<tr>
<td>
<code>bridge</code><br/>
<em>
string
</em>
</td>
<td>
<p>Bridge is the identifier to be used if the adapter needs to
create cloud events headers as part of its policy.</p>
<p>The Bridge moniker identifies uniquely the workflow that
this component is part of, and should be taken into account
when storing variables in the state store.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.InfraTargetStatus">InfraTargetStatus
</h3>
<p>
(<em>Appears on:</em><a href="#targets.triggermesh.io/v1alpha1.InfraTarget">InfraTarget</a>)
</p>
<div>
<p>InfraTargetStatus communicates the observed state of the InfraTarget (from the controller).</p>
</div>
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
<code>Status</code><br/>
<em>
<a href="https://pkg.go.dev/knative.dev/pkg/apis/duck/v1#Status">
knative.dev/pkg/apis/duck/v1.Status
</a>
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
<code>AddressStatus</code><br/>
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
<h3 id="targets.triggermesh.io/v1alpha1.JiraAuth">JiraAuth
</h3>
<p>
(<em>Appears on:</em><a href="#targets.triggermesh.io/v1alpha1.JiraTargetSpec">JiraTargetSpec</a>)
</p>
<div>
<p>JiraAuth contains Jira credentials.</p>
</div>
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
<code>user</code><br/>
<em>
string
</em>
</td>
<td>
<p>Jira username to connect to the instance as.</p>
</td>
</tr>
<tr>
<td>
<code>token</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>Jira API token bound to the user.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.JiraTargetSpec">JiraTargetSpec
</h3>
<p>
(<em>Appears on:</em><a href="#targets.triggermesh.io/v1alpha1.JiraTarget">JiraTarget</a>)
</p>
<div>
<p>JiraTargetSpec holds the desired state of the JiraTarget.</p>
</div>
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
<code>auth</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.JiraAuth">
JiraAuth
</a>
</em>
</td>
<td>
<p>Authentication to interact with the Salesforce API.</p>
</td>
</tr>
<tr>
<td>
<code>url</code><br/>
<em>
string
</em>
</td>
<td>
<p>URL for Jira service.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.JiraTargetStatus">JiraTargetStatus
</h3>
<p>
(<em>Appears on:</em><a href="#targets.triggermesh.io/v1alpha1.JiraTarget">JiraTarget</a>)
</p>
<div>
<p>JiraTargetStatus communicates the observed state of the JiraTarget (from the controller).</p>
</div>
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
<code>Status</code><br/>
<em>
<a href="https://pkg.go.dev/knative.dev/pkg/apis/duck/v1#Status">
knative.dev/pkg/apis/duck/v1.Status
</a>
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
<code>AddressStatus</code><br/>
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
<h3 id="targets.triggermesh.io/v1alpha1.LogzTargetSpec">LogzTargetSpec
</h3>
<p>
(<em>Appears on:</em><a href="#targets.triggermesh.io/v1alpha1.LogzTarget">LogzTarget</a>)
</p>
<div>
<p>LogzTargetSpec holds the desired state of the LogzTarget.</p>
</div>
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
<code>shippingToken</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>ShippingToken defines the API token.</p>
</td>
</tr>
<tr>
<td>
<code>logsListenerURL</code><br/>
<em>
string
</em>
</td>
<td>
<p>LogsListenerURL Defines the Log listener URL</p>
</td>
</tr>
<tr>
<td>
<code>eventOptions</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.EventOptions">
EventOptions
</a>
</em>
</td>
<td>
<p>EventOptions for targets</p>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.LogzTargetStatus">LogzTargetStatus
</h3>
<p>
(<em>Appears on:</em><a href="#targets.triggermesh.io/v1alpha1.LogzTarget">LogzTarget</a>)
</p>
<div>
<p>LogzTargetStatus communicates the observed state of the LogzTarget (from the controller).</p>
</div>
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
<code>Status</code><br/>
<em>
<a href="https://pkg.go.dev/knative.dev/pkg/apis/duck/v1#Status">
knative.dev/pkg/apis/duck/v1.Status
</a>
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
<code>AddressStatus</code><br/>
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
<tr>
<td>
<code>CloudEventStatus</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.CloudEventStatus">
CloudEventStatus
</a>
</em>
</td>
<td>
<p>
(Members of <code>CloudEventStatus</code> are embedded into this type.)
</p>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.OracleFunctionSpecSpec">OracleFunctionSpecSpec
</h3>
<p>
(<em>Appears on:</em><a href="#targets.triggermesh.io/v1alpha1.OracleTargetSpec">OracleTargetSpec</a>)
</p>
<div>
<p>OracleFunctionSpecSpec holds the Oracle Cloud ID of the function to invoke.</p>
</div>
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
<code>function</code><br/>
<em>
string
</em>
</td>
<td>
<p>
(Members of <code>function</code> are embedded into this type.)
</p>
<p>Oracle Cloud ID of the function to invoke.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.OracleTargetSpec">OracleTargetSpec
</h3>
<p>
(<em>Appears on:</em><a href="#targets.triggermesh.io/v1alpha1.OracleTarget">OracleTarget</a>)
</p>
<div>
<p>OracleTargetSpec holds the desired state of the event target.</p>
</div>
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
<code>oracleApiPrivateKey</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>Oracle User API private key.</p>
</td>
</tr>
<tr>
<td>
<code>oracleApiPrivateKeyPassphrase</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>Oracle User API private key passphrase.</p>
</td>
</tr>
<tr>
<td>
<code>oracleApiPrivateKeyFingerprint</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>Oracle User API cert fingerprint.</p>
</td>
</tr>
<tr>
<td>
<code>oracleTenancy</code><br/>
<em>
string
</em>
</td>
<td>
<p>Oracle Tenancy OCID.</p>
</td>
</tr>
<tr>
<td>
<code>oracleUser</code><br/>
<em>
string
</em>
</td>
<td>
<p>Oracle User OCID associated with the API key.</p>
</td>
</tr>
<tr>
<td>
<code>oracleRegion</code><br/>
<em>
string
</em>
</td>
<td>
<p>Oracle Cloud Region.</p>
</td>
</tr>
<tr>
<td>
<code>function</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.OracleFunctionSpecSpec">
OracleFunctionSpecSpec
</a>
</em>
</td>
<td>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.OracleTargetStatus">OracleTargetStatus
</h3>
<p>
(<em>Appears on:</em><a href="#targets.triggermesh.io/v1alpha1.OracleTarget">OracleTarget</a>)
</p>
<div>
<p>OracleTargetStatus communicates the observed state of the OracleTarget (from the controller).</p>
</div>
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
<code>Status</code><br/>
<em>
<a href="https://pkg.go.dev/knative.dev/pkg/apis/duck/v1#Status">
knative.dev/pkg/apis/duck/v1.Status
</a>
</em>
</td>
<td>
<p>
(Members of <code>Status</code> are embedded into this type.)
</p>
<p>inherits duck/v1beta1 Status, which currently provides:
* ObservedGeneration - the &lsquo;Generation&rsquo; of the Service that was last
processed by the controller.
* Conditions - the latest available observations of a resource&rsquo;s current
state.</p>
</td>
</tr>
<tr>
<td>
<code>AddressStatus</code><br/>
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
<p>AddressStatus fulfills the Addressable contract.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.SalesforceAuth">SalesforceAuth
</h3>
<p>
(<em>Appears on:</em><a href="#targets.triggermesh.io/v1alpha1.SalesforceTargetSpec">SalesforceTargetSpec</a>)
</p>
<div>
<p>SalesforceAuth contains OAuth JWT information to interact with the
Salesforce API. See:
<a href="https://help.salesforce.com/s/articleView?id=sf.remoteaccess_oauth_jwt_flow.htm">https://help.salesforce.com/s/articleView?id=sf.remoteaccess_oauth_jwt_flow.htm</a></p>
</div>
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
<code>clientID</code><br/>
<em>
string
</em>
</td>
<td>
<p>ClientID for the Salesforce connected app.</p>
</td>
</tr>
<tr>
<td>
<code>server</code><br/>
<em>
string
</em>
</td>
<td>
<p>Server points to the authorization URL.</p>
</td>
</tr>
<tr>
<td>
<code>user</code><br/>
<em>
string
</em>
</td>
<td>
<p>User configuring the connected app.</p>
</td>
</tr>
<tr>
<td>
<code>certKey</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>CertKey is the private key used to sign requests from the target.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.SalesforceTargetSpec">SalesforceTargetSpec
</h3>
<p>
(<em>Appears on:</em><a href="#targets.triggermesh.io/v1alpha1.SalesforceTarget">SalesforceTarget</a>)
</p>
<div>
<p>SalesforceTargetSpec holds the desired state of the SalesforceTarget.</p>
</div>
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
<code>auth</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SalesforceAuth">
SalesforceAuth
</a>
</em>
</td>
<td>
<p>Authentication information to interact with the Salesforce API.</p>
</td>
</tr>
<tr>
<td>
<code>apiVersion</code><br/>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
<p>APIVersion at Salesforce. If not set the latest version will be used.</p>
</td>
</tr>
<tr>
<td>
<code>eventOptions</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.EventOptions">
EventOptions
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>EventOptions for targets</p>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.SalesforceTargetStatus">SalesforceTargetStatus
</h3>
<p>
(<em>Appears on:</em><a href="#targets.triggermesh.io/v1alpha1.SalesforceTarget">SalesforceTarget</a>)
</p>
<div>
<p>SalesforceTargetStatus communicates the observed state of the SalesforceTarget (from the controller).</p>
</div>
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
<code>Status</code><br/>
<em>
<a href="https://pkg.go.dev/knative.dev/pkg/apis/duck/v1#Status">
knative.dev/pkg/apis/duck/v1.Status
</a>
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
<code>AddressStatus</code><br/>
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
<tr>
<td>
<code>CloudEventStatus</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.CloudEventStatus">
CloudEventStatus
</a>
</em>
</td>
<td>
<p>
(Members of <code>CloudEventStatus</code> are embedded into this type.)
</p>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.SecretValueFromSource">SecretValueFromSource
</h3>
<p>
(<em>Appears on:</em><a href="#targets.triggermesh.io/v1alpha1.AWSComprehendTargetSpec">AWSComprehendTargetSpec</a>, <a href="#targets.triggermesh.io/v1alpha1.AWSDynamoDBTargetSpec">AWSDynamoDBTargetSpec</a>, <a href="#targets.triggermesh.io/v1alpha1.AWSKinesisTargetSpec">AWSKinesisTargetSpec</a>, <a href="#targets.triggermesh.io/v1alpha1.AWSLambdaTargetSpec">AWSLambdaTargetSpec</a>, <a href="#targets.triggermesh.io/v1alpha1.AWSS3TargetSpec">AWSS3TargetSpec</a>, <a href="#targets.triggermesh.io/v1alpha1.AWSSNSTargetSpec">AWSSNSTargetSpec</a>, <a href="#targets.triggermesh.io/v1alpha1.AWSSQSTargetSpec">AWSSQSTargetSpec</a>, <a href="#targets.triggermesh.io/v1alpha1.AlibabaOSSTargetSpec">AlibabaOSSTargetSpec</a>, <a href="#targets.triggermesh.io/v1alpha1.ConfluentTargetSpec">ConfluentTargetSpec</a>, <a href="#targets.triggermesh.io/v1alpha1.Connection">Connection</a>, <a href="#targets.triggermesh.io/v1alpha1.DatadogTargetSpec">DatadogTargetSpec</a>, <a href="#targets.triggermesh.io/v1alpha1.GoogleCloudFirestoreTargetSpec">GoogleCloudFirestoreTargetSpec</a>, <a href="#targets.triggermesh.io/v1alpha1.GoogleCloudStorageTargetSpec">GoogleCloudStorageTargetSpec</a>, <a href="#targets.triggermesh.io/v1alpha1.GoogleCloudWorkflowsTargetSpec">GoogleCloudWorkflowsTargetSpec</a>, <a href="#targets.triggermesh.io/v1alpha1.GoogleSheetTargetSpec">GoogleSheetTargetSpec</a>, <a href="#targets.triggermesh.io/v1alpha1.HTTPTargetSpec">HTTPTargetSpec</a>, <a href="#targets.triggermesh.io/v1alpha1.HasuraTargetSpec">HasuraTargetSpec</a>, <a href="#targets.triggermesh.io/v1alpha1.JiraAuth">JiraAuth</a>, <a href="#targets.triggermesh.io/v1alpha1.LogzTargetSpec">LogzTargetSpec</a>, <a href="#targets.triggermesh.io/v1alpha1.OracleTargetSpec">OracleTargetSpec</a>, <a href="#targets.triggermesh.io/v1alpha1.SalesforceAuth">SalesforceAuth</a>, <a href="#targets.triggermesh.io/v1alpha1.SendGridTargetSpec">SendGridTargetSpec</a>, <a href="#targets.triggermesh.io/v1alpha1.SlackTargetSpec">SlackTargetSpec</a>, <a href="#targets.triggermesh.io/v1alpha1.TwilioTargetSpec">TwilioTargetSpec</a>, <a href="#targets.triggermesh.io/v1alpha1.UiPathTargetSpec">UiPathTargetSpec</a>, <a href="#targets.triggermesh.io/v1alpha1.ZendeskTargetSpec">ZendeskTargetSpec</a>)
</p>
<div>
<p>SecretValueFromSource represents the source of a secret value</p>
</div>
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
<code>secretKeyRef</code><br/>
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
<h3 id="targets.triggermesh.io/v1alpha1.SendGridTargetSpec">SendGridTargetSpec
</h3>
<p>
(<em>Appears on:</em><a href="#targets.triggermesh.io/v1alpha1.SendGridTarget">SendGridTarget</a>)
</p>
<div>
<p>SendGridTargetSpec holds the desired state of the SendGridTarget.</p>
</div>
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
<code>apiKey</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>APIKey for account</p>
</td>
</tr>
<tr>
<td>
<code>defaultFromEmail</code><br/>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
<p>DefaultFromEmail is a default email account to assign to the outgoing email&rsquo;s.</p>
</td>
</tr>
<tr>
<td>
<code>defaultToEmail</code><br/>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
<p>DefaultToEmail is a default recipient email account to assign to the outgoing email&rsquo;s.</p>
</td>
</tr>
<tr>
<td>
<code>defaultToName</code><br/>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
<p>DefaultToName is a default recipient name to assign to the outgoing email&rsquo;s.</p>
</td>
</tr>
<tr>
<td>
<code>defaultFromName</code><br/>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
<p>DefaultFromName is a default sender name to assign to the outgoing email&rsquo;s.</p>
</td>
</tr>
<tr>
<td>
<code>defaultMessage</code><br/>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
<p>DefaultMessage is a default message to assign to the outgoing email&rsquo;s.</p>
</td>
</tr>
<tr>
<td>
<code>defaultSubject</code><br/>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
<p>DefaultSubject is a default subject to assign to the outgoing email&rsquo;s.</p>
</td>
</tr>
<tr>
<td>
<code>eventOptions</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.EventOptions">
EventOptions
</a>
</em>
</td>
<td>
<p>EventOptions for targets</p>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.SendGridTargetStatus">SendGridTargetStatus
</h3>
<p>
(<em>Appears on:</em><a href="#targets.triggermesh.io/v1alpha1.SendGridTarget">SendGridTarget</a>)
</p>
<div>
<p>SendGridTargetStatus communicates the observed state of the SendGridTarget (from the controller).</p>
</div>
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
<code>Status</code><br/>
<em>
<a href="https://pkg.go.dev/knative.dev/pkg/apis/duck/v1#Status">
knative.dev/pkg/apis/duck/v1.Status
</a>
</em>
</td>
<td>
<p>
(Members of <code>Status</code> are embedded into this type.)
</p>
<p>inherits duck/v1beta1 Status, which currently provides:
* ObservedGeneration - the &lsquo;Generation&rsquo; of the Service that was last
processed by the controller.
* Conditions - the latest available observations of a resource&rsquo;s current
state.</p>
</td>
</tr>
<tr>
<td>
<code>AddressStatus</code><br/>
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
<p>AddressStatus fulfills the Addressable contract.</p>
</td>
</tr>
<tr>
<td>
<code>CloudEventStatus</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.CloudEventStatus">
CloudEventStatus
</a>
</em>
</td>
<td>
<p>
(Members of <code>CloudEventStatus</code> are embedded into this type.)
</p>
<p>Accepted/emitted CloudEvent attributes</p>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.SlackTargetSpec">SlackTargetSpec
</h3>
<p>
(<em>Appears on:</em><a href="#targets.triggermesh.io/v1alpha1.SlackTarget">SlackTarget</a>)
</p>
<div>
<p>SlackTargetSpec defines the spec for the Slack Taret.</p>
</div>
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
<code>token</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>Token for Slack App</p>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.SlackTargetStatus">SlackTargetStatus
</h3>
<p>
(<em>Appears on:</em><a href="#targets.triggermesh.io/v1alpha1.SlackTarget">SlackTarget</a>)
</p>
<div>
<p>SlackTargetStatus communicates the observed state of the SlackTarget (from the controller).</p>
</div>
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
<code>Status</code><br/>
<em>
<a href="https://pkg.go.dev/knative.dev/pkg/apis/duck/v1#Status">
knative.dev/pkg/apis/duck/v1.Status
</a>
</em>
</td>
<td>
<p>
(Members of <code>Status</code> are embedded into this type.)
</p>
<p>inherits duck/v1beta1 Status, which currently provides:
* ObservedGeneration - the &lsquo;Generation&rsquo; of the Service that was last
processed by the controller.
* Conditions - the latest available observations of a resource&rsquo;s current
state.</p>
</td>
</tr>
<tr>
<td>
<code>AddressStatus</code><br/>
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
<p>AddressStatus fulfills the Addressable contract.</p>
</td>
</tr>
<tr>
<td>
<code>CloudEventStatus</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.CloudEventStatus">
CloudEventStatus
</a>
</em>
</td>
<td>
<p>
(Members of <code>CloudEventStatus</code> are embedded into this type.)
</p>
<p>Accepted/emitted CloudEvent attributes</p>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.SplunkTargetSpec">SplunkTargetSpec
</h3>
<p>
(<em>Appears on:</em><a href="#targets.triggermesh.io/v1alpha1.SplunkTarget">SplunkTarget</a>)
</p>
<div>
<p>SplunkTargetSpec defines the desired state of the event target.</p>
</div>
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
<code>endpoint</code><br/>
<em>
<a href="https://pkg.go.dev/knative.dev/pkg/apis#URL">
knative.dev/pkg/apis.URL
</a>
</em>
</td>
<td>
<p>URL of the HTTP Event Collector (HEC).
Only the scheme, hostname, and port (optionally) are evaluated, the URL path is trimmed if present.
see <a href="https://docs.splunk.com/Documentation/Splunk/latest/Data/UsetheHTTPEventCollector#Enable_HTTP_Event_Collector">https://docs.splunk.com/Documentation/Splunk/latest/Data/UsetheHTTPEventCollector#Enable_HTTP_Event_Collector</a></p>
</td>
</tr>
<tr>
<td>
<code>token</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.ValueFromField">
ValueFromField
</a>
</em>
</td>
<td>
<p>Token for authenticating requests against the HEC.
see <a href="https://docs.splunk.com/Documentation/Splunk/latest/Data/UsetheHTTPEventCollector#About_Event_Collector_tokens">https://docs.splunk.com/Documentation/Splunk/latest/Data/UsetheHTTPEventCollector#About_Event_Collector_tokens</a></p>
</td>
</tr>
<tr>
<td>
<code>index</code><br/>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
<p>Name of the index to send events to.
When undefined, events are sent to the default index defined in the HEC token&rsquo;s configuration.</p>
</td>
</tr>
<tr>
<td>
<code>skipTLSVerify</code><br/>
<em>
bool
</em>
</td>
<td>
<em>(Optional)</em>
<p>Controls whether the Splunk client verifies the server&rsquo;s certificate
chain and host name when communicating over TLS.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.SplunkTargetStatus">SplunkTargetStatus
</h3>
<p>
(<em>Appears on:</em><a href="#targets.triggermesh.io/v1alpha1.SplunkTarget">SplunkTarget</a>)
</p>
<div>
<p>SplunkTargetStatus defines the observed state of the event target.</p>
</div>
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
<code>Status</code><br/>
<em>
<a href="https://pkg.go.dev/knative.dev/pkg/apis/duck/v1#Status">
knative.dev/pkg/apis/duck/v1.Status
</a>
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
<code>AddressStatus</code><br/>
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
<h3 id="targets.triggermesh.io/v1alpha1.TektonTargetReapPolicy">TektonTargetReapPolicy
</h3>
<p>
(<em>Appears on:</em><a href="#targets.triggermesh.io/v1alpha1.TektonTargetSpec">TektonTargetSpec</a>)
</p>
<div>
<p>TektonTargetReapPolicy defines desired Repeating Policy.</p>
</div>
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
<code>success</code><br/>
<em>
string
</em>
</td>
<td>
<p>ReapSuccessAge How long to wait before reaping runs that were successful</p>
</td>
</tr>
<tr>
<td>
<code>fail</code><br/>
<em>
string
</em>
</td>
<td>
<p>ReapFailAge How long to wait before reaping runs that failed</p>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.TektonTargetSpec">TektonTargetSpec
</h3>
<p>
(<em>Appears on:</em><a href="#targets.triggermesh.io/v1alpha1.TektonTarget">TektonTarget</a>)
</p>
<div>
<p>TektonTargetSpec holds the desired state of event target.</p>
</div>
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
<code>reapPolicy</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.TektonTargetReapPolicy">
TektonTargetReapPolicy
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>ReapPolicy dictates the reaping policy to be applied for the target</p>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.TektonTargetStatus">TektonTargetStatus
</h3>
<p>
(<em>Appears on:</em><a href="#targets.triggermesh.io/v1alpha1.TektonTarget">TektonTarget</a>)
</p>
<div>
<p>TektonTargetStatus communicates the observed state of the TektonTarget (from the controller).</p>
</div>
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
<code>Status</code><br/>
<em>
<a href="https://pkg.go.dev/knative.dev/pkg/apis/duck/v1#Status">
knative.dev/pkg/apis/duck/v1.Status
</a>
</em>
</td>
<td>
<p>
(Members of <code>Status</code> are embedded into this type.)
</p>
<p>inherits duck/v1beta1 Status, which currently provides:
* ObservedGeneration - the &lsquo;Generation&rsquo; of the Service that was last
processed by the controller.
* Conditions - the latest available observations of a resource&rsquo;s current
state.</p>
</td>
</tr>
<tr>
<td>
<code>AddressStatus</code><br/>
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
<p>AddressStatus fulfills the Addressable contract.</p>
</td>
</tr>
<tr>
<td>
<code>CloudEventStatus</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.CloudEventStatus">
CloudEventStatus
</a>
</em>
</td>
<td>
<p>
(Members of <code>CloudEventStatus</code> are embedded into this type.)
</p>
<p>Accepted/emitted CloudEvent attributes</p>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.TwilioTargetSpec">TwilioTargetSpec
</h3>
<p>
(<em>Appears on:</em><a href="#targets.triggermesh.io/v1alpha1.TwilioTarget">TwilioTarget</a>)
</p>
<div>
<p>TwilioTargetSpec holds the desired state of the TwilioTarget.</p>
</div>
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
<code>sid</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>Twilio account SID</p>
</td>
</tr>
<tr>
<td>
<code>token</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>Twilio account Token</p>
</td>
</tr>
<tr>
<td>
<code>defaultPhoneFrom</code><br/>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
<p>DefaultPhoneFrom is the purchased Twilio phone we are using</p>
</td>
</tr>
<tr>
<td>
<code>defaultPhoneTo</code><br/>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
<p>DefaultPhoneTo is the destination phone</p>
</td>
</tr>
<tr>
<td>
<code>eventOptions</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.EventOptions">
EventOptions
</a>
</em>
</td>
<td>
<p>EventOptions for targets</p>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.TwilioTargetStatus">TwilioTargetStatus
</h3>
<p>
(<em>Appears on:</em><a href="#targets.triggermesh.io/v1alpha1.TwilioTarget">TwilioTarget</a>)
</p>
<div>
<p>TwilioTargetStatus communicates the observed state of the TwilioTarget (from the controller).</p>
</div>
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
<code>Status</code><br/>
<em>
<a href="https://pkg.go.dev/knative.dev/pkg/apis/duck/v1#Status">
knative.dev/pkg/apis/duck/v1.Status
</a>
</em>
</td>
<td>
<p>
(Members of <code>Status</code> are embedded into this type.)
</p>
<p>inherits duck/v1beta1 Status, which currently provides:
* ObservedGeneration - the &lsquo;Generation&rsquo; of the Service that was last
processed by the controller.
* Conditions - the latest available observations of a resource&rsquo;s current
state.</p>
</td>
</tr>
<tr>
<td>
<code>AddressStatus</code><br/>
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
<p>AddressStatus fulfills the Addressable contract.</p>
</td>
</tr>
<tr>
<td>
<code>CloudEventStatus</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.CloudEventStatus">
CloudEventStatus
</a>
</em>
</td>
<td>
<p>
(Members of <code>CloudEventStatus</code> are embedded into this type.)
</p>
<p>Accepted/emitted CloudEvent attributes</p>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.UiPathTargetSpec">UiPathTargetSpec
</h3>
<p>
(<em>Appears on:</em><a href="#targets.triggermesh.io/v1alpha1.UiPathTarget">UiPathTarget</a>)
</p>
<div>
<p>UiPathTargetSpec defines the desired state of the event target.</p>
</div>
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
<code>userKey</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>UserKey An OAuth token used to obtain an access key.</p>
</td>
</tr>
<tr>
<td>
<code>robotName</code><br/>
<em>
string
</em>
</td>
<td>
<p>RobotName is the robot to invoke with this target.</p>
</td>
</tr>
<tr>
<td>
<code>processName</code><br/>
<em>
string
</em>
</td>
<td>
<p>ProccessName is the process name that will be used by UiPath for the target.</p>
</td>
</tr>
<tr>
<td>
<code>tenantName</code><br/>
<em>
string
</em>
</td>
<td>
<p>TenantName is the tenant that contains the components that will be invoked by the target.</p>
</td>
</tr>
<tr>
<td>
<code>accountLogicalName</code><br/>
<em>
string
</em>
</td>
<td>
<p>AccountLogicalName is the unique site URL used to identif the UiPath tenant.</p>
</td>
</tr>
<tr>
<td>
<code>clientID</code><br/>
<em>
string
</em>
</td>
<td>
<p>ClientID is the OAuth id registered to this target.</p>
</td>
</tr>
<tr>
<td>
<code>organizationUnitID</code><br/>
<em>
string
</em>
</td>
<td>
<p>OrganizationUnitID is the organization unit within the tenant that the UiPath proccess will run under.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.UiPathTargetStatus">UiPathTargetStatus
</h3>
<p>
(<em>Appears on:</em><a href="#targets.triggermesh.io/v1alpha1.UiPathTarget">UiPathTarget</a>)
</p>
<div>
<p>UiPathTargetStatus defines the observed state of the event target.</p>
</div>
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
<code>Status</code><br/>
<em>
<a href="https://pkg.go.dev/knative.dev/pkg/apis/duck/v1#Status">
knative.dev/pkg/apis/duck/v1.Status
</a>
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
<code>AddressStatus</code><br/>
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
<tr>
<td>
<code>CloudEventStatus</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.CloudEventStatus">
CloudEventStatus
</a>
</em>
</td>
<td>
<p>
(Members of <code>CloudEventStatus</code> are embedded into this type.)
</p>
<p>Accepted/emitted CloudEvent attributes</p>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.ValueFromField">ValueFromField
</h3>
<p>
(<em>Appears on:</em><a href="#targets.triggermesh.io/v1alpha1.SplunkTargetSpec">SplunkTargetSpec</a>)
</p>
<div>
<p>ValueFromField is a struct field that can have its value either defined
explicitly or sourced from another entity.</p>
</div>
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
<code>value</code><br/>
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
<code>valueFromSecret</code><br/>
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
<h3 id="targets.triggermesh.io/v1alpha1.ZendeskTargetSpec">ZendeskTargetSpec
</h3>
<p>
(<em>Appears on:</em><a href="#targets.triggermesh.io/v1alpha1.ZendeskTarget">ZendeskTarget</a>)
</p>
<div>
<p>ZendeskTargetSpec holds the desired state of the ZendeskTarget.</p>
</div>
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
<code>token</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>Token contains the Zendesk account Token.</p>
</td>
</tr>
<tr>
<td>
<code>subdomain</code><br/>
<em>
string
</em>
</td>
<td>
<p>Subdomain the Zendesk subdomain.</p>
</td>
</tr>
<tr>
<td>
<code>email</code><br/>
<em>
string
</em>
</td>
<td>
<p>Email the registered Zendesk email account.</p>
</td>
</tr>
<tr>
<td>
<code>subject</code><br/>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
<p>Subject a static subject assignemnt for every ticket.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.ZendeskTargetStatus">ZendeskTargetStatus
</h3>
<p>
(<em>Appears on:</em><a href="#targets.triggermesh.io/v1alpha1.ZendeskTarget">ZendeskTarget</a>)
</p>
<div>
<p>ZendeskTargetStatus communicates the observed state of the ZendeskTarget (from the controller).</p>
</div>
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
<code>Status</code><br/>
<em>
<a href="https://pkg.go.dev/knative.dev/pkg/apis/duck/v1#Status">
knative.dev/pkg/apis/duck/v1.Status
</a>
</em>
</td>
<td>
<p>
(Members of <code>Status</code> are embedded into this type.)
</p>
<p>inherits duck/v1beta1 Status, which currently provides:
* ObservedGeneration - the &lsquo;Generation&rsquo; of the Service that was last
processed by the controller.
* Conditions - the latest available observations of a resource&rsquo;s current
state.</p>
</td>
</tr>
<tr>
<td>
<code>AddressStatus</code><br/>
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
<p>AddressStatus fulfills the Addressable contract.</p>
</td>
</tr>
<tr>
<td>
<code>CloudEventStatus</code><br/>
<em>
<a href="#targets.triggermesh.io/v1alpha1.CloudEventStatus">
CloudEventStatus
</a>
</em>
</td>
<td>
<p>
(Members of <code>CloudEventStatus</code> are embedded into this type.)
</p>
<p>Accepted/emitted CloudEvent attributes.</p>
</td>
</tr>
</tbody>
</table>
<hr/>
<p><em>
Generated with <code>gen-crd-api-reference-docs</code>
on git commit <code>3c82714</code>.
</em></p>
