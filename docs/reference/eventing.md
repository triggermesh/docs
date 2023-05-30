<style>
.bs-sidebar {
display: none;
}
</style>
<p>Package:</p>
<ul>
<li>
<a href="#eventing.triggermesh.io%2fv1alpha1">eventing.triggermesh.io/v1alpha1</a>
</li>
</ul>
<h2 id="eventing.triggermesh.io/v1alpha1">eventing.triggermesh.io/v1alpha1</h2>
<p>
<p>Package v1alpha1 is the v1alpha1 version of the API.</p>
</p>
Resource Types:
<ul><li>
<a href="#eventing.triggermesh.io/v1alpha1.MemoryBroker">MemoryBroker</a>
</li><li>
<a href="#eventing.triggermesh.io/v1alpha1.RedisBroker">RedisBroker</a>
</li><li>
<a href="#eventing.triggermesh.io/v1alpha1.Trigger">Trigger</a>
</li></ul>
<h3 id="eventing.triggermesh.io/v1alpha1.MemoryBroker">MemoryBroker
</h3>
<p>
<p>MemoryBroker is a Memory based broker implementation that collects a pool of
events that are consumable using Triggers. Brokers provide a well-known endpoint
for event delivery that senders can use with minimal knowledge of the event
routing strategy. Subscribers use Triggers to request delivery of events from a
broker&rsquo;s pool to a specific URL or Addressable endpoint.</p>
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
eventing.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code></br>
string
</td>
<td><code>MemoryBroker</code></td>
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
<a href="#eventing.triggermesh.io/v1alpha1.MemoryBrokerSpec">
MemoryBrokerSpec
</a>
</em>
</td>
<td>
<p>Spec defines the desired state of the broker.</p>
<br/>
<br/>
<table>
<tr>
<td>
<code>memory</code></br>
<em>
<a href="#eventing.triggermesh.io/v1alpha1.Memory">
Memory
</a>
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>broker</code></br>
<em>
<a href="#eventing.triggermesh.io/v1alpha1.Broker">
Broker
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
<a href="#eventing.triggermesh.io/v1alpha1.MemoryBrokerStatus">
MemoryBrokerStatus
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>Status represents the current state of the broker. This data may be out of
date.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="eventing.triggermesh.io/v1alpha1.RedisBroker">RedisBroker
</h3>
<p>
<p>RedisBroker is a Redis based broker implementation that collects a pool of
events that are consumable using Triggers. Brokers provide a well-known endpoint
for event delivery that senders can use with minimal knowledge of the event
routing strategy. Subscribers use Triggers to request delivery of events from a
broker&rsquo;s pool to a specific URL or Addressable endpoint.</p>
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
eventing.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code></br>
string
</td>
<td><code>RedisBroker</code></td>
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
<a href="#eventing.triggermesh.io/v1alpha1.RedisBrokerSpec">
RedisBrokerSpec
</a>
</em>
</td>
<td>
<p>Spec defines the desired state of the broker.</p>
<br/>
<br/>
<table>
<tr>
<td>
<code>redis</code></br>
<em>
<a href="#eventing.triggermesh.io/v1alpha1.Redis">
Redis
</a>
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>broker</code></br>
<em>
<a href="#eventing.triggermesh.io/v1alpha1.Broker">
Broker
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
<a href="#eventing.triggermesh.io/v1alpha1.RedisBrokerStatus">
RedisBrokerStatus
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>Status represents the current state of the broker. This data may be out of
date.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="eventing.triggermesh.io/v1alpha1.Trigger">Trigger
</h3>
<p>
<p>Trigger represents a request to have events delivered to a target from a
Broker&rsquo;s event pool.</p>
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
eventing.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code></br>
string
</td>
<td><code>Trigger</code></td>
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
<a href="#eventing.triggermesh.io/v1alpha1.TriggerSpec">
TriggerSpec
</a>
</em>
</td>
<td>
<p>Spec defines the desired state of the Trigger.</p>
<br/>
<br/>
<table>
<tr>
<td>
<code>broker</code></br>
<em>
<a href="https://pkg.go.dev/knative.dev/pkg/apis/duck/v1#KReference">
knative.dev/pkg/apis/duck/v1.KReference
</a>
</em>
</td>
<td>
<p>Broker is the broker that this trigger receives events from.</p>
</td>
</tr>
<tr>
<td>
<code>filters</code></br>
<em>
[]github.com/triggermesh/brokers/pkg/config/broker.Filter
</em>
</td>
<td>
<em>(Optional)</em>
<p>Filters is an experimental field that conforms to the CNCF CloudEvents Subscriptions
API. It&rsquo;s an array of filter expressions that evaluate to true or false.
If any filter expression in the array evaluates to false, the event MUST
NOT be sent to the target. If all the filter expressions in the array
evaluate to true, the event MUST be attempted to be delivered. Absence of
a filter or empty array implies a value of true. In the event of users
specifying both Filter and Filters, then the latter will override the former.
This will allow users to try out the effect of the new Filters field
without compromising the existing attribute-based Filter and try it out on existing
Trigger objects.</p>
</td>
</tr>
<tr>
<td>
<code>target</code></br>
<em>
<a href="https://pkg.go.dev/knative.dev/pkg/apis/duck/v1#Destination">
knative.dev/pkg/apis/duck/v1.Destination
</a>
</em>
</td>
<td>
<p>Target is the addressable that receives events from the Broker that pass
the Filter. It is required.</p>
</td>
</tr>
<tr>
<td>
<code>delivery</code></br>
<em>
knative.dev/eventing/pkg/apis/duck/v1.DeliverySpec
</em>
</td>
<td>
<em>(Optional)</em>
<p>Delivery contains the delivery spec for this specific trigger.</p>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<code>status</code></br>
<em>
<a href="#eventing.triggermesh.io/v1alpha1.TriggerStatus">
TriggerStatus
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>Status represents the current state of the Trigger. This data may be out of
date.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="eventing.triggermesh.io/v1alpha1.Broker">Broker
</h3>
<p>
(<em>Appears on:</em>
<a href="#eventing.triggermesh.io/v1alpha1.MemoryBrokerSpec">MemoryBrokerSpec</a>, 
<a href="#eventing.triggermesh.io/v1alpha1.RedisBrokerSpec">RedisBrokerSpec</a>)
</p>
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
<code>port</code></br>
<em>
int
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>observability</code></br>
<em>
<a href="#eventing.triggermesh.io/v1alpha1.Observability">
Observability
</a>
</em>
</td>
<td>
</td>
</tr>
</tbody>
</table>
<h3 id="eventing.triggermesh.io/v1alpha1.Memory">Memory
</h3>
<p>
(<em>Appears on:</em>
<a href="#eventing.triggermesh.io/v1alpha1.MemoryBrokerSpec">MemoryBrokerSpec</a>)
</p>
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
<code>streamMaxLen</code></br>
<em>
int
</em>
</td>
<td>
<p>Maximum number of items the stream can host.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="eventing.triggermesh.io/v1alpha1.MemoryBrokerSpec">MemoryBrokerSpec
</h3>
<p>
(<em>Appears on:</em>
<a href="#eventing.triggermesh.io/v1alpha1.MemoryBroker">MemoryBroker</a>)
</p>
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
<code>memory</code></br>
<em>
<a href="#eventing.triggermesh.io/v1alpha1.Memory">
Memory
</a>
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>broker</code></br>
<em>
<a href="#eventing.triggermesh.io/v1alpha1.Broker">
Broker
</a>
</em>
</td>
<td>
</td>
</tr>
</tbody>
</table>
<h3 id="eventing.triggermesh.io/v1alpha1.MemoryBrokerStatus">MemoryBrokerStatus
</h3>
<p>
(<em>Appears on:</em>
<a href="#eventing.triggermesh.io/v1alpha1.MemoryBroker">MemoryBroker</a>)
</p>
<p>
<p>MemoryBrokerStatus represents the current state of a Memory broker.</p>
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
<a href="https://pkg.go.dev/knative.dev/pkg/apis/duck/v1#Status">
knative.dev/pkg/apis/duck/v1.Status
</a>
</em>
</td>
<td>
<p>
(Members of <code>Status</code> are embedded into this type.)
</p>
<p>inherits duck/v1 Status, which currently provides:
* ObservedGeneration - the &lsquo;Generation&rsquo; of the Broker that was last processed by the controller.
* Conditions - the latest available observations of a resource&rsquo;s current state.</p>
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
<p>Broker is Addressable. It exposes the endpoint as an URI to get events
delivered into the Broker mesh.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="eventing.triggermesh.io/v1alpha1.Observability">Observability
</h3>
<p>
(<em>Appears on:</em>
<a href="#eventing.triggermesh.io/v1alpha1.Broker">Broker</a>)
</p>
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
<code>valueFromConfigMap</code></br>
<em>
string
</em>
</td>
<td>
</td>
</tr>
</tbody>
</table>
<h3 id="eventing.triggermesh.io/v1alpha1.ReconcilableBroker">ReconcilableBroker
</h3>
<p>
</p>
<h3 id="eventing.triggermesh.io/v1alpha1.ReconcilableBrokerStatus">ReconcilableBrokerStatus
</h3>
<p>
</p>
<h3 id="eventing.triggermesh.io/v1alpha1.Redis">Redis
</h3>
<p>
(<em>Appears on:</em>
<a href="#eventing.triggermesh.io/v1alpha1.RedisBrokerSpec">RedisBrokerSpec</a>)
</p>
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
<code>connection</code></br>
<em>
<a href="#eventing.triggermesh.io/v1alpha1.RedisConnection">
RedisConnection
</a>
</em>
</td>
<td>
<p>Redis connection data.</p>
</td>
</tr>
<tr>
<td>
<code>stream</code></br>
<em>
string
</em>
</td>
<td>
<p>Stream name used by the broker.</p>
</td>
</tr>
<tr>
<td>
<code>streamMaxLen</code></br>
<em>
int
</em>
</td>
<td>
<p>Maximum number of items the stream can host.</p>
</td>
</tr>
<tr>
<td>
<code>enableTrackingID</code></br>
<em>
bool
</em>
</td>
<td>
<p>Whether the Redis ID for the event is added as a CloudEvents attribute.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="eventing.triggermesh.io/v1alpha1.RedisBrokerSpec">RedisBrokerSpec
</h3>
<p>
(<em>Appears on:</em>
<a href="#eventing.triggermesh.io/v1alpha1.RedisBroker">RedisBroker</a>)
</p>
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
<code>redis</code></br>
<em>
<a href="#eventing.triggermesh.io/v1alpha1.Redis">
Redis
</a>
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>broker</code></br>
<em>
<a href="#eventing.triggermesh.io/v1alpha1.Broker">
Broker
</a>
</em>
</td>
<td>
</td>
</tr>
</tbody>
</table>
<h3 id="eventing.triggermesh.io/v1alpha1.RedisBrokerStatus">RedisBrokerStatus
</h3>
<p>
(<em>Appears on:</em>
<a href="#eventing.triggermesh.io/v1alpha1.RedisBroker">RedisBroker</a>)
</p>
<p>
<p>RedisBrokerStatus represents the current state of a Redis broker.</p>
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
<a href="https://pkg.go.dev/knative.dev/pkg/apis/duck/v1#Status">
knative.dev/pkg/apis/duck/v1.Status
</a>
</em>
</td>
<td>
<p>
(Members of <code>Status</code> are embedded into this type.)
</p>
<p>inherits duck/v1 Status, which currently provides:
* ObservedGeneration - the &lsquo;Generation&rsquo; of the Broker that was last processed by the controller.
* Conditions - the latest available observations of a resource&rsquo;s current state.</p>
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
<p>Broker is Addressable. It exposes the endpoint as an URI to get events
delivered into the Broker mesh.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="eventing.triggermesh.io/v1alpha1.RedisConnection">RedisConnection
</h3>
<p>
(<em>Appears on:</em>
<a href="#eventing.triggermesh.io/v1alpha1.Redis">Redis</a>)
</p>
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
<code>url</code></br>
<em>
string
</em>
</td>
<td>
<p>Redis URL for standalone instances</p>
</td>
</tr>
<tr>
<td>
<code>clusterURLs</code></br>
<em>
[]string
</em>
</td>
<td>
<p>Redis URLs for cluster instances</p>
</td>
</tr>
<tr>
<td>
<code>username</code></br>
<em>
<a href="#eventing.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>Redis username.</p>
</td>
</tr>
<tr>
<td>
<code>password</code></br>
<em>
<a href="#eventing.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>Redis password.</p>
</td>
</tr>
<tr>
<td>
<code>tlsCACertificate</code></br>
<em>
<a href="#eventing.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>CA Certificate used to connect to Redis.</p>
</td>
</tr>
<tr>
<td>
<code>tlsCertificate</code></br>
<em>
<a href="#eventing.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>Certificate used to connect to authenticate to Redis.</p>
</td>
</tr>
<tr>
<td>
<code>tlsKey</code></br>
<em>
<a href="#eventing.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>Certificate Key used to connect to authenticate to Redis.</p>
</td>
</tr>
<tr>
<td>
<code>tlsEnabled</code></br>
<em>
bool
</em>
</td>
<td>
<p>Use TLS enctrypted connection.</p>
</td>
</tr>
<tr>
<td>
<code>tlsSkipVerify</code></br>
<em>
bool
</em>
</td>
<td>
<p>Skip TLS certificate verification.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="eventing.triggermesh.io/v1alpha1.SecretValueFromSource">SecretValueFromSource
</h3>
<p>
(<em>Appears on:</em>
<a href="#eventing.triggermesh.io/v1alpha1.RedisConnection">RedisConnection</a>)
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
<h3 id="eventing.triggermesh.io/v1alpha1.TriggerSpec">TriggerSpec
</h3>
<p>
(<em>Appears on:</em>
<a href="#eventing.triggermesh.io/v1alpha1.Trigger">Trigger</a>)
</p>
<p>
<p>TriggerSpec defines the desired state of Trigger</p>
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
<code>broker</code></br>
<em>
<a href="https://pkg.go.dev/knative.dev/pkg/apis/duck/v1#KReference">
knative.dev/pkg/apis/duck/v1.KReference
</a>
</em>
</td>
<td>
<p>Broker is the broker that this trigger receives events from.</p>
</td>
</tr>
<tr>
<td>
<code>filters</code></br>
<em>
[]github.com/triggermesh/brokers/pkg/config/broker.Filter
</em>
</td>
<td>
<em>(Optional)</em>
<p>Filters is an experimental field that conforms to the CNCF CloudEvents Subscriptions
API. It&rsquo;s an array of filter expressions that evaluate to true or false.
If any filter expression in the array evaluates to false, the event MUST
NOT be sent to the target. If all the filter expressions in the array
evaluate to true, the event MUST be attempted to be delivered. Absence of
a filter or empty array implies a value of true. In the event of users
specifying both Filter and Filters, then the latter will override the former.
This will allow users to try out the effect of the new Filters field
without compromising the existing attribute-based Filter and try it out on existing
Trigger objects.</p>
</td>
</tr>
<tr>
<td>
<code>target</code></br>
<em>
<a href="https://pkg.go.dev/knative.dev/pkg/apis/duck/v1#Destination">
knative.dev/pkg/apis/duck/v1.Destination
</a>
</em>
</td>
<td>
<p>Target is the addressable that receives events from the Broker that pass
the Filter. It is required.</p>
</td>
</tr>
<tr>
<td>
<code>delivery</code></br>
<em>
knative.dev/eventing/pkg/apis/duck/v1.DeliverySpec
</em>
</td>
<td>
<em>(Optional)</em>
<p>Delivery contains the delivery spec for this specific trigger.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="eventing.triggermesh.io/v1alpha1.TriggerStatus">TriggerStatus
</h3>
<p>
(<em>Appears on:</em>
<a href="#eventing.triggermesh.io/v1alpha1.Trigger">Trigger</a>)
</p>
<p>
<p>TriggerStatus represents the current state of a Trigger.</p>
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
<a href="https://pkg.go.dev/knative.dev/pkg/apis/duck/v1#Status">
knative.dev/pkg/apis/duck/v1.Status
</a>
</em>
</td>
<td>
<p>
(Members of <code>Status</code> are embedded into this type.)
</p>
<p>inherits duck/v1 Status, which currently provides:
* ObservedGeneration - the &lsquo;Generation&rsquo; of the Trigger that was last processed by the controller.
* Conditions - the latest available observations of a resource&rsquo;s current state.</p>
</td>
</tr>
<tr>
<td>
<code>targetUri</code></br>
<em>
<a href="https://pkg.go.dev/knative.dev/pkg/apis#URL">
knative.dev/pkg/apis.URL
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>TargetURI is the resolved URI of the receiver for this Trigger.</p>
</td>
</tr>
<tr>
<td>
<code>DeliveryStatus</code></br>
<em>
knative.dev/eventing/pkg/apis/duck/v1.DeliveryStatus
</em>
</td>
<td>
<p>
(Members of <code>DeliveryStatus</code> are embedded into this type.)
</p>
<p>DeliveryStatus contains a resolved URL to the dead letter sink address, and any other
resolved delivery options.</p>
</td>
</tr>
</tbody>
</table>
<hr/>
<p><em>
Generated with <code>gen-crd-api-reference-docs</code>
on git commit <code>e99a0e7</code>.
</em></p>
