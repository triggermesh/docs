<style>
.bs-sidebar {
display: none;
}
</style>
<p>Package:</p>
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
<a href="#sources.triggermesh.io/v1alpha1.AWSEventBridgeSource">AWSEventBridgeSource</a>
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
<a href="#sources.triggermesh.io/v1alpha1.AzureServiceBusTopicSource">AzureServiceBusTopicSource</a>
</li><li>
<a href="#sources.triggermesh.io/v1alpha1.CloudEventsSource">CloudEventsSource</a>
</li><li>
<a href="#sources.triggermesh.io/v1alpha1.GoogleCloudAuditLogsSource">GoogleCloudAuditLogsSource</a>
</li><li>
<a href="#sources.triggermesh.io/v1alpha1.GoogleCloudBillingSource">GoogleCloudBillingSource</a>
</li><li>
<a href="#sources.triggermesh.io/v1alpha1.GoogleCloudIoTSource">GoogleCloudIoTSource</a>
</li><li>
<a href="#sources.triggermesh.io/v1alpha1.GoogleCloudPubSubSource">GoogleCloudPubSubSource</a>
</li><li>
<a href="#sources.triggermesh.io/v1alpha1.GoogleCloudSourceRepositoriesSource">GoogleCloudSourceRepositoriesSource</a>
</li><li>
<a href="#sources.triggermesh.io/v1alpha1.GoogleCloudStorageSource">GoogleCloudStorageSource</a>
</li><li>
<a href="#sources.triggermesh.io/v1alpha1.HTTPPollerSource">HTTPPollerSource</a>
</li><li>
<a href="#sources.triggermesh.io/v1alpha1.IBMMQSource">IBMMQSource</a>
</li><li>
<a href="#sources.triggermesh.io/v1alpha1.KafkaSource">KafkaSource</a>
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
<p>
<p>AWSCloudWatchLogsSource is the Schema for the event source.</p>
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
<td><code>AWSCloudWatchLogsSource</code></td>
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
</td>
</tr>
<tr>
<td>
<code>arn</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis#ARN">
github.com/triggermesh/triggermesh/pkg/apis.ARN
</a>
</em>
</td>
<td>
<p>ARN of the Log Group to source data from.
<a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazoncloudwatchlogs.html#amazoncloudwatchlogs-resources-for-iam-policies">https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazoncloudwatchlogs.html#amazoncloudwatchlogs-resources-for-iam-policies</a></p>
</td>
</tr>
<tr>
<td>
<code>pollingInterval</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis#Duration">
github.com/triggermesh/triggermesh/pkg/apis.Duration
</a>
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
<code>auth</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AWSAuth">
AWSAuth
</a>
</em>
</td>
<td>
<p>Authentication method to interact with the Amazon CloudWatch Logs API.</p>
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
<h3 id="sources.triggermesh.io/v1alpha1.AWSCloudWatchSource">AWSCloudWatchSource
</h3>
<p>
<p>AWSCloudWatchSource is the Schema for the event source.</p>
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
<td><code>AWSCloudWatchSource</code></td>
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
<p>Code of the AWS region to source metrics from.
Available region codes are documented at
<a href="https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints">https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints</a>.</p>
</td>
</tr>
<tr>
<td>
<code>pollingInterval</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis#Duration">
github.com/triggermesh/triggermesh/pkg/apis.Duration
</a>
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
<code>metricQueries</code></br>
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
<code>auth</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AWSAuth">
AWSAuth
</a>
</em>
</td>
<td>
<p>Authentication method to interact with the Amazon CloudWatch API.</p>
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
<h3 id="sources.triggermesh.io/v1alpha1.AWSCodeCommitSource">AWSCodeCommitSource
</h3>
<p>
<p>AWSCodeCommitSource is the Schema for the event source.</p>
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
<td><code>AWSCodeCommitSource</code></td>
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
</td>
</tr>
<tr>
<td>
<code>arn</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis#ARN">
github.com/triggermesh/triggermesh/pkg/apis.ARN
</a>
</em>
</td>
<td>
<p>Repository ARN
<a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awscodecommit.html#awscodecommit-resources-for-iam-policies">https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awscodecommit.html#awscodecommit-resources-for-iam-policies</a></p>
</td>
</tr>
<tr>
<td>
<code>branch</code></br>
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
<code>eventTypes</code></br>
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
<code>auth</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AWSAuth">
AWSAuth
</a>
</em>
</td>
<td>
<p>Authentication method to interact with the Amazon CodeCommit API.</p>
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
<h3 id="sources.triggermesh.io/v1alpha1.AWSCognitoIdentitySource">AWSCognitoIdentitySource
</h3>
<p>
<p>AWSCognitoIdentitySource is the Schema for the event source.</p>
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
<td><code>AWSCognitoIdentitySource</code></td>
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
</td>
</tr>
<tr>
<td>
<code>arn</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis#ARN">
github.com/triggermesh/triggermesh/pkg/apis.ARN
</a>
</em>
</td>
<td>
<p>Identity Pool ARN
<a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazoncognitoidentity.html#amazoncognitoidentity-resources-for-iam-policies">https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazoncognitoidentity.html#amazoncognitoidentity-resources-for-iam-policies</a></p>
</td>
</tr>
<tr>
<td>
<code>auth</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AWSAuth">
AWSAuth
</a>
</em>
</td>
<td>
<p>Authentication method to interact with the Amazon Cognito API.</p>
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
<h3 id="sources.triggermesh.io/v1alpha1.AWSCognitoUserPoolSource">AWSCognitoUserPoolSource
</h3>
<p>
<p>AWSCognitoUserPoolSource is the Schema for the event source.</p>
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
<td><code>AWSCognitoUserPoolSource</code></td>
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
</td>
</tr>
<tr>
<td>
<code>arn</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis#ARN">
github.com/triggermesh/triggermesh/pkg/apis.ARN
</a>
</em>
</td>
<td>
<p>User Pool ARN
<a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazoncognitouserpools.html#amazoncognitouserpools-resources-for-iam-policies">https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazoncognitouserpools.html#amazoncognitouserpools-resources-for-iam-policies</a></p>
</td>
</tr>
<tr>
<td>
<code>auth</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AWSAuth">
AWSAuth
</a>
</em>
</td>
<td>
<p>Authentication method to interact with the Amazon Cognito API.</p>
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
<h3 id="sources.triggermesh.io/v1alpha1.AWSDynamoDBSource">AWSDynamoDBSource
</h3>
<p>
<p>AWSDynamoDBSource is the Schema for the event source.</p>
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
<td><code>AWSDynamoDBSource</code></td>
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
</td>
</tr>
<tr>
<td>
<code>arn</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis#ARN">
github.com/triggermesh/triggermesh/pkg/apis.ARN
</a>
</em>
</td>
<td>
<p>Table ARN
<a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazondynamodb.html#amazondynamodb-resources-for-iam-policies">https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazondynamodb.html#amazondynamodb-resources-for-iam-policies</a></p>
</td>
</tr>
<tr>
<td>
<code>auth</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AWSAuth">
AWSAuth
</a>
</em>
</td>
<td>
<p>Authentication method to interact with the Amazon DynamoDB API.</p>
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
<h3 id="sources.triggermesh.io/v1alpha1.AWSEventBridgeSource">AWSEventBridgeSource
</h3>
<p>
<p>AWSEventBridgeSource is the Schema for the event source.</p>
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
<td><code>AWSEventBridgeSource</code></td>
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
<a href="#sources.triggermesh.io/v1alpha1.AWSEventBridgeSourceSpec">
AWSEventBridgeSourceSpec
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
<code>arn</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis#ARN">
github.com/triggermesh/triggermesh/pkg/apis.ARN
</a>
</em>
</td>
<td>
<p>EventBridge event bus ARN
<a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazoneventbridge.html#amazoneventbridge-resources-for-iam-policies">https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazoneventbridge.html#amazoneventbridge-resources-for-iam-policies</a></p>
</td>
</tr>
<tr>
<td>
<code>eventPattern</code></br>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
<p>Event pattern used to select events that this source should subscribe to.
If not specified, the event rule is created with a catch-all pattern.
<a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-event-patterns.html">https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-event-patterns.html</a></p>
</td>
</tr>
<tr>
<td>
<code>destination</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AWSEventBridgeSourceDestination">
AWSEventBridgeSourceDestination
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>The intermediate destination of notifications originating from the
Amazon EventBridge event bus, before they are retrieved by this
event source.
If omitted, an Amazon SQS queue is automatically created and
associated with the EventBridge event rule.</p>
</td>
</tr>
<tr>
<td>
<code>auth</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AWSAuth">
AWSAuth
</a>
</em>
</td>
<td>
<p>Authentication method to interact with the Amazon S3 and SQS APIs.</p>
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
<a href="#sources.triggermesh.io/v1alpha1.AWSEventBridgeSourceStatus">
AWSEventBridgeSourceStatus
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
<p>
<p>AWSKinesisSource is the Schema for the event source.</p>
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
<td><code>AWSKinesisSource</code></td>
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
</td>
</tr>
<tr>
<td>
<code>arn</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis#ARN">
github.com/triggermesh/triggermesh/pkg/apis.ARN
</a>
</em>
</td>
<td>
<p>Stream ARN
<a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonkinesis.html#amazonkinesis-resources-for-iam-policies">https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonkinesis.html#amazonkinesis-resources-for-iam-policies</a></p>
</td>
</tr>
<tr>
<td>
<code>auth</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AWSAuth">
AWSAuth
</a>
</em>
</td>
<td>
<p>Authentication method to interact with the Amazon Kinesis API.</p>
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
<h3 id="sources.triggermesh.io/v1alpha1.AWSPerformanceInsightsSource">AWSPerformanceInsightsSource
</h3>
<p>
<p>AWSPerformanceInsightsSource is the Schema for the event source.</p>
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
<td><code>AWSPerformanceInsightsSource</code></td>
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
</td>
</tr>
<tr>
<td>
<code>arn</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis#ARN">
github.com/triggermesh/triggermesh/pkg/apis.ARN
</a>
</em>
</td>
<td>
<p>ARN of the RDS instance to receive metrics for.
<a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonrds.html#amazonrds-resources-for-iam-policies">https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonrds.html#amazonrds-resources-for-iam-policies</a></p>
</td>
</tr>
<tr>
<td>
<code>pollingInterval</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis#Duration">
github.com/triggermesh/triggermesh/pkg/apis.Duration
</a>
</em>
</td>
<td>
<p>Duration which defines how often metrics should be pulled from Amazon Performance Insights.
Expressed as a duration string, which format is documented at <a href="https://pkg.go.dev/time#ParseDuration">https://pkg.go.dev/time#ParseDuration</a>.</p>
</td>
</tr>
<tr>
<td>
<code>metrics</code></br>
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
<code>auth</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AWSAuth">
AWSAuth
</a>
</em>
</td>
<td>
<p>Authentication method to interact with the Amazon RDS and Performance Insights APIs.</p>
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
<h3 id="sources.triggermesh.io/v1alpha1.AWSS3Source">AWSS3Source
</h3>
<p>
<p>AWSS3Source is the Schema for the event source.</p>
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
<td><code>AWSS3Source</code></td>
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
</td>
</tr>
<tr>
<td>
<code>arn</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis#ARN">
github.com/triggermesh/triggermesh/pkg/apis.ARN
</a>
</em>
</td>
<td>
<p>Bucket ARN
<a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazons3.html#amazons3-resources-for-iam-policies">https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazons3.html#amazons3-resources-for-iam-policies</a></p>
<p>Although not technically supported by S3, the ARN provided via this
attribute may include a region and an account ID. When this
information is provided, it is used to set an accurate
identity-based access policy between the S3 bucket and the
reconciled SQS queue, unless an existing queue is provided via the
QueueARN attribute.</p>
</td>
</tr>
<tr>
<td>
<code>eventTypes</code></br>
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
<code>destination</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AWSS3SourceDestination">
AWSS3SourceDestination
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>The intermediate destination of notifications originating from the
Amazon S3 bucket, before they are retrieved by this event source.
If omitted, an Amazon SQS queue is automatically created and
associated with the bucket.</p>
</td>
</tr>
<tr>
<td>
<code>auth</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AWSAuth">
AWSAuth
</a>
</em>
</td>
<td>
<p>Authentication method to interact with the Amazon S3 and SQS APIs.</p>
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
<p>
<p>AWSSNSSource is the Schema for the event source.</p>
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
<td><code>AWSSNSSource</code></td>
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
</td>
</tr>
<tr>
<td>
<code>arn</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis#ARN">
github.com/triggermesh/triggermesh/pkg/apis.ARN
</a>
</em>
</td>
<td>
<p>Topic ARN
<a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonsns.html#amazonsns-resources-for-iam-policies">https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonsns.html#amazonsns-resources-for-iam-policies</a></p>
</td>
</tr>
<tr>
<td>
<code>subscriptionAttributes</code></br>
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
<code>auth</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AWSAuth">
AWSAuth
</a>
</em>
</td>
<td>
<p>Authentication method to interact with the Amazon SNS API.</p>
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
<p>
<p>AWSSQSSource is the Schema for the event source.</p>
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
<td><code>AWSSQSSource</code></td>
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
</td>
</tr>
<tr>
<td>
<code>arn</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis#ARN">
github.com/triggermesh/triggermesh/pkg/apis.ARN
</a>
</em>
</td>
<td>
<p>Queue ARN
<a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonsqs.html#amazonsqs-resources-for-iam-policies">https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonsqs.html#amazonsqs-resources-for-iam-policies</a></p>
</td>
</tr>
<tr>
<td>
<code>receiveOptions</code></br>
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
<code>messageProcessor</code></br>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
<p>Name of the message processor to use for converting SQS messages to CloudEvents.
Supported values are &ldquo;default&rdquo; and &ldquo;s3&rdquo;.</p>
</td>
</tr>
<tr>
<td>
<code>auth</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AWSAuth">
AWSAuth
</a>
</em>
</td>
<td>
<p>Authentication method to interact with the Amazon SQS API.</p>
</td>
</tr>
<tr>
<td>
<code>endpoint</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AWSEndpoint">
AWSEndpoint
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>Customizations of the AWS REST API endpoint.</p>
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
<code>subscriptionID</code></br>
<em>
string
</em>
</td>
<td>
<p>The ID of the Azure subscription which activity logs to subscribe to.</p>
</td>
</tr>
<tr>
<td>
<code>destination</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AzureActivityLogsSourceDestination">
AzureActivityLogsSourceDestination
</a>
</em>
</td>
<td>
<p>The intermediate destination of activity logs, before they are
retrieved by this event source.</p>
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
<p>Categories of Activity Logs to collect.</p>
<p>All available categories are selected when this attribute is empty.
<a href="https://docs.microsoft.com/en-us/azure/azure-monitor/platform/activity-log-schema#categories">https://docs.microsoft.com/en-us/azure/azure-monitor/platform/activity-log-schema#categories</a></p>
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
<code>storageAccountID</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AzureResourceID">
AzureResourceID
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
<code>eventTypes</code></br>
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
<code>endpoint</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AzureEventGridSourceEndpoint">
AzureEventGridSourceEndpoint
</a>
</em>
</td>
<td>
<p>The intermediate destination of events subscribed via Event Grid,
before they are retrieved by this event source.</p>
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
<p>Authentication method to interact with the Azure REST API.
This event source only supports the ServicePrincipal authentication.</p>
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
<p>
<p>AzureEventGridSource is the Schema for the event source.</p>
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
<td><code>AzureEventGridSource</code></td>
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
</td>
</tr>
<tr>
<td>
<code>scope</code></br>
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
<code>eventTypes</code></br>
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
<code>endpoint</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AzureEventGridSourceEndpoint">
AzureEventGridSourceEndpoint
</a>
</em>
</td>
<td>
<p>The intermediate destination of events subscribed via Event Grid,
before they are retrieved by this event source.</p>
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
<p>Authentication method to interact with the Azure REST API.
This event source only supports the ServicePrincipal authentication.</p>
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
<code>eventHubID</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AzureResourceID">
AzureResourceID
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
<h3 id="sources.triggermesh.io/v1alpha1.AzureIOTHubSource">AzureIOTHubSource
</h3>
<p>
<p>AzureIOTHubSource is the Schema for the event source.</p>
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
<td><code>AzureIOTHubSource</code></td>
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
<p>AzureAuth contains multiple authentication methods for Azure services.</p>
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
<h3 id="sources.triggermesh.io/v1alpha1.AzureQueueStorageSource">AzureQueueStorageSource
</h3>
<p>
<p>AzureQueueStorageSource is the Schema for the event source.</p>
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
<td><code>AzureQueueStorageSource</code></td>
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
</td>
</tr>
<tr>
<td>
<code>queueName</code></br>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>accountKey</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#ValueFromField">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.ValueFromField
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
<h3 id="sources.triggermesh.io/v1alpha1.AzureServiceBusQueueSource">AzureServiceBusQueueSource
</h3>
<p>
<p>AzureServiceBusQueueSource is the Schema for the event source.</p>
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
<td><code>AzureServiceBusQueueSource</code></td>
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
</td>
</tr>
<tr>
<td>
<code>queueID</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AzureResourceID">
AzureResourceID
</a>
</em>
</td>
<td>
<p>The resource ID the Service Bus Queue to subscribe to.</p>
<p>Expected format:
- /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ServiceBus/namespaces/{namespaceName}/queues/{queueName}</p>
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
<p>Authentication method to interact with Azure Service Bus.</p>
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
<h3 id="sources.triggermesh.io/v1alpha1.AzureServiceBusTopicSource">AzureServiceBusTopicSource
</h3>
<p>
<p>AzureServiceBusTopicSource is the Schema for the event source.</p>
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
<td><code>AzureServiceBusTopicSource</code></td>
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
<a href="#sources.triggermesh.io/v1alpha1.AzureServiceBusTopicSourceSpec">
AzureServiceBusTopicSourceSpec
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
<code>topicID</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AzureResourceID">
AzureResourceID
</a>
</em>
</td>
<td>
<p>The resource ID the Service Bus Topic to subscribe to.</p>
<p>Expected format:
- /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ServiceBus/namespaces/{namespaceName}/topics/{topicName}</p>
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
<p>Authentication method to interact with the Azure REST API.
This event source only supports the ServicePrincipal authentication.</p>
</td>
</tr>
<tr>
<td>
<code>webSocketsEnable</code></br>
<em>
bool
</em>
</td>
<td>
<em>(Optional)</em>
<p>WebSocketsEnable</p>
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
<a href="#sources.triggermesh.io/v1alpha1.AzureServiceBusTopicSourceStatus">
AzureServiceBusTopicSourceStatus
</a>
</em>
</td>
<td>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.CloudEventsSource">CloudEventsSource
</h3>
<p>
<p>CloudEventsSource is the Schema for the event source.</p>
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
<td><code>CloudEventsSource</code></td>
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
<a href="#sources.triggermesh.io/v1alpha1.CloudEventsSourceSpec">
CloudEventsSourceSpec
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
<code>credentials</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.HTTPCredentials">
HTTPCredentials
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>Credentials to connect to this source.</p>
</td>
</tr>
<tr>
<td>
<code>path</code></br>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
<p>Path under which requests are accepted.</p>
</td>
</tr>
<tr>
<td>
<code>rateLimiter</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.RateLimiter">
RateLimiter
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>RateLimiter for incoming events per adapter instance.
A single CloudEventsSource object can create multiple adapter instances,
the rate limiting configuration being applied to each of them individually.</p>
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
<h3 id="sources.triggermesh.io/v1alpha1.GoogleCloudAuditLogsSource">GoogleCloudAuditLogsSource
</h3>
<p>
<p>GoogleCloudAuditLogsSource is the Schema for the event source.</p>
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
<td><code>GoogleCloudAuditLogsSource</code></td>
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
</td>
</tr>
<tr>
<td>
<code>serviceName</code></br>
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
<code>methodName</code></br>
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
<code>resourceName</code></br>
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
<code>pubsub</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.GoogleCloudSourcePubSubSpec">
GoogleCloudSourcePubSubSpec
</a>
</em>
</td>
<td>
<p>Settings related to the Pub/Sub resources associated with the Audit Logs event sink.</p>
</td>
</tr>
<tr>
<td>
<code>serviceAccountKey</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#ValueFromField">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.ValueFromField
</a>
</em>
</td>
<td>
<p>Service account key in JSON format.
<a href="https://cloud.google.com/iam/docs/creating-managing-service-account-keys">https://cloud.google.com/iam/docs/creating-managing-service-account-keys</a></p>
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
<p>
<p>GoogleCloudBillingSource is the Schema for the event source.</p>
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
<td><code>GoogleCloudBillingSource</code></td>
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
</td>
</tr>
<tr>
<td>
<code>billingAccountId</code></br>
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
<code>budgetId</code></br>
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
<code>pubsub</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.GoogleCloudSourcePubSubSpec">
GoogleCloudSourcePubSubSpec
</a>
</em>
</td>
<td>
<p>Settings related to the Pub/Sub resources associated with the Billing budget event sink.</p>
</td>
</tr>
<tr>
<td>
<code>serviceAccountKey</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#ValueFromField">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.ValueFromField
</a>
</em>
</td>
<td>
<p>Service account key in JSON format.
<a href="https://cloud.google.com/iam/docs/creating-managing-service-account-keys">https://cloud.google.com/iam/docs/creating-managing-service-account-keys</a></p>
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
<h3 id="sources.triggermesh.io/v1alpha1.GoogleCloudIoTSource">GoogleCloudIoTSource
</h3>
<p>
<p>GoogleCloudIoTSource is the Schema for the event source.</p>
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
<td><code>GoogleCloudIoTSource</code></td>
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
<a href="#sources.triggermesh.io/v1alpha1.GoogleCloudIoTSourceSpec">
GoogleCloudIoTSourceSpec
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
<code>registry</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.GCloudIoTResourceName">
GCloudIoTResourceName
</a>
</em>
</td>
<td>
<p>Resource name of the Cloud IoT Registry to receive messages from.</p>
</td>
</tr>
<tr>
<td>
<code>pubsub</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.GoogleCloudSourcePubSubSpec">
GoogleCloudSourcePubSubSpec
</a>
</em>
</td>
<td>
<p>Settings related to the Pub/Sub resources associated with the Cloud IoT Registry.</p>
</td>
</tr>
<tr>
<td>
<code>serviceAccountKey</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#ValueFromField">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.ValueFromField
</a>
</em>
</td>
<td>
<p>Service account key in JSON format.
<a href="https://cloud.google.com/iam/docs/creating-managing-service-account-keys">https://cloud.google.com/iam/docs/creating-managing-service-account-keys</a></p>
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
<a href="#sources.triggermesh.io/v1alpha1.GoogleCloudIoTSourceStatus">
GoogleCloudIoTSourceStatus
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
<p>
<p>GoogleCloudPubSubSource is the Schema for the event source.</p>
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
<td><code>GoogleCloudPubSubSource</code></td>
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
</td>
</tr>
<tr>
<td>
<code>topic</code></br>
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
<code>subscriptionID</code></br>
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
<code>serviceAccountKey</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#ValueFromField">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.ValueFromField
</a>
</em>
</td>
<td>
<p>Service account key in JSON format.
<a href="https://cloud.google.com/iam/docs/creating-managing-service-account-keys">https://cloud.google.com/iam/docs/creating-managing-service-account-keys</a></p>
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
<h3 id="sources.triggermesh.io/v1alpha1.GoogleCloudSourceRepositoriesSource">GoogleCloudSourceRepositoriesSource
</h3>
<p>
<p>GoogleCloudSourceRepositoriesSource is the Schema for the event source.</p>
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
<td><code>GoogleCloudSourceRepositoriesSource</code></td>
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
<a href="#sources.triggermesh.io/v1alpha1.GoogleCloudSourceRepositoriesSourceSpec">
GoogleCloudSourceRepositoriesSourceSpec
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
<code>repository</code></br>
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
<code>pubsub</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.GoogleCloudSourcePubSubSpec">
GoogleCloudSourcePubSubSpec
</a>
</em>
</td>
<td>
<p>Settings related to the Pub/Sub resources associated with the repo events.</p>
</td>
</tr>
<tr>
<td>
<code>publishServiceAccount</code></br>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
<p>Email address of the service account used for publishing
notifications to Pub/Sub. This service account needs to be in the
same project as the repo, and to have the &lsquo;pubsub.topics.publish&rsquo;
IAM permission associated with it. It can (but doesn&rsquo;t have to) be
the same service account as the &lsquo;ServiceAccountKey&rsquo; attribute.</p>
<p>If unspecified, it defaults to the Compute Engine default service
account.</p>
</td>
</tr>
<tr>
<td>
<code>serviceAccountKey</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#ValueFromField">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.ValueFromField
</a>
</em>
</td>
<td>
<p>Service account key in JSON format.
<a href="https://cloud.google.com/iam/docs/creating-managing-service-account-keys">https://cloud.google.com/iam/docs/creating-managing-service-account-keys</a></p>
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
<a href="#sources.triggermesh.io/v1alpha1.GoogleCloudSourceRepositoriesSourceStatus">
GoogleCloudSourceRepositoriesSourceStatus
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
<p>
<p>GoogleCloudStorageSource is the Schema for the event source.</p>
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
<td><code>GoogleCloudStorageSource</code></td>
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
</td>
</tr>
<tr>
<td>
<code>bucket</code></br>
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
<code>pubsub</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.GoogleCloudSourcePubSubSpec">
GoogleCloudSourcePubSubSpec
</a>
</em>
</td>
<td>
<p>Settings related to the Pub/Sub resources associated with the bucket.</p>
</td>
</tr>
<tr>
<td>
<code>eventTypes</code></br>
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
<code>serviceAccountKey</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#ValueFromField">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.ValueFromField
</a>
</em>
</td>
<td>
<p>Service account key in JSON format.
<a href="https://cloud.google.com/iam/docs/creating-managing-service-account-keys">https://cloud.google.com/iam/docs/creating-managing-service-account-keys</a></p>
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
<p>
<p>HTTPPollerSource is the schema for the event source.</p>
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
<td><code>HTTPPollerSource</code></td>
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
<p>inherits duck/v1 SourceSpec, which currently provides:
* Sink - a reference to an object that will resolve to a domain name or
a URI directly to use as the sink.
* CloudEventOverrides - defines overrides to control the output format
and modifications of the event sent to the sink.</p>
</td>
</tr>
<tr>
<td>
<code>eventType</code></br>
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
<code>eventSource</code></br>
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
<code>endpoint</code></br>
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
<code>method</code></br>
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
<code>skipVerify</code></br>
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
<code>caCertificate</code></br>
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
<code>basicAuthUsername</code></br>
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
<code>basicAuthPassword</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#ValueFromField">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.ValueFromField
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
<code>headers</code></br>
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
<code>interval</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis#Duration">
github.com/triggermesh/triggermesh/pkg/apis.Duration
</a>
</em>
</td>
<td>
<p>Duration which defines how often the HTTP/S endpoint should be polled.
Expressed as a duration string, which format is documented at <a href="https://pkg.go.dev/time#ParseDuration">https://pkg.go.dev/time#ParseDuration</a>.</p>
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
<h3 id="sources.triggermesh.io/v1alpha1.IBMMQSource">IBMMQSource
</h3>
<p>
<p>IBMMQSource is the Schema the event source.</p>
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
<td><code>IBMMQSource</code></td>
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
<a href="#sources.triggermesh.io/v1alpha1.IBMMQSourceSpec">
IBMMQSourceSpec
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
<code>connectionName</code></br>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>queueManager</code></br>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>queueName</code></br>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>channelName</code></br>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>delivery</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.Delivery">
Delivery
</a>
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>credentials</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.Credentials">
Credentials
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
<h3 id="sources.triggermesh.io/v1alpha1.KafkaSource">KafkaSource
</h3>
<p>
<p>KafkaSource is the Schema for the KafkaSource.</p>
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
<td><code>KafkaSource</code></td>
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
<a href="#sources.triggermesh.io/v1alpha1.KafkaSourceSpec">
KafkaSourceSpec
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
<code>bootstrapServers</code></br>
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
<code>topics</code></br>
<em>
[]string
</em>
</td>
<td>
<p>Topics holds the name of the Kafka Topics.</p>
</td>
</tr>
<tr>
<td>
<code>groupID</code></br>
<em>
string
</em>
</td>
<td>
<p>GroupID holds the name of the Kafka Group ID.</p>
</td>
</tr>
<tr>
<td>
<code>auth</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.KafkaSourceAuth">
KafkaSourceAuth
</a>
</em>
</td>
<td>
<p>Auth contains Authentication method used to interact with Kafka.</p>
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
<code>oracleApiPrivateKey</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#ValueFromField">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.ValueFromField
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
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#ValueFromField">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.ValueFromField
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
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#ValueFromField">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.ValueFromField
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
<em>(Optional)</em>
<p>OCI Metrics Polling Frequency</p>
</td>
</tr>
<tr>
<td>
<code>metrics</code></br>
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
<h3 id="sources.triggermesh.io/v1alpha1.SlackSource">SlackSource
</h3>
<p>
<p>SlackSource is the schema for the event source.</p>
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
<td><code>SlackSource</code></td>
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
<p>inherits duck/v1 SourceSpec, which currently provides:
* Sink - a reference to an object that will resolve to a domain name or
a URI directly to use as the sink.
* CloudEventOverrides - defines overrides to control the output format
and modifications of the event sent to the sink.</p>
</td>
</tr>
<tr>
<td>
<code>signingSecret</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#ValueFromField">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.ValueFromField
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
<code>appID</code></br>
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
<h3 id="sources.triggermesh.io/v1alpha1.TwilioSource">TwilioSource
</h3>
<p>
<p>TwilioSource is the schema for the event source.</p>
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
<td><code>TwilioSource</code></td>
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
<h3 id="sources.triggermesh.io/v1alpha1.WebhookSource">WebhookSource
</h3>
<p>
<p>WebhookSource is the schema for the event source.</p>
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
<td><code>WebhookSource</code></td>
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
<p>inherits duck/v1 SourceSpec, which currently provides:
* Sink - a reference to an object that will resolve to a domain name or
a URI directly to use as the sink.
* CloudEventOverrides - defines overrides to control the output format
and modifications of the event sent to the sink.</p>
</td>
</tr>
<tr>
<td>
<code>eventType</code></br>
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
<code>eventSource</code></br>
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
<code>eventExtensionAttributes</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.WebhookEventExtensionAttributes">
WebhookEventExtensionAttributes
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>Options to transform HTTP request data into CloudEvent extensions.
<a href="https://github.com/cloudevents/spec/blob/main/cloudevents/spec.md#extension-context-attributes">https://github.com/cloudevents/spec/blob/main/cloudevents/spec.md#extension-context-attributes</a></p>
</td>
</tr>
<tr>
<td>
<code>basicAuthUsername</code></br>
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
<code>basicAuthPassword</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#ValueFromField">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.ValueFromField
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>Password HTTP clients must set to authenticate with the webhook using HTTP Basic authentication.</p>
</td>
</tr>
<tr>
<td>
<code>corsAllowOrigin</code></br>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
<p>Specifies the CORS Origin to use in pre-flight headers.</p>
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
<h3 id="sources.triggermesh.io/v1alpha1.ZendeskSource">ZendeskSource
</h3>
<p>
<p>ZendeskSource is the schema for the event source.</p>
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
<td><code>ZendeskSource</code></td>
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
<p>inherits duck/v1 SourceSpec, which currently provides:
* Sink - a reference to an object that will resolve to a domain name or
a URI directly to use as the sink.
* CloudEventOverrides - defines overrides to control the output format
and modifications of the event sent to the sink.</p>
</td>
</tr>
<tr>
<td>
<code>token</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#ValueFromField">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.ValueFromField
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
<code>email</code></br>
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
<code>webhookPassword</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#ValueFromField">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.ValueFromField
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
<code>webhookUsername</code></br>
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
<code>subdomain</code></br>
<em>
string
</em>
</td>
<td>
<p>Subdomain identifies Zendesk subdomain</p>
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
<h3 id="sources.triggermesh.io/v1alpha1.AWSAuth">AWSAuth
</h3>
<p>
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.AWSCloudWatchLogsSourceSpec">AWSCloudWatchLogsSourceSpec</a>, 
<a href="#sources.triggermesh.io/v1alpha1.AWSCloudWatchSourceSpec">AWSCloudWatchSourceSpec</a>, 
<a href="#sources.triggermesh.io/v1alpha1.AWSCodeCommitSourceSpec">AWSCodeCommitSourceSpec</a>, 
<a href="#sources.triggermesh.io/v1alpha1.AWSCognitoIdentitySourceSpec">AWSCognitoIdentitySourceSpec</a>, 
<a href="#sources.triggermesh.io/v1alpha1.AWSCognitoUserPoolSourceSpec">AWSCognitoUserPoolSourceSpec</a>, 
<a href="#sources.triggermesh.io/v1alpha1.AWSDynamoDBSourceSpec">AWSDynamoDBSourceSpec</a>, 
<a href="#sources.triggermesh.io/v1alpha1.AWSEventBridgeSourceSpec">AWSEventBridgeSourceSpec</a>, 
<a href="#sources.triggermesh.io/v1alpha1.AWSKinesisSourceSpec">AWSKinesisSourceSpec</a>, 
<a href="#sources.triggermesh.io/v1alpha1.AWSPerformanceInsightsSourceSpec">AWSPerformanceInsightsSourceSpec</a>, 
<a href="#sources.triggermesh.io/v1alpha1.AWSS3SourceSpec">AWSS3SourceSpec</a>, 
<a href="#sources.triggermesh.io/v1alpha1.AWSSNSSourceSpec">AWSSNSSourceSpec</a>, 
<a href="#sources.triggermesh.io/v1alpha1.AWSSQSSourceSpec">AWSSQSSourceSpec</a>)
</p>
<p>
<p>AWSAuth contains multiple authentication methods for AWS services.</p>
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
<code>credentials</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AWSSecurityCredentials">
AWSSecurityCredentials
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>Security credentials allow AWS to authenticate and authorize
requests based on a signature composed of an access key ID and a
corresponding secret access key.
See <a href="https://docs.aws.amazon.com/general/latest/gr/aws-security-credentials.html">https://docs.aws.amazon.com/general/latest/gr/aws-security-credentials.html</a></p>
</td>
</tr>
<tr>
<td>
<code>iamRole</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis#ARN">
github.com/triggermesh/triggermesh/pkg/apis.ARN
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>(Amazon EKS only) The ARN of an IAM role which can be impersonated
to obtain AWS permissions.
See <a href="https://docs.aws.amazon.com/eks/latest/userguide/iam-roles-for-service-accounts.html">https://docs.aws.amazon.com/eks/latest/userguide/iam-roles-for-service-accounts.html</a></p>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.AWSCloudWatchLogsSourceSpec">AWSCloudWatchLogsSourceSpec
</h3>
<p>
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.AWSCloudWatchLogsSource">AWSCloudWatchLogsSource</a>)
</p>
<p>
<p>AWSCloudWatchLogsSourceSpec defines the desired state of the event source.</p>
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
<code>arn</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis#ARN">
github.com/triggermesh/triggermesh/pkg/apis.ARN
</a>
</em>
</td>
<td>
<p>ARN of the Log Group to source data from.
<a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazoncloudwatchlogs.html#amazoncloudwatchlogs-resources-for-iam-policies">https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazoncloudwatchlogs.html#amazoncloudwatchlogs-resources-for-iam-policies</a></p>
</td>
</tr>
<tr>
<td>
<code>pollingInterval</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis#Duration">
github.com/triggermesh/triggermesh/pkg/apis.Duration
</a>
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
<code>auth</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AWSAuth">
AWSAuth
</a>
</em>
</td>
<td>
<p>Authentication method to interact with the Amazon CloudWatch Logs API.</p>
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
<h3 id="sources.triggermesh.io/v1alpha1.AWSCloudWatchMetric">AWSCloudWatchMetric
</h3>
<p>
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.AWSCloudWatchMetricStat">AWSCloudWatchMetricStat</a>)
</p>
<p>
<p>AWSCloudWatchMetric is a metric definition.</p>
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
<code>dimensions</code></br>
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
<code>metricName</code></br>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>namespace</code></br>
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
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.AWSCloudWatchMetric">AWSCloudWatchMetric</a>)
</p>
<p>
<p>AWSCloudWatchMetricDimension represents the dimensions of a metric.</p>
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
<h3 id="sources.triggermesh.io/v1alpha1.AWSCloudWatchMetricQuery">AWSCloudWatchMetricQuery
</h3>
<p>
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.AWSCloudWatchSourceSpec">AWSCloudWatchSourceSpec</a>)
</p>
<p>
<p>AWSCloudWatchMetricQuery represents a CloudWatch MetricDataQuery.
<a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_MetricDataQuery.html">https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_MetricDataQuery.html</a></p>
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
<p>Unique short name that identifies the query.</p>
</td>
</tr>
<tr>
<td>
<code>expression</code></br>
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
<code>metric</code></br>
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
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.AWSCloudWatchMetricQuery">AWSCloudWatchMetricQuery</a>)
</p>
<p>
<p>AWSCloudWatchMetricStat is a representation of a metric with statistics,
period, and units, but no math expression.</p>
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
<code>metric</code></br>
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
<code>period</code></br>
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
<code>stat</code></br>
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
<code>unit</code></br>
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
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.AWSCloudWatchSource">AWSCloudWatchSource</a>)
</p>
<p>
<p>AWSCloudWatchSourceSpec defines the desired state of the event source.</p>
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
<code>region</code></br>
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
<code>pollingInterval</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis#Duration">
github.com/triggermesh/triggermesh/pkg/apis.Duration
</a>
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
<code>metricQueries</code></br>
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
<code>auth</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AWSAuth">
AWSAuth
</a>
</em>
</td>
<td>
<p>Authentication method to interact with the Amazon CloudWatch API.</p>
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
<h3 id="sources.triggermesh.io/v1alpha1.AWSCodeCommitSourceSpec">AWSCodeCommitSourceSpec
</h3>
<p>
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.AWSCodeCommitSource">AWSCodeCommitSource</a>)
</p>
<p>
<p>AWSCodeCommitSourceSpec defines the desired state of the event source.</p>
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
<code>arn</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis#ARN">
github.com/triggermesh/triggermesh/pkg/apis.ARN
</a>
</em>
</td>
<td>
<p>Repository ARN
<a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awscodecommit.html#awscodecommit-resources-for-iam-policies">https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awscodecommit.html#awscodecommit-resources-for-iam-policies</a></p>
</td>
</tr>
<tr>
<td>
<code>branch</code></br>
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
<code>eventTypes</code></br>
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
<code>auth</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AWSAuth">
AWSAuth
</a>
</em>
</td>
<td>
<p>Authentication method to interact with the Amazon CodeCommit API.</p>
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
<h3 id="sources.triggermesh.io/v1alpha1.AWSCognitoIdentitySourceSpec">AWSCognitoIdentitySourceSpec
</h3>
<p>
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.AWSCognitoIdentitySource">AWSCognitoIdentitySource</a>)
</p>
<p>
<p>AWSCognitoIdentitySourceSpec defines the desired state of the event source.</p>
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
<code>arn</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis#ARN">
github.com/triggermesh/triggermesh/pkg/apis.ARN
</a>
</em>
</td>
<td>
<p>Identity Pool ARN
<a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazoncognitoidentity.html#amazoncognitoidentity-resources-for-iam-policies">https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazoncognitoidentity.html#amazoncognitoidentity-resources-for-iam-policies</a></p>
</td>
</tr>
<tr>
<td>
<code>auth</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AWSAuth">
AWSAuth
</a>
</em>
</td>
<td>
<p>Authentication method to interact with the Amazon Cognito API.</p>
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
<h3 id="sources.triggermesh.io/v1alpha1.AWSCognitoUserPoolSourceSpec">AWSCognitoUserPoolSourceSpec
</h3>
<p>
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.AWSCognitoUserPoolSource">AWSCognitoUserPoolSource</a>)
</p>
<p>
<p>AWSCognitoUserPoolSourceSpec defines the desired state of the event source.</p>
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
<code>arn</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis#ARN">
github.com/triggermesh/triggermesh/pkg/apis.ARN
</a>
</em>
</td>
<td>
<p>User Pool ARN
<a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazoncognitouserpools.html#amazoncognitouserpools-resources-for-iam-policies">https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazoncognitouserpools.html#amazoncognitouserpools-resources-for-iam-policies</a></p>
</td>
</tr>
<tr>
<td>
<code>auth</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AWSAuth">
AWSAuth
</a>
</em>
</td>
<td>
<p>Authentication method to interact with the Amazon Cognito API.</p>
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
<h3 id="sources.triggermesh.io/v1alpha1.AWSDynamoDBSourceSpec">AWSDynamoDBSourceSpec
</h3>
<p>
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.AWSDynamoDBSource">AWSDynamoDBSource</a>)
</p>
<p>
<p>AWSDynamoDBSourceSpec defines the desired state of the event source.</p>
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
<code>arn</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis#ARN">
github.com/triggermesh/triggermesh/pkg/apis.ARN
</a>
</em>
</td>
<td>
<p>Table ARN
<a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazondynamodb.html#amazondynamodb-resources-for-iam-policies">https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazondynamodb.html#amazondynamodb-resources-for-iam-policies</a></p>
</td>
</tr>
<tr>
<td>
<code>auth</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AWSAuth">
AWSAuth
</a>
</em>
</td>
<td>
<p>Authentication method to interact with the Amazon DynamoDB API.</p>
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
<h3 id="sources.triggermesh.io/v1alpha1.AWSEndpoint">AWSEndpoint
</h3>
<p>
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.AWSSQSSourceSpec">AWSSQSSourceSpec</a>)
</p>
<p>
<p>AWSEndpoint contains parameters which are used to override the destination
of REST API calls to AWS services.
It allows, for example, to target API-compatible alternatives to the public
AWS cloud (Localstack, Minio, ElasticMQ, &hellip;).</p>
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
<a href="https://pkg.go.dev/knative.dev/pkg/apis#URL">
knative.dev/pkg/apis.URL
</a>
</em>
</td>
<td>
<p>URL of the endpoint.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.AWSEventBridgeSourceDestination">AWSEventBridgeSourceDestination
</h3>
<p>
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.AWSEventBridgeSourceSpec">AWSEventBridgeSourceSpec</a>)
</p>
<p>
<p>AWSEventBridgeSourceDestination contains possible intermediate destinations
for the event bus&rsquo; events.</p>
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
<code>sqs</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AWSEventBridgeSourceDestinationSQS">
AWSEventBridgeSourceDestinationSQS
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>Amazon SQS destination.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.AWSEventBridgeSourceDestinationSQS">AWSEventBridgeSourceDestinationSQS
</h3>
<p>
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.AWSEventBridgeSourceDestination">AWSEventBridgeSourceDestination</a>)
</p>
<p>
<p>AWSEventBridgeSourceDestinationSQS contains properties of an Amazon SQS
queue to use as destination for the event bus&rsquo; events.</p>
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
<code>queueARN</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis#ARN">
github.com/triggermesh/triggermesh/pkg/apis.ARN
</a>
</em>
</td>
<td>
<p>SQS Queue ARN
<a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonsqs.html#amazonsqs-resources-for-iam-policies">https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonsqs.html#amazonsqs-resources-for-iam-policies</a></p>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.AWSEventBridgeSourceSpec">AWSEventBridgeSourceSpec
</h3>
<p>
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.AWSEventBridgeSource">AWSEventBridgeSource</a>)
</p>
<p>
<p>AWSEventBridgeSourceSpec defines the desired state of the event source.</p>
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
<code>arn</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis#ARN">
github.com/triggermesh/triggermesh/pkg/apis.ARN
</a>
</em>
</td>
<td>
<p>EventBridge event bus ARN
<a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazoneventbridge.html#amazoneventbridge-resources-for-iam-policies">https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazoneventbridge.html#amazoneventbridge-resources-for-iam-policies</a></p>
</td>
</tr>
<tr>
<td>
<code>eventPattern</code></br>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
<p>Event pattern used to select events that this source should subscribe to.
If not specified, the event rule is created with a catch-all pattern.
<a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-event-patterns.html">https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-event-patterns.html</a></p>
</td>
</tr>
<tr>
<td>
<code>destination</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AWSEventBridgeSourceDestination">
AWSEventBridgeSourceDestination
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>The intermediate destination of notifications originating from the
Amazon EventBridge event bus, before they are retrieved by this
event source.
If omitted, an Amazon SQS queue is automatically created and
associated with the EventBridge event rule.</p>
</td>
</tr>
<tr>
<td>
<code>auth</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AWSAuth">
AWSAuth
</a>
</em>
</td>
<td>
<p>Authentication method to interact with the Amazon S3 and SQS APIs.</p>
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
<h3 id="sources.triggermesh.io/v1alpha1.AWSEventBridgeSourceStatus">AWSEventBridgeSourceStatus
</h3>
<p>
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.AWSEventBridgeSource">AWSEventBridgeSource</a>)
</p>
<p>
<p>AWSEventBridgeSourceStatus defines the observed state of the event source.</p>
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
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#Status">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.Status
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
<code>ruleARN</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis#ARN">
github.com/triggermesh/triggermesh/pkg/apis.ARN
</a>
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>queueARN</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis#ARN">
github.com/triggermesh/triggermesh/pkg/apis.ARN
</a>
</em>
</td>
<td>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.AWSKinesisSourceSpec">AWSKinesisSourceSpec
</h3>
<p>
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.AWSKinesisSource">AWSKinesisSource</a>)
</p>
<p>
<p>AWSKinesisSourceSpec defines the desired state of the event source.</p>
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
<code>arn</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis#ARN">
github.com/triggermesh/triggermesh/pkg/apis.ARN
</a>
</em>
</td>
<td>
<p>Stream ARN
<a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonkinesis.html#amazonkinesis-resources-for-iam-policies">https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonkinesis.html#amazonkinesis-resources-for-iam-policies</a></p>
</td>
</tr>
<tr>
<td>
<code>auth</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AWSAuth">
AWSAuth
</a>
</em>
</td>
<td>
<p>Authentication method to interact with the Amazon Kinesis API.</p>
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
<h3 id="sources.triggermesh.io/v1alpha1.AWSPerformanceInsightsSourceSpec">AWSPerformanceInsightsSourceSpec
</h3>
<p>
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.AWSPerformanceInsightsSource">AWSPerformanceInsightsSource</a>)
</p>
<p>
<p>AWSPerformanceInsightsSourceSpec defines the desired state of the event source.</p>
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
<code>arn</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis#ARN">
github.com/triggermesh/triggermesh/pkg/apis.ARN
</a>
</em>
</td>
<td>
<p>ARN of the RDS instance to receive metrics for.
<a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonrds.html#amazonrds-resources-for-iam-policies">https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonrds.html#amazonrds-resources-for-iam-policies</a></p>
</td>
</tr>
<tr>
<td>
<code>pollingInterval</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis#Duration">
github.com/triggermesh/triggermesh/pkg/apis.Duration
</a>
</em>
</td>
<td>
<p>Duration which defines how often metrics should be pulled from Amazon Performance Insights.
Expressed as a duration string, which format is documented at <a href="https://pkg.go.dev/time#ParseDuration">https://pkg.go.dev/time#ParseDuration</a>.</p>
</td>
</tr>
<tr>
<td>
<code>metrics</code></br>
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
<code>auth</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AWSAuth">
AWSAuth
</a>
</em>
</td>
<td>
<p>Authentication method to interact with the Amazon RDS and Performance Insights APIs.</p>
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
<h3 id="sources.triggermesh.io/v1alpha1.AWSS3SourceDestination">AWSS3SourceDestination
</h3>
<p>
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.AWSS3SourceSpec">AWSS3SourceSpec</a>)
</p>
<p>
<p>AWSS3SourceDestination contains possible intermediate destinations for
bucket notifications.</p>
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
<code>sqs</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AWSS3SourceDestinationSQS">
AWSS3SourceDestinationSQS
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>Amazon SQS destination.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.AWSS3SourceDestinationSQS">AWSS3SourceDestinationSQS
</h3>
<p>
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.AWSS3SourceDestination">AWSS3SourceDestination</a>)
</p>
<p>
<p>AWSS3SourceDestinationSQS contains properties of an Amazon SQS queue to use
as destination for bucket notifications.</p>
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
<code>queueARN</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis#ARN">
github.com/triggermesh/triggermesh/pkg/apis.ARN
</a>
</em>
</td>
<td>
<p>SQS Queue ARN
<a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonsqs.html#amazonsqs-resources-for-iam-policies">https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonsqs.html#amazonsqs-resources-for-iam-policies</a></p>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.AWSS3SourceSpec">AWSS3SourceSpec
</h3>
<p>
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.AWSS3Source">AWSS3Source</a>)
</p>
<p>
<p>AWSS3SourceSpec defines the desired state of the event source.</p>
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
<code>arn</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis#ARN">
github.com/triggermesh/triggermesh/pkg/apis.ARN
</a>
</em>
</td>
<td>
<p>Bucket ARN
<a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazons3.html#amazons3-resources-for-iam-policies">https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazons3.html#amazons3-resources-for-iam-policies</a></p>
<p>Although not technically supported by S3, the ARN provided via this
attribute may include a region and an account ID. When this
information is provided, it is used to set an accurate
identity-based access policy between the S3 bucket and the
reconciled SQS queue, unless an existing queue is provided via the
QueueARN attribute.</p>
</td>
</tr>
<tr>
<td>
<code>eventTypes</code></br>
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
<code>destination</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AWSS3SourceDestination">
AWSS3SourceDestination
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>The intermediate destination of notifications originating from the
Amazon S3 bucket, before they are retrieved by this event source.
If omitted, an Amazon SQS queue is automatically created and
associated with the bucket.</p>
</td>
</tr>
<tr>
<td>
<code>auth</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AWSAuth">
AWSAuth
</a>
</em>
</td>
<td>
<p>Authentication method to interact with the Amazon S3 and SQS APIs.</p>
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
<h3 id="sources.triggermesh.io/v1alpha1.AWSS3SourceStatus">AWSS3SourceStatus
</h3>
<p>
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.AWSS3Source">AWSS3Source</a>)
</p>
<p>
<p>AWSS3SourceStatus defines the observed state of the event source.</p>
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
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#Status">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.Status
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
<code>queueARN</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis#ARN">
github.com/triggermesh/triggermesh/pkg/apis.ARN
</a>
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
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.AWSSNSSource">AWSSNSSource</a>)
</p>
<p>
<p>AWSSNSSourceSpec defines the desired state of the event source.</p>
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
<code>arn</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis#ARN">
github.com/triggermesh/triggermesh/pkg/apis.ARN
</a>
</em>
</td>
<td>
<p>Topic ARN
<a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonsns.html#amazonsns-resources-for-iam-policies">https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonsns.html#amazonsns-resources-for-iam-policies</a></p>
</td>
</tr>
<tr>
<td>
<code>subscriptionAttributes</code></br>
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
<code>auth</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AWSAuth">
AWSAuth
</a>
</em>
</td>
<td>
<p>Authentication method to interact with the Amazon SNS API.</p>
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
<h3 id="sources.triggermesh.io/v1alpha1.AWSSNSSourceStatus">AWSSNSSourceStatus
</h3>
<p>
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.AWSSNSSource">AWSSNSSource</a>)
</p>
<p>
<p>AWSSNSSourceStatus defines the observed state of the event source.</p>
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
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#Status">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.Status
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
<code>subscriptionARN</code></br>
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
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.AWSSQSSourceSpec">AWSSQSSourceSpec</a>)
</p>
<p>
<p>AWSSQSSourceReceiveOptions defines options that control the behavior of
Amazon SQS message receivers.</p>
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
<code>visibilityTimeout</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis#Duration">
github.com/triggermesh/triggermesh/pkg/apis.Duration
</a>
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
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.AWSSQSSource">AWSSQSSource</a>)
</p>
<p>
<p>AWSSQSSourceSpec defines the desired state of the event source.</p>
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
<code>arn</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis#ARN">
github.com/triggermesh/triggermesh/pkg/apis.ARN
</a>
</em>
</td>
<td>
<p>Queue ARN
<a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonsqs.html#amazonsqs-resources-for-iam-policies">https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonsqs.html#amazonsqs-resources-for-iam-policies</a></p>
</td>
</tr>
<tr>
<td>
<code>receiveOptions</code></br>
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
<code>messageProcessor</code></br>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
<p>Name of the message processor to use for converting SQS messages to CloudEvents.
Supported values are &ldquo;default&rdquo; and &ldquo;s3&rdquo;.</p>
</td>
</tr>
<tr>
<td>
<code>auth</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AWSAuth">
AWSAuth
</a>
</em>
</td>
<td>
<p>Authentication method to interact with the Amazon SQS API.</p>
</td>
</tr>
<tr>
<td>
<code>endpoint</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AWSEndpoint">
AWSEndpoint
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>Customizations of the AWS REST API endpoint.</p>
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
<h3 id="sources.triggermesh.io/v1alpha1.AWSSecurityCredentials">AWSSecurityCredentials
</h3>
<p>
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.AWSAuth">AWSAuth</a>)
</p>
<p>
<p>AWSSecurityCredentials represents a set of AWS security credentials.</p>
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
<code>accessKeyID</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#ValueFromField">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.ValueFromField
</a>
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>secretAccessKey</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#ValueFromField">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.ValueFromField
</a>
</em>
</td>
<td>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.AzureActivityLogsSourceDestination">AzureActivityLogsSourceDestination
</h3>
<p>
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.AzureActivityLogsSourceSpec">AzureActivityLogsSourceSpec</a>)
</p>
<p>
<p>AzureActivityLogsSourceDestination contains possible intermediate
destinations for activity logs.</p>
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
<code>eventHubs</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AzureActivityLogsSourceDestinationEventHubs">
AzureActivityLogsSourceDestinationEventHubs
</a>
</em>
</td>
<td>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.AzureActivityLogsSourceDestinationEventHubs">AzureActivityLogsSourceDestinationEventHubs
</h3>
<p>
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.AzureActivityLogsSourceDestination">AzureActivityLogsSourceDestination</a>)
</p>
<p>
<p>AzureActivityLogsSourceDestinationEventHubs contains properties of an Event
Hubs namespace to use as intermediate destination for events.</p>
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
<code>namespaceID</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AzureResourceID">
AzureResourceID
</a>
</em>
</td>
<td>
<p>Resource ID of the Event Hubs namespace.</p>
<p>The expected format is
/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.EventHub/namespaces/{namespaceName}</p>
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
<em>(Optional)</em>
<p>Name of the Event Hubs instance within the selected namespace. If
omitted, Azure automatically creates an Event Hub with the name
&lsquo;insights-activity-logs&rsquo; inside the selected namespace.</p>
</td>
</tr>
<tr>
<td>
<code>sasPolicy</code></br>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
<p>Name of a SAS policy with Manage permissions inside the Event Hubs
namespace referenced in the EventHubID field.</p>
<p>Defaults to &ldquo;RootManageSharedAccessKey&rdquo;.</p>
<p>References:
* <a href="https://docs.microsoft.com/en-us/rest/api/eventhub/2017-04-01/authorization%20rules%20-%20namespaces/getauthorizationrule">https://docs.microsoft.com/en-us/rest/api/eventhub/2017-04-01/authorization%20rules%20-%20namespaces/getauthorizationrule</a>
* <a href="https://docs.microsoft.com/en-us/azure/event-hubs/authorize-access-shared-access-signature">https://docs.microsoft.com/en-us/azure/event-hubs/authorize-access-shared-access-signature</a></p>
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
<code>subscriptionID</code></br>
<em>
string
</em>
</td>
<td>
<p>The ID of the Azure subscription which activity logs to subscribe to.</p>
</td>
</tr>
<tr>
<td>
<code>destination</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AzureActivityLogsSourceDestination">
AzureActivityLogsSourceDestination
</a>
</em>
</td>
<td>
<p>The intermediate destination of activity logs, before they are
retrieved by this event source.</p>
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
<p>Categories of Activity Logs to collect.</p>
<p>All available categories are selected when this attribute is empty.
<a href="https://docs.microsoft.com/en-us/azure/azure-monitor/platform/activity-log-schema#categories">https://docs.microsoft.com/en-us/azure/azure-monitor/platform/activity-log-schema#categories</a></p>
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
<code>Status</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#Status">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.Status
</a>
</em>
</td>
<td>
<p>
(Members of <code>Status</code> are embedded into this type.)
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
<a href="#sources.triggermesh.io/v1alpha1.AzureBlobStorageSourceSpec">AzureBlobStorageSourceSpec</a>, 
<a href="#sources.triggermesh.io/v1alpha1.AzureEventGridSourceSpec">AzureEventGridSourceSpec</a>, 
<a href="#sources.triggermesh.io/v1alpha1.AzureEventHubSourceSpec">AzureEventHubSourceSpec</a>, 
<a href="#sources.triggermesh.io/v1alpha1.AzureIOTHubSourceSpec">AzureIOTHubSourceSpec</a>, 
<a href="#sources.triggermesh.io/v1alpha1.AzureServiceBusQueueSourceSpec">AzureServiceBusQueueSourceSpec</a>, 
<a href="#sources.triggermesh.io/v1alpha1.AzureServiceBusTopicSourceSpec">AzureServiceBusTopicSourceSpec</a>)
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
<code>storageAccountID</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AzureResourceID">
AzureResourceID
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
<code>eventTypes</code></br>
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
<code>endpoint</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AzureEventGridSourceEndpoint">
AzureEventGridSourceEndpoint
</a>
</em>
</td>
<td>
<p>The intermediate destination of events subscribed via Event Grid,
before they are retrieved by this event source.</p>
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
<p>Authentication method to interact with the Azure REST API.
This event source only supports the ServicePrincipal authentication.</p>
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
<h3 id="sources.triggermesh.io/v1alpha1.AzureBlobStorageSourceStatus">AzureBlobStorageSourceStatus
</h3>
<p>
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.AzureBlobStorageSource">AzureBlobStorageSource</a>)
</p>
<p>
<p>AzureBlobStorageSourceStatus defines the observed state of the event source.</p>
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
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#Status">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.Status
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
<code>eventHubID</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AzureResourceID">
AzureResourceID
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
<h3 id="sources.triggermesh.io/v1alpha1.AzureEventGridSourceDestinationEventHubs">AzureEventGridSourceDestinationEventHubs
</h3>
<p>
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.AzureEventGridSourceEndpoint">AzureEventGridSourceEndpoint</a>)
</p>
<p>
<p>AzureEventGridSourceDestinationEventHubs contains properties of an Event
Hubs namespace to use as intermediate destination for events.</p>
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
<code>namespaceID</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AzureResourceID">
AzureResourceID
</a>
</em>
</td>
<td>
<p>Resource ID of the Event Hubs namespace.</p>
<p>The expected format is
/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.EventHub/namespaces/{namespaceName}</p>
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
<em>(Optional)</em>
<p>Name of the Event Hubs instance within the selected namespace. If
omitted, an Event Hubs instance is created on behalf of the user.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.AzureEventGridSourceEndpoint">AzureEventGridSourceEndpoint
</h3>
<p>
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.AzureBlobStorageSourceSpec">AzureBlobStorageSourceSpec</a>, 
<a href="#sources.triggermesh.io/v1alpha1.AzureEventGridSourceSpec">AzureEventGridSourceSpec</a>)
</p>
<p>
<p>AzureEventGridSourceEndpoint contains possible intermediate destinations for events.</p>
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
<code>eventHubs</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AzureEventGridSourceDestinationEventHubs">
AzureEventGridSourceDestinationEventHubs
</a>
</em>
</td>
<td>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.AzureEventGridSourceSpec">AzureEventGridSourceSpec
</h3>
<p>
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.AzureEventGridSource">AzureEventGridSource</a>)
</p>
<p>
<p>AzureEventGridSourceSpec defines the desired state of the event source.</p>
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
<code>scope</code></br>
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
<code>eventTypes</code></br>
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
<code>endpoint</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AzureEventGridSourceEndpoint">
AzureEventGridSourceEndpoint
</a>
</em>
</td>
<td>
<p>The intermediate destination of events subscribed via Event Grid,
before they are retrieved by this event source.</p>
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
<p>Authentication method to interact with the Azure REST API.
This event source only supports the ServicePrincipal authentication.</p>
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
<h3 id="sources.triggermesh.io/v1alpha1.AzureEventGridSourceStatus">AzureEventGridSourceStatus
</h3>
<p>
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.AzureEventGridSource">AzureEventGridSource</a>)
</p>
<p>
<p>AzureEventGridSourceStatus defines the observed state of the event source.</p>
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
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#Status">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.Status
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
<code>eventSubscriptionID</code></br>
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
<code>eventHubID</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AzureResourceID">
AzureResourceID
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
<code>eventHubID</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AzureResourceID">
AzureResourceID
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
<h3 id="sources.triggermesh.io/v1alpha1.AzureIOTHubSourceSpec">AzureIOTHubSourceSpec
</h3>
<p>
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.AzureIOTHubSource">AzureIOTHubSource</a>)
</p>
<p>
<p>AzureIOTHubSourceSpec defines the desired state of the event source.</p>
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
<code>auth</code></br>
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
<h3 id="sources.triggermesh.io/v1alpha1.AzureQueueStorageSourceSpec">AzureQueueStorageSourceSpec
</h3>
<p>
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.AzureQueueStorageSource">AzureQueueStorageSource</a>)
</p>
<p>
<p>AzureQueueStorageSourceSpec defines the desired state of the event source.</p>
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
<code>accountName</code></br>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>queueName</code></br>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>accountKey</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#ValueFromField">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.ValueFromField
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
<h3 id="sources.triggermesh.io/v1alpha1.AzureResourceID">AzureResourceID
</h3>
<p>
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.AzureActivityLogsSourceDestinationEventHubs">AzureActivityLogsSourceDestinationEventHubs</a>, 
<a href="#sources.triggermesh.io/v1alpha1.AzureBlobStorageSourceSpec">AzureBlobStorageSourceSpec</a>, 
<a href="#sources.triggermesh.io/v1alpha1.AzureBlobStorageSourceStatus">AzureBlobStorageSourceStatus</a>, 
<a href="#sources.triggermesh.io/v1alpha1.AzureEventGridSourceDestinationEventHubs">AzureEventGridSourceDestinationEventHubs</a>, 
<a href="#sources.triggermesh.io/v1alpha1.AzureEventGridSourceSpec">AzureEventGridSourceSpec</a>, 
<a href="#sources.triggermesh.io/v1alpha1.AzureEventGridSourceStatus">AzureEventGridSourceStatus</a>, 
<a href="#sources.triggermesh.io/v1alpha1.AzureEventHubSourceSpec">AzureEventHubSourceSpec</a>, 
<a href="#sources.triggermesh.io/v1alpha1.AzureServiceBusQueueSourceSpec">AzureServiceBusQueueSourceSpec</a>, 
<a href="#sources.triggermesh.io/v1alpha1.AzureServiceBusTopicSourceSpec">AzureServiceBusTopicSourceSpec</a>, 
<a href="#sources.triggermesh.io/v1alpha1.AzureServiceBusTopicSourceStatus">AzureServiceBusTopicSourceStatus</a>)
</p>
<p>
<p>AzureResourceID represents a resource ID for an Azure resource.</p>
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
<code>ResourceProvider</code></br>
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
<code>ResourceType</code></br>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>ResourceName</code></br>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>SubResourceType</code></br>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>SubResourceName</code></br>
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
<p>AzureSASToken represents an Azure SAS token.</p>
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
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#ValueFromField">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.ValueFromField
</a>
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>keyValue</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#ValueFromField">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.ValueFromField
</a>
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>connectionString</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#ValueFromField">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.ValueFromField
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
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.AzureServiceBusQueueSource">AzureServiceBusQueueSource</a>)
</p>
<p>
<p>AzureServiceBusQueueSourceSpec defines the desired state of the event source.</p>
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
<code>queueID</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AzureResourceID">
AzureResourceID
</a>
</em>
</td>
<td>
<p>The resource ID the Service Bus Queue to subscribe to.</p>
<p>Expected format:
- /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ServiceBus/namespaces/{namespaceName}/queues/{queueName}</p>
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
<p>Authentication method to interact with Azure Service Bus.</p>
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
<h3 id="sources.triggermesh.io/v1alpha1.AzureServiceBusTopicSourceSpec">AzureServiceBusTopicSourceSpec
</h3>
<p>
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.AzureServiceBusTopicSource">AzureServiceBusTopicSource</a>)
</p>
<p>
<p>AzureServiceBusTopicSourceSpec defines the desired state of the event source.</p>
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
<code>topicID</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AzureResourceID">
AzureResourceID
</a>
</em>
</td>
<td>
<p>The resource ID the Service Bus Topic to subscribe to.</p>
<p>Expected format:
- /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ServiceBus/namespaces/{namespaceName}/topics/{topicName}</p>
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
<p>Authentication method to interact with the Azure REST API.
This event source only supports the ServicePrincipal authentication.</p>
</td>
</tr>
<tr>
<td>
<code>webSocketsEnable</code></br>
<em>
bool
</em>
</td>
<td>
<em>(Optional)</em>
<p>WebSocketsEnable</p>
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
<h3 id="sources.triggermesh.io/v1alpha1.AzureServiceBusTopicSourceStatus">AzureServiceBusTopicSourceStatus
</h3>
<p>
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.AzureServiceBusTopicSource">AzureServiceBusTopicSource</a>)
</p>
<p>
<p>AzureServiceBusTopicSourceStatus defines the observed state of the event source.</p>
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
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#Status">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.Status
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
<code>subscriptionID</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.AzureResourceID">
AzureResourceID
</a>
</em>
</td>
<td>
<p>Resource ID of the Service Bus Subscription that is currently used
by the event source for consuming events from the configured Service
Bus Topic.</p>
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
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#ValueFromField">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.ValueFromField
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
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#ValueFromField">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.ValueFromField
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
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#ValueFromField">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.ValueFromField
</a>
</em>
</td>
<td>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.CloudEventsSourceSpec">CloudEventsSourceSpec
</h3>
<p>
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.CloudEventsSource">CloudEventsSource</a>)
</p>
<p>
<p>CloudEventsSourceSpec defines the desired state of the event source.</p>
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
<code>credentials</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.HTTPCredentials">
HTTPCredentials
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>Credentials to connect to this source.</p>
</td>
</tr>
<tr>
<td>
<code>path</code></br>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
<p>Path under which requests are accepted.</p>
</td>
</tr>
<tr>
<td>
<code>rateLimiter</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.RateLimiter">
RateLimiter
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>RateLimiter for incoming events per adapter instance.
A single CloudEventsSource object can create multiple adapter instances,
the rate limiting configuration being applied to each of them individually.</p>
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
<h3 id="sources.triggermesh.io/v1alpha1.Credentials">Credentials
</h3>
<p>
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.IBMMQSourceSpec">IBMMQSourceSpec</a>)
</p>
<p>
<p>Credentials holds the auth details.</p>
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
<code>username</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#ValueFromField">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.ValueFromField
</a>
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>password</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#ValueFromField">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.ValueFromField
</a>
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>tls</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.TLSSpec">
TLSSpec
</a>
</em>
</td>
<td>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.Delivery">Delivery
</h3>
<p>
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.IBMMQSourceSpec">IBMMQSourceSpec</a>)
</p>
<p>
<p>Delivery defines the source&rsquo;s message delivery behavior.</p>
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
<code>deadLetterQueue</code></br>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>retry</code></br>
<em>
int
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>deadLetterQueueManager</code></br>
<em>
string
</em>
</td>
<td>
<p>currently not used</p>
</td>
</tr>
<tr>
<td>
<code>backoffDelay</code></br>
<em>
int
</em>
</td>
<td>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.GCloudIoTResourceName">GCloudIoTResourceName
</h3>
<p>
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.GoogleCloudIoTSourceSpec">GoogleCloudIoTSourceSpec</a>)
</p>
<p>
<p>GCloudIoTResourceName represents a fully qualified IoT resource name,
as described at
<a href="https://pkg.go.dev/google.golang.org/api/cloudiot/v1#DeviceRegistry.Name">https://pkg.go.dev/google.golang.org/api/cloudiot/v1#DeviceRegistry.Name</a></p>
<p>Examples of such resource names include:
- projects/{project_name}/locations/{location_name}/registries/{registry_name}</p>
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
<code>Project</code></br>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>Location</code></br>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>Collection</code></br>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>Resource</code></br>
<em>
string
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
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.GoogleCloudAuditLogsSourceStatus">GoogleCloudAuditLogsSourceStatus</a>, 
<a href="#sources.triggermesh.io/v1alpha1.GoogleCloudBillingSourceStatus">GoogleCloudBillingSourceStatus</a>, 
<a href="#sources.triggermesh.io/v1alpha1.GoogleCloudIoTSourceStatus">GoogleCloudIoTSourceStatus</a>, 
<a href="#sources.triggermesh.io/v1alpha1.GoogleCloudPubSubSourceSpec">GoogleCloudPubSubSourceSpec</a>, 
<a href="#sources.triggermesh.io/v1alpha1.GoogleCloudPubSubSourceStatus">GoogleCloudPubSubSourceStatus</a>, 
<a href="#sources.triggermesh.io/v1alpha1.GoogleCloudSourcePubSubSpec">GoogleCloudSourcePubSubSpec</a>, 
<a href="#sources.triggermesh.io/v1alpha1.GoogleCloudSourceRepositoriesSourceSpec">GoogleCloudSourceRepositoriesSourceSpec</a>, 
<a href="#sources.triggermesh.io/v1alpha1.GoogleCloudSourceRepositoriesSourceStatus">GoogleCloudSourceRepositoriesSourceStatus</a>, 
<a href="#sources.triggermesh.io/v1alpha1.GoogleCloudStorageSourceStatus">GoogleCloudStorageSourceStatus</a>)
</p>
<p>
<p>GCloudResourceName represents a fully qualified resource name,
as described at
<a href="https://cloud.google.com/apis/design/resource_names">https://cloud.google.com/apis/design/resource_names</a></p>
<p>Examples of such resource names include:
- projects/{project_name}/topics/{topic_name}
- projects/{project_name}/repos/{repo_name}
- projects/{project_name}/subscriptions/{subscription_name}</p>
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
<code>Project</code></br>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>Collection</code></br>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>Resource</code></br>
<em>
string
</em>
</td>
<td>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.GoogleCloudAuditLogsSourceSpec">GoogleCloudAuditLogsSourceSpec
</h3>
<p>
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.GoogleCloudAuditLogsSource">GoogleCloudAuditLogsSource</a>)
</p>
<p>
<p>GoogleCloudAuditLogsSourceSpec defines the desired state of the event source.</p>
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
<code>serviceName</code></br>
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
<code>methodName</code></br>
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
<code>resourceName</code></br>
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
<code>pubsub</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.GoogleCloudSourcePubSubSpec">
GoogleCloudSourcePubSubSpec
</a>
</em>
</td>
<td>
<p>Settings related to the Pub/Sub resources associated with the Audit Logs event sink.</p>
</td>
</tr>
<tr>
<td>
<code>serviceAccountKey</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#ValueFromField">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.ValueFromField
</a>
</em>
</td>
<td>
<p>Service account key in JSON format.
<a href="https://cloud.google.com/iam/docs/creating-managing-service-account-keys">https://cloud.google.com/iam/docs/creating-managing-service-account-keys</a></p>
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
<h3 id="sources.triggermesh.io/v1alpha1.GoogleCloudAuditLogsSourceStatus">GoogleCloudAuditLogsSourceStatus
</h3>
<p>
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.GoogleCloudAuditLogsSource">GoogleCloudAuditLogsSource</a>)
</p>
<p>
<p>GoogleCloudAuditLogsSourceStatus defines the observed state of the event source.</p>
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
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#Status">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.Status
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
<code>auditLogsSink</code></br>
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
<code>topic</code></br>
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
<code>subscription</code></br>
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
<h3 id="sources.triggermesh.io/v1alpha1.GoogleCloudBillingSourceSpec">GoogleCloudBillingSourceSpec
</h3>
<p>
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.GoogleCloudBillingSource">GoogleCloudBillingSource</a>)
</p>
<p>
<p>GoogleCloudBillingSourceSpec defines the desired state of the event source.</p>
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
<code>billingAccountId</code></br>
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
<code>budgetId</code></br>
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
<code>pubsub</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.GoogleCloudSourcePubSubSpec">
GoogleCloudSourcePubSubSpec
</a>
</em>
</td>
<td>
<p>Settings related to the Pub/Sub resources associated with the Billing budget event sink.</p>
</td>
</tr>
<tr>
<td>
<code>serviceAccountKey</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#ValueFromField">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.ValueFromField
</a>
</em>
</td>
<td>
<p>Service account key in JSON format.
<a href="https://cloud.google.com/iam/docs/creating-managing-service-account-keys">https://cloud.google.com/iam/docs/creating-managing-service-account-keys</a></p>
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
<h3 id="sources.triggermesh.io/v1alpha1.GoogleCloudBillingSourceStatus">GoogleCloudBillingSourceStatus
</h3>
<p>
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.GoogleCloudBillingSource">GoogleCloudBillingSource</a>)
</p>
<p>
<p>GoogleCloudBillingSourceStatus defines the observed state of the event source.</p>
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
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#Status">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.Status
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
<code>topic</code></br>
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
<code>subscription</code></br>
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
<h3 id="sources.triggermesh.io/v1alpha1.GoogleCloudIoTSourceSpec">GoogleCloudIoTSourceSpec
</h3>
<p>
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.GoogleCloudIoTSource">GoogleCloudIoTSource</a>)
</p>
<p>
<p>GoogleCloudIoTSourceSpec defines the desired state of the event source.</p>
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
<code>registry</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.GCloudIoTResourceName">
GCloudIoTResourceName
</a>
</em>
</td>
<td>
<p>Resource name of the Cloud IoT Registry to receive messages from.</p>
</td>
</tr>
<tr>
<td>
<code>pubsub</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.GoogleCloudSourcePubSubSpec">
GoogleCloudSourcePubSubSpec
</a>
</em>
</td>
<td>
<p>Settings related to the Pub/Sub resources associated with the Cloud IoT Registry.</p>
</td>
</tr>
<tr>
<td>
<code>serviceAccountKey</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#ValueFromField">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.ValueFromField
</a>
</em>
</td>
<td>
<p>Service account key in JSON format.
<a href="https://cloud.google.com/iam/docs/creating-managing-service-account-keys">https://cloud.google.com/iam/docs/creating-managing-service-account-keys</a></p>
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
<h3 id="sources.triggermesh.io/v1alpha1.GoogleCloudIoTSourceStatus">GoogleCloudIoTSourceStatus
</h3>
<p>
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.GoogleCloudIoTSource">GoogleCloudIoTSource</a>)
</p>
<p>
<p>GoogleCloudIoTSourceStatus defines the observed state of the event source.</p>
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
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#Status">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.Status
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
<code>topic</code></br>
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
<code>subscription</code></br>
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
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.GoogleCloudPubSubSource">GoogleCloudPubSubSource</a>)
</p>
<p>
<p>GoogleCloudPubSubSourceSpec defines the desired state of the event source.</p>
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
<code>topic</code></br>
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
<code>subscriptionID</code></br>
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
<code>serviceAccountKey</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#ValueFromField">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.ValueFromField
</a>
</em>
</td>
<td>
<p>Service account key in JSON format.
<a href="https://cloud.google.com/iam/docs/creating-managing-service-account-keys">https://cloud.google.com/iam/docs/creating-managing-service-account-keys</a></p>
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
<h3 id="sources.triggermesh.io/v1alpha1.GoogleCloudPubSubSourceStatus">GoogleCloudPubSubSourceStatus
</h3>
<p>
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.GoogleCloudPubSubSource">GoogleCloudPubSubSource</a>)
</p>
<p>
<p>GoogleCloudPubSubSourceStatus defines the observed state of the event source.</p>
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
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#Status">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.Status
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
<code>subscription</code></br>
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
<h3 id="sources.triggermesh.io/v1alpha1.GoogleCloudSourcePubSubSpec">GoogleCloudSourcePubSubSpec
</h3>
<p>
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.GoogleCloudAuditLogsSourceSpec">GoogleCloudAuditLogsSourceSpec</a>, 
<a href="#sources.triggermesh.io/v1alpha1.GoogleCloudBillingSourceSpec">GoogleCloudBillingSourceSpec</a>, 
<a href="#sources.triggermesh.io/v1alpha1.GoogleCloudIoTSourceSpec">GoogleCloudIoTSourceSpec</a>, 
<a href="#sources.triggermesh.io/v1alpha1.GoogleCloudSourceRepositoriesSourceSpec">GoogleCloudSourceRepositoriesSourceSpec</a>, 
<a href="#sources.triggermesh.io/v1alpha1.GoogleCloudStorageSourceSpec">GoogleCloudStorageSourceSpec</a>)
</p>
<p>
<p>GoogleCloudSourcePubSubSpec defines the attributes related to the
configuration of Pub/Sub resources.</p>
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
<code>topic</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.GCloudResourceName">
GCloudResourceName
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>Full resource name of the Pub/Sub topic where messages/notifications
originating from the configured Google Cloud resource are sent to,
before being retrieved by this event source. If not supplied, a
topic is created on behalf of the user, in the GCP project
referenced by the Project attribute.</p>
<p>The expected format is described at <a href="https://cloud.google.com/pubsub/docs/admin#resource_names:">https://cloud.google.com/pubsub/docs/admin#resource_names:</a>
&ldquo;projects/{project_name}/topics/{topic_name}&rdquo;</p>
</td>
</tr>
<tr>
<td>
<code>project</code></br>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
<p>Name of the GCP project where Pub/Sub resources associated with the
configured Google Cloud resource are to be created.</p>
<p>Mutually exclusive with Topic which, if supplied, already contains
the project name.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.GoogleCloudSourceRepositoriesSourceSpec">GoogleCloudSourceRepositoriesSourceSpec
</h3>
<p>
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.GoogleCloudSourceRepositoriesSource">GoogleCloudSourceRepositoriesSource</a>)
</p>
<p>
<p>GoogleCloudSourceRepositoriesSourceSpec defines the desired state of the event source.</p>
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
<code>repository</code></br>
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
<code>pubsub</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.GoogleCloudSourcePubSubSpec">
GoogleCloudSourcePubSubSpec
</a>
</em>
</td>
<td>
<p>Settings related to the Pub/Sub resources associated with the repo events.</p>
</td>
</tr>
<tr>
<td>
<code>publishServiceAccount</code></br>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
<p>Email address of the service account used for publishing
notifications to Pub/Sub. This service account needs to be in the
same project as the repo, and to have the &lsquo;pubsub.topics.publish&rsquo;
IAM permission associated with it. It can (but doesn&rsquo;t have to) be
the same service account as the &lsquo;ServiceAccountKey&rsquo; attribute.</p>
<p>If unspecified, it defaults to the Compute Engine default service
account.</p>
</td>
</tr>
<tr>
<td>
<code>serviceAccountKey</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#ValueFromField">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.ValueFromField
</a>
</em>
</td>
<td>
<p>Service account key in JSON format.
<a href="https://cloud.google.com/iam/docs/creating-managing-service-account-keys">https://cloud.google.com/iam/docs/creating-managing-service-account-keys</a></p>
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
<h3 id="sources.triggermesh.io/v1alpha1.GoogleCloudSourceRepositoriesSourceStatus">GoogleCloudSourceRepositoriesSourceStatus
</h3>
<p>
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.GoogleCloudSourceRepositoriesSource">GoogleCloudSourceRepositoriesSource</a>)
</p>
<p>
<p>GoogleCloudSourceRepositoriesSourceStatus defines the observed state of the event source.</p>
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
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#Status">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.Status
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
<code>topic</code></br>
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
<code>subscription</code></br>
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
<h3 id="sources.triggermesh.io/v1alpha1.GoogleCloudStorageSourceSpec">GoogleCloudStorageSourceSpec
</h3>
<p>
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.GoogleCloudStorageSource">GoogleCloudStorageSource</a>)
</p>
<p>
<p>GoogleCloudStorageSourceSpec defines the desired state of the event source.</p>
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
<code>bucket</code></br>
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
<code>pubsub</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.GoogleCloudSourcePubSubSpec">
GoogleCloudSourcePubSubSpec
</a>
</em>
</td>
<td>
<p>Settings related to the Pub/Sub resources associated with the bucket.</p>
</td>
</tr>
<tr>
<td>
<code>eventTypes</code></br>
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
<code>serviceAccountKey</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#ValueFromField">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.ValueFromField
</a>
</em>
</td>
<td>
<p>Service account key in JSON format.
<a href="https://cloud.google.com/iam/docs/creating-managing-service-account-keys">https://cloud.google.com/iam/docs/creating-managing-service-account-keys</a></p>
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
<h3 id="sources.triggermesh.io/v1alpha1.GoogleCloudStorageSourceStatus">GoogleCloudStorageSourceStatus
</h3>
<p>
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.GoogleCloudStorageSource">GoogleCloudStorageSource</a>)
</p>
<p>
<p>GoogleCloudStorageSourceStatus defines the observed state of the event source.</p>
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
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#Status">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.Status
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
<code>notificationID</code></br>
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
<code>topic</code></br>
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
<code>subscription</code></br>
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
<h3 id="sources.triggermesh.io/v1alpha1.HTTPBasicAuth">HTTPBasicAuth
</h3>
<p>
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.HTTPCredentials">HTTPCredentials</a>)
</p>
<p>
<p>HTTPBasicAuth credentials.</p>
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
<code>username</code></br>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>password</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#ValueFromField">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.ValueFromField
</a>
</em>
</td>
<td>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.HTTPCredentials">HTTPCredentials
</h3>
<p>
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.CloudEventsSourceSpec">CloudEventsSourceSpec</a>)
</p>
<p>
<p>HTTPCredentials to be used when receiving requests.</p>
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
<code>basicAuths</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.HTTPBasicAuth">
[]HTTPBasicAuth
</a>
</em>
</td>
<td>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.HTTPPollerSourceSpec">HTTPPollerSourceSpec
</h3>
<p>
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.HTTPPollerSource">HTTPPollerSource</a>)
</p>
<p>
<p>HTTPPollerSourceSpec defines the desired state of the event source.</p>
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
<code>eventType</code></br>
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
<code>eventSource</code></br>
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
<code>endpoint</code></br>
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
<code>method</code></br>
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
<code>skipVerify</code></br>
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
<code>caCertificate</code></br>
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
<code>basicAuthUsername</code></br>
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
<code>basicAuthPassword</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#ValueFromField">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.ValueFromField
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
<code>headers</code></br>
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
<code>interval</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis#Duration">
github.com/triggermesh/triggermesh/pkg/apis.Duration
</a>
</em>
</td>
<td>
<p>Duration which defines how often the HTTP/S endpoint should be polled.
Expressed as a duration string, which format is documented at <a href="https://pkg.go.dev/time#ParseDuration">https://pkg.go.dev/time#ParseDuration</a>.</p>
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
<h3 id="sources.triggermesh.io/v1alpha1.IBMMQSourceSpec">IBMMQSourceSpec
</h3>
<p>
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.IBMMQSource">IBMMQSource</a>)
</p>
<p>
<p>IBMMQSourceSpec defines the desired state of the event source.</p>
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
<code>connectionName</code></br>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>queueManager</code></br>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>queueName</code></br>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>channelName</code></br>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>delivery</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.Delivery">
Delivery
</a>
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>credentials</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.Credentials">
Credentials
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
<h3 id="sources.triggermesh.io/v1alpha1.KafkaSourceAuth">KafkaSourceAuth
</h3>
<p>
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.KafkaSourceSpec">KafkaSourceSpec</a>)
</p>
<p>
<p>KafkaSourceAuth contains Authentication method used to interact with Kafka.</p>
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
<code>kerberos</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.KafkaSourceKerberos">
KafkaSourceKerberos
</a>
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>tls</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.KafkaSourceTLSAuth">
KafkaSourceTLSAuth
</a>
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>saslEnable</code></br>
<em>
bool
</em>
</td>
<td>
<p>SASL Enable</p>
</td>
</tr>
<tr>
<td>
<code>tlsEnable</code></br>
<em>
bool
</em>
</td>
<td>
<em>(Optional)</em>
<p>TLS Enable</p>
</td>
</tr>
<tr>
<td>
<code>securityMechanism</code></br>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
<p>SecurityMechanisms holds the assignment of the specific SASL mechanisms.</p>
</td>
</tr>
<tr>
<td>
<code>username</code></br>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
<p>Username Kafka account User</p>
</td>
</tr>
<tr>
<td>
<code>password</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#ValueFromField">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.ValueFromField
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>Password Kafka account Password</p>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.KafkaSourceKerberos">KafkaSourceKerberos
</h3>
<p>
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.KafkaSourceAuth">KafkaSourceAuth</a>)
</p>
<p>
<p>KafkaSourceKerberos contains kerberos credentials.</p>
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
<code>username</code></br>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>password</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#ValueFromField">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.ValueFromField
</a>
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>realm</code></br>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>serviceName</code></br>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>configPath</code></br>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>keytabPath</code></br>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>config</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#ValueFromField">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.ValueFromField
</a>
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>keytab</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#ValueFromField">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.ValueFromField
</a>
</em>
</td>
<td>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.KafkaSourceSpec">KafkaSourceSpec
</h3>
<p>
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.KafkaSource">KafkaSource</a>)
</p>
<p>
<p>KafkaSourceSpec defines the desired state of the event source.</p>
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
<code>bootstrapServers</code></br>
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
<code>topics</code></br>
<em>
[]string
</em>
</td>
<td>
<p>Topics holds the name of the Kafka Topics.</p>
</td>
</tr>
<tr>
<td>
<code>groupID</code></br>
<em>
string
</em>
</td>
<td>
<p>GroupID holds the name of the Kafka Group ID.</p>
</td>
</tr>
<tr>
<td>
<code>auth</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.KafkaSourceAuth">
KafkaSourceAuth
</a>
</em>
</td>
<td>
<p>Auth contains Authentication method used to interact with Kafka.</p>
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
<h3 id="sources.triggermesh.io/v1alpha1.KafkaSourceTLSAuth">KafkaSourceTLSAuth
</h3>
<p>
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.KafkaSourceAuth">KafkaSourceAuth</a>)
</p>
<p>
<p>KafkaSourceTLSAuth contains kerberos credentials.</p>
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
<code>ca</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#ValueFromField">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.ValueFromField
</a>
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>clientCert</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#ValueFromField">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.ValueFromField
</a>
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>clientKey</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#ValueFromField">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.ValueFromField
</a>
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>skipVerify</code></br>
<em>
bool
</em>
</td>
<td>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.Keystore">Keystore
</h3>
<p>
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.TLSSpec">TLSSpec</a>)
</p>
<p>
<p>Keystore represents Key Database components.</p>
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
<code>keyDatabase</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#ValueFromField">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.ValueFromField
</a>
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>passwordStash</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#ValueFromField">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.ValueFromField
</a>
</em>
</td>
<td>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.OCIMetrics">OCIMetrics
</h3>
<p>
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.OCIMetricsSourceSpec">OCIMetricsSourceSpec</a>)
</p>
<p>
<p>OCIMetrics represents OCI metrics structure.</p>
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
<p>Human description for the metrics entry</p>
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
<tr>
<td>
<code>oracleCompartment</code></br>
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
<code>oracleApiPrivateKey</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#ValueFromField">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.ValueFromField
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
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#ValueFromField">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.ValueFromField
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
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#ValueFromField">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.ValueFromField
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
<em>(Optional)</em>
<p>OCI Metrics Polling Frequency</p>
</td>
</tr>
<tr>
<td>
<code>metrics</code></br>
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
<h3 id="sources.triggermesh.io/v1alpha1.RateLimiter">RateLimiter
</h3>
<p>
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.CloudEventsSourceSpec">CloudEventsSourceSpec</a>)
</p>
<p>
<p>RateLimiter parameters.</p>
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
<code>requestsPerSecond</code></br>
<em>
int
</em>
</td>
<td>
<p>RequestsPerSecond is used to limit the number of requests that a
single instance of the CloudEventsSource adapter can accept.</p>
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
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#ValueFromField">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.ValueFromField
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
<h3 id="sources.triggermesh.io/v1alpha1.SlackSourceSpec">SlackSourceSpec
</h3>
<p>
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.SlackSource">SlackSource</a>)
</p>
<p>
<p>SlackSourceSpec defines the desired state of the event source.</p>
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
<code>signingSecret</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#ValueFromField">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.ValueFromField
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
<code>appID</code></br>
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
<h3 id="sources.triggermesh.io/v1alpha1.TLSSpec">TLSSpec
</h3>
<p>
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.Credentials">Credentials</a>)
</p>
<p>
<p>TLSSpec holds the IBM MQ TLS authentication parameters.</p>
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
<code>cipher</code></br>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>clientAuthRequired</code></br>
<em>
bool
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>certLabel</code></br>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>keyRepository</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.Keystore">
Keystore
</a>
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
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.TwilioSource">TwilioSource</a>)
</p>
<p>
<p>TwilioSourceSpec defines the desired state of the event source.</p>
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
<h3 id="sources.triggermesh.io/v1alpha1.WebhookEventExtensionAttributes">WebhookEventExtensionAttributes
</h3>
<p>
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.WebhookSourceSpec">WebhookSourceSpec</a>)
</p>
<p>
<p>WebhookEventExtensionAttributes sets the policy for converting HTTP data into.</p>
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
<code>from</code></br>
<em>
[]string
</em>
</td>
<td>
<em>(Optional)</em>
<p>From informs HTTP elements that will be converted into CloudEvents attributes</p>
</td>
</tr>
</tbody>
</table>
<h3 id="sources.triggermesh.io/v1alpha1.WebhookSourceSpec">WebhookSourceSpec
</h3>
<p>
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.WebhookSource">WebhookSource</a>)
</p>
<p>
<p>WebhookSourceSpec defines the desired state of the event source.</p>
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
<code>eventType</code></br>
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
<code>eventSource</code></br>
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
<code>eventExtensionAttributes</code></br>
<em>
<a href="#sources.triggermesh.io/v1alpha1.WebhookEventExtensionAttributes">
WebhookEventExtensionAttributes
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>Options to transform HTTP request data into CloudEvent extensions.
<a href="https://github.com/cloudevents/spec/blob/main/cloudevents/spec.md#extension-context-attributes">https://github.com/cloudevents/spec/blob/main/cloudevents/spec.md#extension-context-attributes</a></p>
</td>
</tr>
<tr>
<td>
<code>basicAuthUsername</code></br>
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
<code>basicAuthPassword</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#ValueFromField">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.ValueFromField
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>Password HTTP clients must set to authenticate with the webhook using HTTP Basic authentication.</p>
</td>
</tr>
<tr>
<td>
<code>corsAllowOrigin</code></br>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
<p>Specifies the CORS Origin to use in pre-flight headers.</p>
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
<h3 id="sources.triggermesh.io/v1alpha1.ZendeskSourceSpec">ZendeskSourceSpec
</h3>
<p>
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.ZendeskSource">ZendeskSource</a>)
</p>
<p>
<p>ZendeskSourceSpec defines the desired state of the event source.</p>
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
<code>token</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#ValueFromField">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.ValueFromField
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
<code>email</code></br>
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
<code>webhookPassword</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#ValueFromField">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.ValueFromField
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
<code>webhookUsername</code></br>
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
<code>subdomain</code></br>
<em>
string
</em>
</td>
<td>
<p>Subdomain identifies Zendesk subdomain</p>
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
<h3 id="sources.triggermesh.io/v1alpha1.ZendeskSourceStatus">ZendeskSourceStatus
</h3>
<p>
(<em>Appears on:</em>
<a href="#sources.triggermesh.io/v1alpha1.ZendeskSource">ZendeskSource</a>)
</p>
<p>
<p>ZendeskSourceStatus defines the observed state of the event source.</p>
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
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#Status">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.Status
</a>
</em>
</td>
<td>
<p>
(Members of <code>Status</code> are embedded into this type.)
</p>
</td>
</tr>
</tbody>
</table>
<hr/>
<p><em>
Generated with <code>gen-crd-api-reference-docs</code>
on git commit <code>2e3f702f</code>.
</em></p>
