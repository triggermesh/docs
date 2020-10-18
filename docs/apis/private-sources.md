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
<a href="#sources.triggermesh.io/v1alpha1.AzureActivityLogsSource">AzureActivityLogsSource</a>
</li><li>
<a href="#sources.triggermesh.io/v1alpha1.AzureBlobStorageSource">AzureBlobStorageSource</a>
</li><li>
<a href="#sources.triggermesh.io/v1alpha1.AzureEventHubSource">AzureEventHubSource</a>
</li><li>
<a href="#sources.triggermesh.io/v1alpha1.OCIMetricsSource">OCIMetricsSource</a>
</li><li>
<a href="#sources.triggermesh.io/v1alpha1.SalesforceSource">SalesforceSource</a>
</li></ul>
<h3 id="sources.triggermesh.io/v1alpha1.AzureActivityLogsSource">AzureActivityLogsSource
</h3>
<p>
<p>AzureActivityLogsSource is the Schema for the event source.</p>
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
<td><code>AzureActivityLogsSource</code></td>
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
<code>SourceSpec</code></br>
<em>
knative.dev/pkg/apis/duck/v1.SourceSpec
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
<code>eventHubsSASPolicyID</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.EventHubsSASPolicyResourceID">
EventHubsSASPolicyResourceID
</a>
</em>
</td>
<td>
<p>Resource ID of an SAS policy with Manage permissions on an Event Hubs namespace.
Besides the SAS policy name itself, the resource ID contains the subscription ID, resource group name
and Event Hubs namespace to uniquely identify the rule.
Format: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.EventHub/namespaces/{namespaceName}/authorizationRules/{authorizationRuleName}
References:
* <a href="https://docs.microsoft.com/en-us/rest/api/eventhub/2017-04-01/authorization%20rules%20-%20namespaces/getauthorizationrule">https://docs.microsoft.com/en-us/rest/api/eventhub/2017-04-01/authorization%20rules%20-%20namespaces/getauthorizationrule</a>
* <a href="https://docs.microsoft.com/en-us/azure/event-hubs/authorize-access-shared-access-signature">https://docs.microsoft.com/en-us/azure/event-hubs/authorize-access-shared-access-signature</a></p>
</td>
</tr>
<tr>
<td>
<code>categories</code></br>
<em>
[]string
</em>
</td>
<td>
<em>(Optional)</em>
<p>Categories of Activity Logs to collect.
All available categories are selected when this attribute is empty.
<a href="https://docs.microsoft.com/en-us/azure/azure-monitor/platform/activity-log-schema#categories">https://docs.microsoft.com/en-us/azure/azure-monitor/platform/activity-log-schema#categories</a></p>
</td>
</tr>
<tr>
<td>
<code>eventHubName</code></br>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
<p>Name of an Event Hub to send data to.
When this attribute is set, an Event Hub with the given name MUST already exist within the namespace.
When this attribute is not set, Azure creates an Event Hub with the name &lsquo;insights-activity-logs&rsquo;.</p>
</td>
</tr>
<tr>
<td>
<code>auth</code></br>
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
<code>status</code></br>
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
<p>
<p>AzureBlobStorageSource is the Schema for the event source.</p>
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
<td><code>AzureBlobStorageSource</code></td>
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
<code>SourceSpec</code></br>
<em>
knative.dev/pkg/apis/duck/v1.SourceSpec
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
<code>containerName</code></br>
<em>
string
</em>
</td>
<td>
<p>ContainerName is the name of the Blob Storage Container we plan to interface with</p>
</td>
</tr>
<tr>
<td>
<code>accountName</code></br>
<em>
string
</em>
</td>
<td>
<p>AccountName is the account name</p>
</td>
</tr>
<tr>
<td>
<code>accountKey</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>AccountKey is the account key</p>
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
<h3 id="sources.triggermesh.io/v1alpha1.AzureEventHubSource">AzureEventHubSource
</h3>
<p>
<p>AzureEventHubSource is the Schema for the event source.</p>
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
<td><code>AzureEventHubSource</code></td>
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
<code>SourceSpec</code></br>
<em>
knative.dev/pkg/apis/duck/v1.SourceSpec
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
<code>auth</code></br>
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
<tr>
<td>
<code>hubNamespace</code></br>
<em>
string
</em>
</td>
<td>
<p>If we use SP account or SAS token key, we must specify which
Event Hub to use</p>
</td>
</tr>
<tr>
<td>
<code>hubName</code></br>
<em>
string
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
<p>
<p>OCIMetricsSource is the schema for the event source.</p>
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
<td><code>OCIMetricsSource</code></td>
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
<code>oracleApiPrivateKey</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>Oracle User API private key</p>
</td>
</tr>
<tr>
<td>
<code>oracleApiPrivateKeyPassphrase</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>Oracle User API private key passphrase</p>
</td>
</tr>
<tr>
<td>
<code>oracleApiPrivateKeyFingerprint</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>Oracle User API cert fingerprint</p>
</td>
</tr>
<tr>
<td>
<code>oracleTenancy</code></br>
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
<code>oracleUser</code></br>
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
<code>oracleRegion</code></br>
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
<code>metricsPollingFrequency</code></br>
<em>
string
</em>
</td>
<td>
<p>OCI Metrics Polling Frequency</p>
</td>
</tr>
<tr>
<td>
<code>metricsNamespace</code></br>
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
<code>metricsQuery</code></br>
<em>
string
</em>
</td>
<td>
<p>OCI Metrics Query See <a href="https://docs.cloud.oracle.com/en-us/iaas/api/#/en/monitoring/20180401/MetricData">https://docs.cloud.oracle.com/en-us/iaas/api/#/en/monitoring/20180401/MetricData</a></p>
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
<h3 id="sources.triggermesh.io/v1alpha1.SalesforceSource">SalesforceSource
</h3>
<p>
<p>SalesforceSource is the Schema for the event source.</p>
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
<td><code>SalesforceSource</code></td>
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
<code>SourceSpec</code></br>
<em>
knative.dev/pkg/apis/duck/v1.SourceSpec
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
<code>auth</code></br>
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
<code>apiVersion</code></br>
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
<code>subscription</code></br>
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
<h3 id="sources.triggermesh.io/v1alpha1.AzureActivityLogsSourceSpec">AzureActivityLogsSourceSpec
</h3>
<p>
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.AzureActivityLogsSource">AzureActivityLogsSource</a>)
</p>
<p>
<p>AzureActivityLogsSourceSpec defines the desired state of the event source.</p>
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
</td>
</tr>
<tr>
<td>
<code>eventHubsSASPolicyID</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.EventHubsSASPolicyResourceID">
EventHubsSASPolicyResourceID
</a>
</em>
</td>
<td>
<p>Resource ID of an SAS policy with Manage permissions on an Event Hubs namespace.
Besides the SAS policy name itself, the resource ID contains the subscription ID, resource group name
and Event Hubs namespace to uniquely identify the rule.
Format: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.EventHub/namespaces/{namespaceName}/authorizationRules/{authorizationRuleName}
References:
* <a href="https://docs.microsoft.com/en-us/rest/api/eventhub/2017-04-01/authorization%20rules%20-%20namespaces/getauthorizationrule">https://docs.microsoft.com/en-us/rest/api/eventhub/2017-04-01/authorization%20rules%20-%20namespaces/getauthorizationrule</a>
* <a href="https://docs.microsoft.com/en-us/azure/event-hubs/authorize-access-shared-access-signature">https://docs.microsoft.com/en-us/azure/event-hubs/authorize-access-shared-access-signature</a></p>
</td>
</tr>
<tr>
<td>
<code>categories</code></br>
<em>
[]string
</em>
</td>
<td>
<em>(Optional)</em>
<p>Categories of Activity Logs to collect.
All available categories are selected when this attribute is empty.
<a href="https://docs.microsoft.com/en-us/azure/azure-monitor/platform/activity-log-schema#categories">https://docs.microsoft.com/en-us/azure/azure-monitor/platform/activity-log-schema#categories</a></p>
</td>
</tr>
<tr>
<td>
<code>eventHubName</code></br>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
<p>Name of an Event Hub to send data to.
When this attribute is set, an Event Hub with the given name MUST already exist within the namespace.
When this attribute is not set, Azure creates an Event Hub with the name &lsquo;insights-activity-logs&rsquo;.</p>
</td>
</tr>
<tr>
<td>
<code>auth</code></br>
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
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.AzureActivityLogsSource">AzureActivityLogsSource</a>)
</p>
<p>
<p>AzureActivityLogsSourceStatus defines the observed state of the event source.</p>
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
<h3 id="sources.triggermesh.io/v1alpha1.AzureAuth">AzureAuth
</h3>
<p>
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.AzureActivityLogsSourceSpec">AzureActivityLogsSourceSpec</a>, 
<a href="#sources.triggermesh.io/v1alpha1.AzureEventHubSourceSpec">AzureEventHubSourceSpec</a>)
</p>
<p>
<p>AzureAuth contains multiple authentication methods for Azure services.</p>
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
<code>sasToken</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AzureSASToken">
AzureSASToken
</a>
</em>
</td>
<td>
<p>SASToken contains either Azure Connection string
or a key-value pair required to produce an access token.
See <a href="https://docs.microsoft.com/en-us/azure/storage/common/storage-sas-overview">https://docs.microsoft.com/en-us/azure/storage/common/storage-sas-overview</a></p>
</td>
</tr>
<tr>
<td>
<code>servicePrincipal</code></br>
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
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.AzureBlobStorageSourceSpec">AzureBlobStorageSourceSpec
</h3>
<p>
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.AzureBlobStorageSource">AzureBlobStorageSource</a>)
</p>
<p>
<p>AzureBlobStorageSourceSpec defines the desired state of the event source.</p>
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
</td>
</tr>
<tr>
<td>
<code>containerName</code></br>
<em>
string
</em>
</td>
<td>
<p>ContainerName is the name of the Blob Storage Container we plan to interface with</p>
</td>
</tr>
<tr>
<td>
<code>accountName</code></br>
<em>
string
</em>
</td>
<td>
<p>AccountName is the account name</p>
</td>
</tr>
<tr>
<td>
<code>accountKey</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>AccountKey is the account key</p>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.AzureEventHubSourceSpec">AzureEventHubSourceSpec
</h3>
<p>
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.AzureEventHubSource">AzureEventHubSource</a>)
</p>
<p>
<p>AzureEventHubSourceSpec defines the desired state of the event source.</p>
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
</td>
</tr>
<tr>
<td>
<code>auth</code></br>
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
<tr>
<td>
<code>hubNamespace</code></br>
<em>
string
</em>
</td>
<td>
<p>If we use SP account or SAS token key, we must specify which
Event Hub to use</p>
</td>
</tr>
<tr>
<td>
<code>hubName</code></br>
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
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.AzureAuth">AzureAuth</a>)
</p>
<p>
<p>AzureSASToken represents Azure shared access signatures auth.</p>
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
<code>keyName</code></br>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>keyValue</code></br>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>connectionString</code></br>
<em>
string
</em>
</td>
<td>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.AzureServicePrincipal">AzureServicePrincipal
</h3>
<p>
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.AzureAuth">AzureAuth</a>)
</p>
<p>
<p>AzureServicePrincipal represents an AAD Service Principal.</p>
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
<code>tenantID</code></br>
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
<code>clientID</code></br>
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
<code>clientSecret</code></br>
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
<h3 id="sources.triggermesh.io/v1alpha1.EventHubsSASPolicyResourceID">EventHubsSASPolicyResourceID
</h3>
<p>
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.AzureActivityLogsSourceSpec">AzureActivityLogsSourceSpec</a>)
</p>
<p>
<p>EventHubsSASPolicyResourceID represents a resource ID for an Event Hubs
SAS policy.</p>
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
<code>SubscriptionID</code></br>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>ResourceGroup</code></br>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>Namespace</code></br>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>AuthorizationRule</code></br>
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
<p>
<p>EventSource is implemented by all event source types.</p>
</p>
<h3 id="sources.triggermesh.io/v1alpha1.EventSourceStatus">EventSourceStatus
</h3>
<p>
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.AzureBlobStorageSource">AzureBlobStorageSource</a>, 
<a href="#sources.triggermesh.io/v1alpha1.AzureEventHubSource">AzureEventHubSource</a>, 
<a href="#sources.triggermesh.io/v1alpha1.OCIMetricsSource">OCIMetricsSource</a>, 
<a href="#sources.triggermesh.io/v1alpha1.SalesforceSource">SalesforceSource</a>, 
<a href="#sources.triggermesh.io/v1alpha1.AzureActivityLogsSourceStatus">AzureActivityLogsSourceStatus</a>, 
<a href="#sources.triggermesh.io/v1alpha1.EventSourceStatusManager">EventSourceStatusManager</a>)
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
<h3 id="sources.triggermesh.io/v1alpha1.OCIMetricsSourceSpec">OCIMetricsSourceSpec
</h3>
<p>
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.OCIMetricsSource">OCIMetricsSource</a>)
</p>
<p>
<p>OCIMetricsSourceSpec defines the desired state of the event source.</p>
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
<code>oracleApiPrivateKey</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>Oracle User API private key</p>
</td>
</tr>
<tr>
<td>
<code>oracleApiPrivateKeyPassphrase</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>Oracle User API private key passphrase</p>
</td>
</tr>
<tr>
<td>
<code>oracleApiPrivateKeyFingerprint</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>Oracle User API cert fingerprint</p>
</td>
</tr>
<tr>
<td>
<code>oracleTenancy</code></br>
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
<code>oracleUser</code></br>
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
<code>oracleRegion</code></br>
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
<code>metricsPollingFrequency</code></br>
<em>
string
</em>
</td>
<td>
<p>OCI Metrics Polling Frequency</p>
</td>
</tr>
<tr>
<td>
<code>metricsNamespace</code></br>
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
<code>metricsQuery</code></br>
<em>
string
</em>
</td>
<td>
<p>OCI Metrics Query See <a href="https://docs.cloud.oracle.com/en-us/iaas/api/#/en/monitoring/20180401/MetricData">https://docs.cloud.oracle.com/en-us/iaas/api/#/en/monitoring/20180401/MetricData</a></p>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.SalesforceAuth">SalesforceAuth
</h3>
<p>
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.SalesforceSourceSpec">SalesforceSourceSpec</a>)
</p>
<p>
<p>SalesforceAuth contains Salesforce credentials.</p>
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
<code>clientID</code></br>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>server</code></br>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>user</code></br>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>certKey</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
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
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.SalesforceSource">SalesforceSource</a>)
</p>
<p>
<p>SalesforceSourceSpec defines the desired state of the event source.</p>
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
</td>
</tr>
<tr>
<td>
<code>auth</code></br>
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
<code>apiVersion</code></br>
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
<code>subscription</code></br>
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
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.SalesforceSourceSpec">SalesforceSourceSpec</a>)
</p>
<p>
<p>SalesforceSubscription to connect to.</p>
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
<code>channel</code></br>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>replayID</code></br>
<em>
int
</em>
</td>
<td>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.SecretValueFromSource">SecretValueFromSource
</h3>
<p>
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.AzureBlobStorageSourceSpec">AzureBlobStorageSourceSpec</a>, 
<a href="#sources.triggermesh.io/v1alpha1.OCIMetricsSourceSpec">OCIMetricsSourceSpec</a>, 
<a href="#sources.triggermesh.io/v1alpha1.SalesforceAuth">SalesforceAuth</a>)
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
<h3 id="sources.triggermesh.io/v1alpha1.ValueFromField">ValueFromField
</h3>
<p>
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.AzureServicePrincipal">AzureServicePrincipal</a>)
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
</tbody>
</table>
<hr/>
<p><em>
Generated with <code>gen-crd-api-reference-docs</code>
on git commit <code>aece0a5</code>.
</em></p>
