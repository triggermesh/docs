<p>Packages:</p>
<ul>
<li>
<a href="#sources.triggermesh.io%2fv1alpha1">sources.triggermesh.io/v1alpha1</a>
</li>
</ul>
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
<a href="#sources.triggermesh.io/v1alpha1.AzureQueueStorageSource">AzureQueueStorageSource</a>
</li><li>
<a href="#sources.triggermesh.io/v1alpha1.GoogleCloudAuditLogsSource">GoogleCloudAuditLogsSource</a>
</li><li>
<a href="#sources.triggermesh.io/v1alpha1.GoogleCloudBillingSource">GoogleCloudBillingSource</a>
</li><li>
<a href="#sources.triggermesh.io/v1alpha1.GoogleCloudPubSubSource">GoogleCloudPubSubSource</a>
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
<a href="#sources.triggermesh.io/v1alpha1.GCloudPubSubResourceName">
GCloudPubSubResourceName
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
(<em>Appears on:</em><a href="#sources.triggermesh.io/v1alpha1.AzureActivityLogsSourceSpec">AzureActivityLogsSourceSpec</a>, <a href="#sources.triggermesh.io/v1alpha1.AzureBlobStorageSourceSpec">AzureBlobStorageSourceSpec</a>, <a href="#sources.triggermesh.io/v1alpha1.AzureEventGridSourceSpec">AzureEventGridSourceSpec</a>, <a href="#sources.triggermesh.io/v1alpha1.AzureEventHubSourceSpec">AzureEventHubSourceSpec</a>)
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
(<em>Appears on:</em><a href="#sources.triggermesh.io/v1alpha1.AWSCloudWatchLogsSource">AWSCloudWatchLogsSource</a>, <a href="#sources.triggermesh.io/v1alpha1.AWSCloudWatchSource">AWSCloudWatchSource</a>, <a href="#sources.triggermesh.io/v1alpha1.AWSCodeCommitSource">AWSCodeCommitSource</a>, <a href="#sources.triggermesh.io/v1alpha1.AWSCognitoIdentitySource">AWSCognitoIdentitySource</a>, <a href="#sources.triggermesh.io/v1alpha1.AWSCognitoUserPoolSource">AWSCognitoUserPoolSource</a>, <a href="#sources.triggermesh.io/v1alpha1.AWSDynamoDBSource">AWSDynamoDBSource</a>, <a href="#sources.triggermesh.io/v1alpha1.AWSKinesisSource">AWSKinesisSource</a>, <a href="#sources.triggermesh.io/v1alpha1.AWSPerformanceInsightsSource">AWSPerformanceInsightsSource</a>, <a href="#sources.triggermesh.io/v1alpha1.AWSSQSSource">AWSSQSSource</a>, <a href="#sources.triggermesh.io/v1alpha1.AzureEventHubSource">AzureEventHubSource</a>, <a href="#sources.triggermesh.io/v1alpha1.AzureQueueStorageSource">AzureQueueStorageSource</a>, <a href="#sources.triggermesh.io/v1alpha1.HTTPPollerSource">HTTPPollerSource</a>, <a href="#sources.triggermesh.io/v1alpha1.OCIMetricsSource">OCIMetricsSource</a>, <a href="#sources.triggermesh.io/v1alpha1.SalesforceSource">SalesforceSource</a>, <a href="#sources.triggermesh.io/v1alpha1.SlackSource">SlackSource</a>, <a href="#sources.triggermesh.io/v1alpha1.TwilioSource">TwilioSource</a>, <a href="#sources.triggermesh.io/v1alpha1.WebhookSource">WebhookSource</a>, <a href="#sources.triggermesh.io/v1alpha1.AWSS3SourceStatus">AWSS3SourceStatus</a>, <a href="#sources.triggermesh.io/v1alpha1.AWSSNSSourceStatus">AWSSNSSourceStatus</a>, <a href="#sources.triggermesh.io/v1alpha1.AzureActivityLogsSourceStatus">AzureActivityLogsSourceStatus</a>, <a href="#sources.triggermesh.io/v1alpha1.AzureBlobStorageSourceStatus">AzureBlobStorageSourceStatus</a>, <a href="#sources.triggermesh.io/v1alpha1.AzureEventGridSourceStatus">AzureEventGridSourceStatus</a>, <a href="#sources.triggermesh.io/v1alpha1.EventSourceStatusManager">EventSourceStatusManager</a>, <a href="#sources.triggermesh.io/v1alpha1.GoogleCloudAuditLogsSourceStatus">GoogleCloudAuditLogsSourceStatus</a>, <a href="#sources.triggermesh.io/v1alpha1.GoogleCloudBillingSourceStatus">GoogleCloudBillingSourceStatus</a>, <a href="#sources.triggermesh.io/v1alpha1.GoogleCloudPubSubSourceStatus">GoogleCloudPubSubSourceStatus</a>, <a href="#sources.triggermesh.io/v1alpha1.GoogleCloudStorageSourceStatus">GoogleCloudStorageSourceStatus</a>, <a href="#sources.triggermesh.io/v1alpha1.ZendeskSourceStatus">ZendeskSourceStatus</a>)
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
<h3 id="sources.triggermesh.io/v1alpha1.GCloudPubSubResourceName">GCloudPubSubResourceName
</h3>
<p>
(<em>Appears on:</em><a href="#sources.triggermesh.io/v1alpha1.GoogleCloudAuditLogsSourcePubSubSpec">GoogleCloudAuditLogsSourcePubSubSpec</a>, <a href="#sources.triggermesh.io/v1alpha1.GoogleCloudAuditLogsSourceStatus">GoogleCloudAuditLogsSourceStatus</a>, <a href="#sources.triggermesh.io/v1alpha1.GoogleCloudBillingSourcePubSubSpec">GoogleCloudBillingSourcePubSubSpec</a>, <a href="#sources.triggermesh.io/v1alpha1.GoogleCloudBillingSourceStatus">GoogleCloudBillingSourceStatus</a>, <a href="#sources.triggermesh.io/v1alpha1.GoogleCloudPubSubSourceSpec">GoogleCloudPubSubSourceSpec</a>, <a href="#sources.triggermesh.io/v1alpha1.GoogleCloudPubSubSourceStatus">GoogleCloudPubSubSourceStatus</a>, <a href="#sources.triggermesh.io/v1alpha1.GoogleCloudStorageSourcePubSubSpec">GoogleCloudStorageSourcePubSubSpec</a>, <a href="#sources.triggermesh.io/v1alpha1.GoogleCloudStorageSourceStatus">GoogleCloudStorageSourceStatus</a>)
</p>
<div>
<p>GCloudPubSubResourceName represents a fully qualified Pub/Sub resource name,
as described at
<a href="https://cloud.google.com/pubsub/docs/admin#resource_names">https://cloud.google.com/pubsub/docs/admin#resource_names</a></p>
<p>Examples of such resource names include:
- projects/{project_name}/topics/{topic_name}
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
<a href="#sources.triggermesh.io/v1alpha1.GCloudPubSubResourceName">
GCloudPubSubResourceName
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
<a href="#sources.triggermesh.io/v1alpha1.GCloudPubSubResourceName">
GCloudPubSubResourceName
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
<a href="#sources.triggermesh.io/v1alpha1.GCloudPubSubResourceName">
GCloudPubSubResourceName
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
<a href="#sources.triggermesh.io/v1alpha1.GCloudPubSubResourceName">
GCloudPubSubResourceName
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
<a href="#sources.triggermesh.io/v1alpha1.GCloudPubSubResourceName">
GCloudPubSubResourceName
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
<a href="#sources.triggermesh.io/v1alpha1.GCloudPubSubResourceName">
GCloudPubSubResourceName
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
<a href="#sources.triggermesh.io/v1alpha1.GCloudPubSubResourceName">
GCloudPubSubResourceName
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
<a href="#sources.triggermesh.io/v1alpha1.GCloudPubSubResourceName">
GCloudPubSubResourceName
</a>
</em>
</td>
<td>
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
<a href="#sources.triggermesh.io/v1alpha1.GCloudPubSubResourceName">
GCloudPubSubResourceName
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
<a href="#sources.triggermesh.io/v1alpha1.GCloudPubSubResourceName">
GCloudPubSubResourceName
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
<a href="#sources.triggermesh.io/v1alpha1.GCloudPubSubResourceName">
GCloudPubSubResourceName
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
(<em>Appears on:</em><a href="#sources.triggermesh.io/v1alpha1.AWSSecurityCredentials">AWSSecurityCredentials</a>, <a href="#sources.triggermesh.io/v1alpha1.AzureQueueStorageSourceSpec">AzureQueueStorageSourceSpec</a>, <a href="#sources.triggermesh.io/v1alpha1.AzureSASToken">AzureSASToken</a>, <a href="#sources.triggermesh.io/v1alpha1.AzureServicePrincipal">AzureServicePrincipal</a>, <a href="#sources.triggermesh.io/v1alpha1.GoogleCloudAuditLogsSourceSpec">GoogleCloudAuditLogsSourceSpec</a>, <a href="#sources.triggermesh.io/v1alpha1.GoogleCloudBillingSourceSpec">GoogleCloudBillingSourceSpec</a>, <a href="#sources.triggermesh.io/v1alpha1.GoogleCloudPubSubSourceSpec">GoogleCloudPubSubSourceSpec</a>, <a href="#sources.triggermesh.io/v1alpha1.GoogleCloudStorageSourceSpec">GoogleCloudStorageSourceSpec</a>, <a href="#sources.triggermesh.io/v1alpha1.HTTPPollerSourceSpec">HTTPPollerSourceSpec</a>, <a href="#sources.triggermesh.io/v1alpha1.OCIMetricsSourceSpec">OCIMetricsSourceSpec</a>, <a href="#sources.triggermesh.io/v1alpha1.SalesforceAuth">SalesforceAuth</a>, <a href="#sources.triggermesh.io/v1alpha1.SlackSourceSpec">SlackSourceSpec</a>, <a href="#sources.triggermesh.io/v1alpha1.WebhookSourceSpec">WebhookSourceSpec</a>, <a href="#sources.triggermesh.io/v1alpha1.ZendeskSourceSpec">ZendeskSourceSpec</a>)
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
<p><em>
Generated with <code>gen-crd-api-reference-docs</code>
on git commit <code>ffb9f0d</code>.
</em></p>
