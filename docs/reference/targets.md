<style>
.bs-sidebar {
display: none;
}
</style>
<p>Package:</p>
<ul>
<li>
<a href="#targets.triggermesh.io%2fv1alpha1">targets.triggermesh.io/v1alpha1</a>
</li>
</ul>
<h2 id="targets.triggermesh.io/v1alpha1">targets.triggermesh.io/v1alpha1</h2>
<p>
<p>Package v1alpha1 contains API Schema definitions for the targets/v1alpha1 API group.</p>
</p>
Resource Types:
<ul><li>
<a href="#targets.triggermesh.io/v1alpha1.AWSComprehendTarget">AWSComprehendTarget</a>
</li><li>
<a href="#targets.triggermesh.io/v1alpha1.AWSDynamoDBTarget">AWSDynamoDBTarget</a>
</li><li>
<a href="#targets.triggermesh.io/v1alpha1.AWSEventBridgeTarget">AWSEventBridgeTarget</a>
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
<a href="#targets.triggermesh.io/v1alpha1.AzureEventHubsTarget">AzureEventHubsTarget</a>
</li><li>
<a href="#targets.triggermesh.io/v1alpha1.AzureSentinelTarget">AzureSentinelTarget</a>
</li><li>
<a href="#targets.triggermesh.io/v1alpha1.AzureServiceBusTarget">AzureServiceBusTarget</a>
</li><li>
<a href="#targets.triggermesh.io/v1alpha1.CloudEventsTarget">CloudEventsTarget</a>
</li><li>
<a href="#targets.triggermesh.io/v1alpha1.DatadogTarget">DatadogTarget</a>
</li><li>
<a href="#targets.triggermesh.io/v1alpha1.ElasticsearchTarget">ElasticsearchTarget</a>
</li><li>
<a href="#targets.triggermesh.io/v1alpha1.GoogleCloudFirestoreTarget">GoogleCloudFirestoreTarget</a>
</li><li>
<a href="#targets.triggermesh.io/v1alpha1.GoogleCloudPubSubTarget">GoogleCloudPubSubTarget</a>
</li><li>
<a href="#targets.triggermesh.io/v1alpha1.GoogleCloudStorageTarget">GoogleCloudStorageTarget</a>
</li><li>
<a href="#targets.triggermesh.io/v1alpha1.GoogleCloudWorkflowsTarget">GoogleCloudWorkflowsTarget</a>
</li><li>
<a href="#targets.triggermesh.io/v1alpha1.GoogleSheetTarget">GoogleSheetTarget</a>
</li><li>
<a href="#targets.triggermesh.io/v1alpha1.HTTPTarget">HTTPTarget</a>
</li><li>
<a href="#targets.triggermesh.io/v1alpha1.IBMMQTarget">IBMMQTarget</a>
</li><li>
<a href="#targets.triggermesh.io/v1alpha1.JiraTarget">JiraTarget</a>
</li><li>
<a href="#targets.triggermesh.io/v1alpha1.KafkaTarget">KafkaTarget</a>
</li><li>
<a href="#targets.triggermesh.io/v1alpha1.LogzMetricsTarget">LogzMetricsTarget</a>
</li><li>
<a href="#targets.triggermesh.io/v1alpha1.LogzTarget">LogzTarget</a>
</li><li>
<a href="#targets.triggermesh.io/v1alpha1.MongoDBTarget">MongoDBTarget</a>
</li><li>
<a href="#targets.triggermesh.io/v1alpha1.OracleTarget">OracleTarget</a>
</li><li>
<a href="#targets.triggermesh.io/v1alpha1.SalesforceTarget">SalesforceTarget</a>
</li><li>
<a href="#targets.triggermesh.io/v1alpha1.SendGridTarget">SendGridTarget</a>
</li><li>
<a href="#targets.triggermesh.io/v1alpha1.SlackTarget">SlackTarget</a>
</li><li>
<a href="#targets.triggermesh.io/v1alpha1.SolaceTarget">SolaceTarget</a>
</li><li>
<a href="#targets.triggermesh.io/v1alpha1.SplunkTarget">SplunkTarget</a>
</li><li>
<a href="#targets.triggermesh.io/v1alpha1.TwilioTarget">TwilioTarget</a>
</li><li>
<a href="#targets.triggermesh.io/v1alpha1.ZendeskTarget">ZendeskTarget</a>
</li></ul>
<h3 id="targets.triggermesh.io/v1alpha1.AWSComprehendTarget">AWSComprehendTarget
</h3>
<p>
<p>AWSComprehendTarget is the Schema for an AWS Comprehend Target.</p>
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
targets.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code></br>
string
</td>
<td><code>AWSComprehendTarget</code></td>
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
<a href="#targets.triggermesh.io/v1alpha1.AWSComprehendTargetSpec">
AWSComprehendTargetSpec
</a>
</em>
</td>
<td>
<br/>
<br/>
<table>
<tr>
<td>
<code>auth</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#AWSAuth">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.AWSAuth
</a>
</em>
</td>
<td>
<p>AWS-specific authentication methods.</p>
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
<p>Region to use for calling into Comprehend API.</p>
</td>
</tr>
<tr>
<td>
<code>eventOptions</code></br>
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
<code>language</code></br>
<em>
string
</em>
</td>
<td>
<p>Language code to use to interact with Comprehend. The supported list can be found at: <a href="https://docs.aws.amazon.com/comprehend/latest/dg/supported-languages.html">https://docs.aws.amazon.com/comprehend/latest/dg/supported-languages.html</a></p>
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
<h3 id="targets.triggermesh.io/v1alpha1.AWSDynamoDBTarget">AWSDynamoDBTarget
</h3>
<p>
<p>AWSDynamoDBTarget is the Schema for an AWS DynamoDB Target.</p>
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
targets.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code></br>
string
</td>
<td><code>AWSDynamoDBTarget</code></td>
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
<a href="#targets.triggermesh.io/v1alpha1.AWSDynamoDBTargetSpec">
AWSDynamoDBTargetSpec
</a>
</em>
</td>
<td>
<br/>
<br/>
<table>
<tr>
<td>
<code>auth</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#AWSAuth">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.AWSAuth
</a>
</em>
</td>
<td>
<p>AWS-specific authentication methods.</p>
</td>
</tr>
<tr>
<td>
<code>arn</code></br>
<em>
string
</em>
</td>
<td>
<p>Table ARN
<a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazondynamodb.html#amazondynamodb-resources-for-iam-policies">https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazondynamodb.html#amazondynamodb-resources-for-iam-policies</a></p>
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
<h3 id="targets.triggermesh.io/v1alpha1.AWSEventBridgeTarget">AWSEventBridgeTarget
</h3>
<p>
<p>AWSEventBridgeTarget is the Schema for the event target.</p>
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
targets.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code></br>
string
</td>
<td><code>AWSEventBridgeTarget</code></td>
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
<a href="#targets.triggermesh.io/v1alpha1.AWSEventBridgeTargetSpec">
AWSEventBridgeTargetSpec
</a>
</em>
</td>
<td>
<br/>
<br/>
<table>
<tr>
<td>
<code>auth</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#AWSAuth">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.AWSAuth
</a>
</em>
</td>
<td>
<p>AWS-specific authentication methods.</p>
</td>
</tr>
<tr>
<td>
<code>arn</code></br>
<em>
string
</em>
</td>
<td>
<p>Amazon Resource Name of the EventBridge Event Bus.
<a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazoneventbridge.html">https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazoneventbridge.html</a></p>
</td>
</tr>
<tr>
<td>
<code>discardCloudEventContext</code></br>
<em>
bool
</em>
</td>
<td>
<p>Whether to omit CloudEvent context attributes in notifications sent to EventBridge.
When this property is false (default), the entire CloudEvent payload is included.
When this property is true, only the CloudEvent data is included.</p>
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
<h3 id="targets.triggermesh.io/v1alpha1.AWSKinesisTarget">AWSKinesisTarget
</h3>
<p>
<p>AWSKinesisTarget is the Schema for an AWS Kinesis Target.</p>
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
targets.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code></br>
string
</td>
<td><code>AWSKinesisTarget</code></td>
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
<a href="#targets.triggermesh.io/v1alpha1.AWSKinesisTargetSpec">
AWSKinesisTargetSpec
</a>
</em>
</td>
<td>
<br/>
<br/>
<table>
<tr>
<td>
<code>auth</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#AWSAuth">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.AWSAuth
</a>
</em>
</td>
<td>
<p>AWS-specific authentication methods.</p>
</td>
</tr>
<tr>
<td>
<code>arn</code></br>
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
<code>partition</code></br>
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
<code>discardCloudEventContext</code></br>
<em>
bool
</em>
</td>
<td>
<p>Whether to omit CloudEvent context attributes in records created in Kinesis.
When this property is false (default), the entire CloudEvent payload is included.
When this property is true, only the CloudEvent data is included.</p>
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
<h3 id="targets.triggermesh.io/v1alpha1.AWSLambdaTarget">AWSLambdaTarget
</h3>
<p>
<p>AWSLambdaTarget is the Schema for an AWS Lambda Target.</p>
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
targets.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code></br>
string
</td>
<td><code>AWSLambdaTarget</code></td>
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
<a href="#targets.triggermesh.io/v1alpha1.AWSLambdaTargetSpec">
AWSLambdaTargetSpec
</a>
</em>
</td>
<td>
<br/>
<br/>
<table>
<tr>
<td>
<code>auth</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#AWSAuth">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.AWSAuth
</a>
</em>
</td>
<td>
<p>AWS-specific authentication methods.</p>
</td>
</tr>
<tr>
<td>
<code>arn</code></br>
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
<code>discardCloudEventContext</code></br>
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
<h3 id="targets.triggermesh.io/v1alpha1.AWSS3Target">AWSS3Target
</h3>
<p>
<p>AWSS3Target is the Schema for an AWS s3 Target.</p>
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
targets.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code></br>
string
</td>
<td><code>AWSS3Target</code></td>
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
<a href="#targets.triggermesh.io/v1alpha1.AWSS3TargetSpec">
AWSS3TargetSpec
</a>
</em>
</td>
<td>
<br/>
<br/>
<table>
<tr>
<td>
<code>auth</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#AWSAuth">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.AWSAuth
</a>
</em>
</td>
<td>
<p>AWS-specific authentication methods.</p>
</td>
</tr>
<tr>
<td>
<code>arn</code></br>
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
<code>discardCloudEventContext</code></br>
<em>
bool
</em>
</td>
<td>
<p>Whether to omit CloudEvent context attributes in objects created in S3.
When this property is false (default), the entire CloudEvent payload is included.
When this property is true, only the CloudEvent data is included.</p>
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
<h3 id="targets.triggermesh.io/v1alpha1.AWSSNSTarget">AWSSNSTarget
</h3>
<p>
<p>AWSSNSTarget is the Schema for the event target.</p>
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
targets.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code></br>
string
</td>
<td><code>AWSSNSTarget</code></td>
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
<a href="#targets.triggermesh.io/v1alpha1.AWSSNSTargetSpec">
AWSSNSTargetSpec
</a>
</em>
</td>
<td>
<br/>
<br/>
<table>
<tr>
<td>
<code>auth</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#AWSAuth">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.AWSAuth
</a>
</em>
</td>
<td>
<p>AWS-specific authentication methods.</p>
</td>
</tr>
<tr>
<td>
<code>arn</code></br>
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
<code>discardCloudEventContext</code></br>
<em>
bool
</em>
</td>
<td>
<p>Whether to omit CloudEvent context attributes in notifications sent to SNS.
When this property is false (default), the entire CloudEvent payload is included.
When this property is true, only the CloudEvent data is included.</p>
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
<h3 id="targets.triggermesh.io/v1alpha1.AWSSQSTarget">AWSSQSTarget
</h3>
<p>
<p>AWSSQSTarget is the Schema for an AWS SQS Target.</p>
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
targets.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code></br>
string
</td>
<td><code>AWSSQSTarget</code></td>
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
<a href="#targets.triggermesh.io/v1alpha1.AWSSQSTargetSpec">
AWSSQSTargetSpec
</a>
</em>
</td>
<td>
<br/>
<br/>
<table>
<tr>
<td>
<code>auth</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#AWSAuth">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.AWSAuth
</a>
</em>
</td>
<td>
<p>AWS-specific authentication methods.</p>
</td>
</tr>
<tr>
<td>
<code>arn</code></br>
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
<code>messageGroupId</code></br>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
<p>Message Group ID is required for FIFO based queues, and is used to uniquely identify the event producer
<a href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues-understanding-logic.html">https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues-understanding-logic.html</a></p>
</td>
</tr>
<tr>
<td>
<code>discardCloudEventContext</code></br>
<em>
bool
</em>
</td>
<td>
<p>Whether to omit CloudEvent context attributes in messages sent to SQS.
When this property is false (default), the entire CloudEvent payload is included.
When this property is true, only the CloudEvent data is included.</p>
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
<h3 id="targets.triggermesh.io/v1alpha1.AzureEventHubsTarget">AzureEventHubsTarget
</h3>
<p>
<p>AzureEventHubsTarget is the Schema for an Azure Object Storage Service Target.</p>
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
targets.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code></br>
string
</td>
<td><code>AzureEventHubsTarget</code></td>
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
<a href="#targets.triggermesh.io/v1alpha1.AzureEventHubsTargetSpec">
AzureEventHubsTargetSpec
</a>
</em>
</td>
<td>
<br/>
<br/>
<table>
<tr>
<td>
<code>auth</code></br>
<em>
<a href="#targets.triggermesh.io/v1alpha1.AzureAuth">
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
<code>eventHubID</code></br>
<em>
<a href="#targets.triggermesh.io/v1alpha1.AzureResourceID">
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
<code>eventOptions</code></br>
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
<tr>
<td>
<code>discardCloudEventContext</code></br>
<em>
bool
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
<h3 id="targets.triggermesh.io/v1alpha1.AzureSentinelTarget">AzureSentinelTarget
</h3>
<p>
<p>AzureSentinelTarget is the Schema for an Azure Sentinel Target.</p>
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
targets.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code></br>
string
</td>
<td><code>AzureSentinelTarget</code></td>
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
<a href="#targets.triggermesh.io/v1alpha1.AzureSentinelTargetSpec">
AzureSentinelTargetSpec
</a>
</em>
</td>
<td>
<br/>
<br/>
<table>
<tr>
<td>
<code>subscriptionID</code></br>
<em>
string
</em>
</td>
<td>
<p>SubscriptionID refers to the Azure Subscription ID that the Azure Sentinel instance is associated with.</p>
</td>
</tr>
<tr>
<td>
<code>resourceGroup</code></br>
<em>
string
</em>
</td>
<td>
<p>ResourceGroup refers to the resource group where the Azure Sentinel instance is deployed.</p>
</td>
</tr>
<tr>
<td>
<code>workspace</code></br>
<em>
string
</em>
</td>
<td>
<p>Workspace refers to the workspace name in Azure Sentinel.</p>
</td>
</tr>
<tr>
<td>
<code>auth</code></br>
<em>
<a href="#targets.triggermesh.io/v1alpha1.AzureAuth">
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
<code>eventOptions</code></br>
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
<h3 id="targets.triggermesh.io/v1alpha1.AzureServiceBusTarget">AzureServiceBusTarget
</h3>
<p>
<p>AzureServiceBusTarget is the Schema for an Azure Service Bus Target.</p>
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
targets.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code></br>
string
</td>
<td><code>AzureServiceBusTarget</code></td>
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
<a href="#targets.triggermesh.io/v1alpha1.AzureServiceBusTargetSpec">
AzureServiceBusTargetSpec
</a>
</em>
</td>
<td>
<br/>
<br/>
<table>
<tr>
<td>
<code>topicID</code></br>
<em>
<a href="#targets.triggermesh.io/v1alpha1.AzureResourceID">
AzureResourceID
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>The resource ID the Service Bus Topic.</p>
<p>Expected format:
- /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ServiceBus/namespaces/{namespaceName}/topics/{topicName}</p>
</td>
</tr>
<tr>
<td>
<code>queueID</code></br>
<em>
<a href="#targets.triggermesh.io/v1alpha1.AzureResourceID">
AzureResourceID
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>The resource ID the Service Bus Queue.</p>
<p>Expected format:
- /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ServiceBus/namespaces/{namespaceName}/queues/{queueName}</p>
</td>
</tr>
<tr>
<td>
<code>auth</code></br>
<em>
<a href="#targets.triggermesh.io/v1alpha1.AzureAuth">
AzureAuth
</a>
</em>
</td>
<td>
<p>Authentication method to interact with the Azure Service Bus API.</p>
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
<code>eventOptions</code></br>
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
<tr>
<td>
<code>discardCloudEventContext</code></br>
<em>
bool
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
<h3 id="targets.triggermesh.io/v1alpha1.CloudEventsTarget">CloudEventsTarget
</h3>
<p>
<p>CloudEventsTarget is a gateway that produces received CloudEvents to a destination.</p>
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
targets.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code></br>
string
</td>
<td><code>CloudEventsTarget</code></td>
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
<a href="#targets.triggermesh.io/v1alpha1.CloudEventsTargetSpec">
CloudEventsTargetSpec
</a>
</em>
</td>
<td>
<br/>
<br/>
<table>
<tr>
<td>
<code>credentials</code></br>
<em>
<a href="#targets.triggermesh.io/v1alpha1.CloudEventsCredentials">
CloudEventsCredentials
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>Credentials to connect to the remote endpoint.</p>
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
<p>Path at the remote endpoint under which requests are accepted.</p>
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
<p>Endpoint that accept CloudEvents.</p>
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
<p>AdapterOverrides sets runtime parameters to the adapter instance.</p>
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
<h3 id="targets.triggermesh.io/v1alpha1.DatadogTarget">DatadogTarget
</h3>
<p>
<p>DatadogTarget is the Schema for an HTTP Target.</p>
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
targets.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code></br>
string
</td>
<td><code>DatadogTarget</code></td>
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
<code>apiKey</code></br>
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
<code>site</code></br>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
<p>DatadogSite controls the site of the Datadog intake API, defaults to <code>datadoghq.com</code></p>
</td>
</tr>
<tr>
<td>
<code>metricPrefix</code></br>
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
<code>eventOptions</code></br>
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
<h3 id="targets.triggermesh.io/v1alpha1.ElasticsearchTarget">ElasticsearchTarget
</h3>
<p>
<p>ElasticsearchTarget is the Schema for an Elasticsearch Target.</p>
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
targets.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code></br>
string
</td>
<td><code>ElasticsearchTarget</code></td>
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
<a href="#targets.triggermesh.io/v1alpha1.ElasticsearchTargetSpec">
ElasticsearchTargetSpec
</a>
</em>
</td>
<td>
<br/>
<br/>
<table>
<tr>
<td>
<code>connection</code></br>
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
<code>indexName</code></br>
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
<code>discardCloudEventContext</code></br>
<em>
bool
</em>
</td>
<td>
<p>Whether to omit CloudEvent context attributes in documents created in Elasticsearch.
When this property is false (default), the entire CloudEvent payload is included.
When this property is true, only the CloudEvent data is included.</p>
</td>
</tr>
<tr>
<td>
<code>eventOptions</code></br>
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
<h3 id="targets.triggermesh.io/v1alpha1.GoogleCloudFirestoreTarget">GoogleCloudFirestoreTarget
</h3>
<p>
<p>GoogleCloudFirestoreTarget is the Schema for the GoogleCloudFirestore Target.</p>
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
targets.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code></br>
string
</td>
<td><code>GoogleCloudFirestoreTarget</code></td>
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
<code>credentialsJson</code></br>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>Credentials represents how Google Firestore credentials should be provided in the secret
Deprecated, please use &ldquo;auth&rdquo; object.</p>
</td>
</tr>
<tr>
<td>
<code>auth</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#GoogleCloudAuth">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.GoogleCloudAuth
</a>
</em>
</td>
<td>
<p>Authentication methods common for all GCP targets.</p>
</td>
</tr>
<tr>
<td>
<code>defaultCollection</code></br>
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
<code>projectID</code></br>
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
<code>discardCloudEventContext</code></br>
<em>
bool
</em>
</td>
<td>
<p>Whether to omit CloudEvent context attributes in documents created in Firestore.
When this property is false (default), the entire CloudEvent payload is included.
When this property is true, only the CloudEvent data is included.</p>
</td>
</tr>
<tr>
<td>
<code>eventOptions</code></br>
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
<h3 id="targets.triggermesh.io/v1alpha1.GoogleCloudPubSubTarget">GoogleCloudPubSubTarget
</h3>
<p>
<p>GoogleCloudPubSubTarget is the Schema the event target.</p>
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
targets.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code></br>
string
</td>
<td><code>GoogleCloudPubSubTarget</code></td>
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
<a href="#targets.triggermesh.io/v1alpha1.GoogleCloudPubSubTargetSpec">
GoogleCloudPubSubTargetSpec
</a>
</em>
</td>
<td>
<br/>
<br/>
<table>
<tr>
<td>
<code>topic</code></br>
<em>
<a href="#targets.triggermesh.io/v1alpha1.GCloudResourceName">
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
<code>credentialsJson</code></br>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>Service account key in JSON format.
<a href="https://cloud.google.com/iam/docs/creating-managing-service-account-keys">https://cloud.google.com/iam/docs/creating-managing-service-account-keys</a>
Deprecated, please use &ldquo;auth&rdquo; object.</p>
</td>
</tr>
<tr>
<td>
<code>auth</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#GoogleCloudAuth">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.GoogleCloudAuth
</a>
</em>
</td>
<td>
<p>Authentication methods common for all GCP targets.</p>
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
<tr>
<td>
<code>eventOptions</code></br>
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
<tr>
<td>
<code>discardCloudEventContext</code></br>
<em>
bool
</em>
</td>
<td>
<p>DiscardCloudEventContext is the policy for how to handle the payload of
the CloudEvent.</p>
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
<h3 id="targets.triggermesh.io/v1alpha1.GoogleCloudStorageTarget">GoogleCloudStorageTarget
</h3>
<p>
<p>GoogleCloudStorageTarget is the Schema for an Google Storage Target.</p>
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
targets.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code></br>
string
</td>
<td><code>GoogleCloudStorageTarget</code></td>
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
<code>credentialsJson</code></br>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>Credentials represents how Google Storage credentials should be provided in the secret
Deprecated, please use &ldquo;auth&rdquo; object.</p>
</td>
</tr>
<tr>
<td>
<code>auth</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#GoogleCloudAuth">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.GoogleCloudAuth
</a>
</em>
</td>
<td>
<p>Authentication methods common for all GCP targets.</p>
</td>
</tr>
<tr>
<td>
<code>bucketName</code></br>
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
<code>discardCloudEventContext</code></br>
<em>
bool
</em>
</td>
<td>
<p>Whether to omit CloudEvent context attributes in objects created in Google Cloud Storage.
When this property is false (default), the entire CloudEvent payload is included.
When this property is true, only the CloudEvent data is included.</p>
</td>
</tr>
<tr>
<td>
<code>eventOptions</code></br>
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
<h3 id="targets.triggermesh.io/v1alpha1.GoogleCloudWorkflowsTarget">GoogleCloudWorkflowsTarget
</h3>
<p>
<p>GoogleCloudWorkflowsTarget is the Schema for an Google Cloud Workflows Target.</p>
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
targets.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code></br>
string
</td>
<td><code>GoogleCloudWorkflowsTarget</code></td>
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
<code>credentialsJson</code></br>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>GoogleCloudWorkflowsApiKey represents how GoogleCloudWorkflows credentials should be provided in the secret
Deprecated, please use &ldquo;auth&rdquo; object.</p>
</td>
</tr>
<tr>
<td>
<code>auth</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#GoogleCloudAuth">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.GoogleCloudAuth
</a>
</em>
</td>
<td>
<p>Authentication methods common for all GCP targets.</p>
</td>
</tr>
<tr>
<td>
<code>eventOptions</code></br>
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
<h3 id="targets.triggermesh.io/v1alpha1.GoogleSheetTarget">GoogleSheetTarget
</h3>
<p>
<p>GoogleSheetTarget is the Schema for an GoogleSheet Target.</p>
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
targets.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code></br>
string
</td>
<td><code>GoogleSheetTarget</code></td>
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
<a href="#targets.triggermesh.io/v1alpha1.GoogleSheetTargetSpec">
GoogleSheetTargetSpec
</a>
</em>
</td>
<td>
<br/>
<br/>
<table>
<tr>
<td>
<code>googleServiceAccount</code></br>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>GoogleSheet credential JSON for auth
Deprecated, please use &ldquo;auth&rdquo; object.</p>
</td>
</tr>
<tr>
<td>
<code>auth</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#GoogleCloudAuth">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.GoogleCloudAuth
</a>
</em>
</td>
<td>
<p>Authentication methods common for all GCP targets.</p>
</td>
</tr>
<tr>
<td>
<code>id</code></br>
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
<code>defaultPrefix</code></br>
<em>
string
</em>
</td>
<td>
<p>DefaultPrefix is a pre-defined prefix for the individual sheets.</p>
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
<h3 id="targets.triggermesh.io/v1alpha1.HTTPTarget">HTTPTarget
</h3>
<p>
<p>HTTPTarget is the Schema for an HTTP Target.</p>
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
targets.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code></br>
string
</td>
<td><code>HTTPTarget</code></td>
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
<code>response</code></br>
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
<code>endpoint</code></br>
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
<code>method</code></br>
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
<code>headers</code></br>
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
<code>skipVerify</code></br>
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
<code>caCertificate</code></br>
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
<code>basicAuthUsername</code></br>
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
<code>basicAuthPassword</code></br>
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
<code>oauthClientID</code></br>
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
<code>oauthClientSecret</code></br>
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
<code>oauthTokenURL</code></br>
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
<code>oauthScopes</code></br>
<em>
[]string
</em>
</td>
<td>
<em>(Optional)</em>
<p>OAuthScopes used for OAuth2 authentication.</p>
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
<h3 id="targets.triggermesh.io/v1alpha1.IBMMQTarget">IBMMQTarget
</h3>
<p>
<p>IBMMQTarget is the Schema the event target.</p>
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
targets.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code></br>
string
</td>
<td><code>IBMMQTarget</code></td>
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
<a href="#targets.triggermesh.io/v1alpha1.IBMMQTargetSpec">
IBMMQTargetSpec
</a>
</em>
</td>
<td>
<br/>
<br/>
<table>
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
<code>replyTo</code></br>
<em>
<a href="#targets.triggermesh.io/v1alpha1.MQReplyOptions">
MQReplyOptions
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
<a href="#targets.triggermesh.io/v1alpha1.Credentials">
Credentials
</a>
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>eventOptions</code></br>
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
<tr>
<td>
<code>discardCloudEventContext</code></br>
<em>
bool
</em>
</td>
<td>
<p>Whether to omit CloudEvent context attributes in messages sent to MQ.
When this property is false (default), the entire CloudEvent payload is included.
When this property is true, only the CloudEvent data is included.</p>
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
<h3 id="targets.triggermesh.io/v1alpha1.JiraTarget">JiraTarget
</h3>
<p>
<p>JiraTarget is the Schema for the Jira Target.</p>
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
targets.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code></br>
string
</td>
<td><code>JiraTarget</code></td>
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
<code>auth</code></br>
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
<code>url</code></br>
<em>
string
</em>
</td>
<td>
<p>URL for Jira service.</p>
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
<h3 id="targets.triggermesh.io/v1alpha1.KafkaTarget">KafkaTarget
</h3>
<p>
<p>KafkaTarget is the Schema for an KafkaTarget.</p>
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
targets.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code></br>
string
</td>
<td><code>KafkaTarget</code></td>
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
<a href="#targets.triggermesh.io/v1alpha1.KafkaTargetSpec">
KafkaTargetSpec
</a>
</em>
</td>
<td>
<br/>
<br/>
<table>
<tr>
<td>
<code>topic</code></br>
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
<code>topicReplicationFactor</code></br>
<em>
int16
</em>
</td>
<td>
<em>(Optional)</em>
<p>TopicReplicationFactor is the number of replicas for the topic.</p>
</td>
</tr>
<tr>
<td>
<code>topicPartitions</code></br>
<em>
int32
</em>
</td>
<td>
<em>(Optional)</em>
<p>TopicPartitions is the number of partitions for the topic.</p>
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
<code>auth</code></br>
<em>
<a href="#targets.triggermesh.io/v1alpha1.KafkaTargetAuth">
KafkaTargetAuth
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>Auth contains Authentication method used to interact with Kafka.</p>
</td>
</tr>
<tr>
<td>
<code>discardCloudEventContext</code></br>
<em>
bool
</em>
</td>
<td>
<p>Whether to omit CloudEvent context attributes in messages sent to Kafka.
When this property is false (default), the entire CloudEvent payload is included.
When this property is true, only the CloudEvent data is included.</p>
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
<h3 id="targets.triggermesh.io/v1alpha1.LogzMetricsTarget">LogzMetricsTarget
</h3>
<p>
<p>LogzMetricsTarget receives CloudEvents typed <code>io.triggermesh.opentelemetry.metrics.push</code>
that fullfil the schema at <a href="https://docs.triggermesh.io/schemas/opentelemetry.metrics.push.json">https://docs.triggermesh.io/schemas/opentelemetry.metrics.push.json</a>
to push new observations.</p>
<p>The target works using an OpenTelemetry to Cortex adapter, and is able to manage
OpenTelemetry Synchronous Kinds.
In case of an error a CloudEvent response conformant with <a href="https://docs.triggermesh.io/schemas/triggermesh.error.json">https://docs.triggermesh.io/schemas/triggermesh.error.json</a>
and with an the attribute extension <code>category: error</code> can be produced.</p>
<p>Due to the buffering nature of this target, not returning an error does not guarantee that the
metrics have been pushed to Logz</p>
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
targets.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code></br>
string
</td>
<td><code>LogzMetricsTarget</code></td>
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
<a href="#targets.triggermesh.io/v1alpha1.LogzMetricsTargetSpec">
LogzMetricsTargetSpec
</a>
</em>
</td>
<td>
<br/>
<br/>
<table>
<tr>
<td>
<code>connection</code></br>
<em>
<a href="#targets.triggermesh.io/v1alpha1.LogzMetricsConnection">
LogzMetricsConnection
</a>
</em>
</td>
<td>
<p>Connection information for LogzMetrics.</p>
</td>
</tr>
<tr>
<td>
<code>instruments</code></br>
<em>
<a href="#targets.triggermesh.io/v1alpha1.Instrument">
[]Instrument
</a>
</em>
</td>
<td>
<p>Instruments configured for pushing metrics. It is mandatory that all metrics
pushed by using this target are pre-registered using this list.</p>
</td>
</tr>
<tr>
<td>
<code>eventOptions</code></br>
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
<h3 id="targets.triggermesh.io/v1alpha1.LogzTarget">LogzTarget
</h3>
<p>
<p>LogzTarget is the Schema for the Logz Target.</p>
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
targets.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code></br>
string
</td>
<td><code>LogzTarget</code></td>
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
<code>shippingToken</code></br>
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
<code>logsListenerURL</code></br>
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
<code>eventOptions</code></br>
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
<h3 id="targets.triggermesh.io/v1alpha1.MongoDBTarget">MongoDBTarget
</h3>
<p>
<p>MongoDBTarget is the Schema for the MongoDB Target.</p>
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
targets.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code></br>
string
</td>
<td><code>MongoDBTarget</code></td>
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
<a href="#targets.triggermesh.io/v1alpha1.MongoDBTargetSpec">
MongoDBTargetSpec
</a>
</em>
</td>
<td>
<br/>
<br/>
<table>
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
<p>ConnectionString defines the MongoDB connection string.</p>
</td>
</tr>
<tr>
<td>
<code>database</code></br>
<em>
string
</em>
</td>
<td>
<p>Database defines the MongoDB database.</p>
</td>
</tr>
<tr>
<td>
<code>collection</code></br>
<em>
string
</em>
</td>
<td>
<p>Collection defines the MongoDB collection.</p>
</td>
</tr>
<tr>
<td>
<code>eventOptions</code></br>
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
<h3 id="targets.triggermesh.io/v1alpha1.OracleTarget">OracleTarget
</h3>
<p>
<p>OracleTarget is the Schema for an Oracle Target.</p>
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
targets.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code></br>
string
</td>
<td><code>OracleTarget</code></td>
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
<a href="#targets.triggermesh.io/v1alpha1.OracleTargetSpec">
OracleTargetSpec
</a>
</em>
</td>
<td>
<br/>
<br/>
<table>
<tr>
<td>
<code>oracleApiPrivateKey</code></br>
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
<code>oracleApiPrivateKeyPassphrase</code></br>
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
<code>oracleApiPrivateKeyFingerprint</code></br>
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
<code>oracleTenancy</code></br>
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
<code>oracleUser</code></br>
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
<code>oracleRegion</code></br>
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
<code>function</code></br>
<em>
<a href="#targets.triggermesh.io/v1alpha1.OracleFunctionSpecSpec">
OracleFunctionSpecSpec
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
<h3 id="targets.triggermesh.io/v1alpha1.SalesforceTarget">SalesforceTarget
</h3>
<p>
<p>SalesforceTarget receives CloudEvents typed <code>io.triggermesh.salesforce.apicall</code>
that fullfil the schema at <a href="https://docs.triggermesh.io/schemas/salesforce.apicall.json">https://docs.triggermesh.io/schemas/salesforce.apicall.json</a>
and consumes the Salesforce API.</p>
<p>Upon a successful call a response is returned typed <code>io.triggermesh.salesforce.apicall.response</code>
containing the returned payload as the CloudEvent data and a <code>category: success</code> extension.
In case of an error the payload will be conformant with <a href="https://docs.triggermesh.io/schemas/triggermesh.error.json">https://docs.triggermesh.io/schemas/triggermesh.error.json</a>
and the CloudEvent extension will be set to <code>category: error</code>.</p>
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
targets.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code></br>
string
</td>
<td><code>SalesforceTarget</code></td>
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
<code>auth</code></br>
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
<code>apiVersion</code></br>
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
<code>eventOptions</code></br>
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
<h3 id="targets.triggermesh.io/v1alpha1.SendGridTarget">SendGridTarget
</h3>
<p>
<p>SendGridTarget is the Schema for an Sendgrid Target.</p>
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
targets.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code></br>
string
</td>
<td><code>SendGridTarget</code></td>
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
<a href="#targets.triggermesh.io/v1alpha1.SendGridTargetSpec">
SendGridTargetSpec
</a>
</em>
</td>
<td>
<br/>
<br/>
<table>
<tr>
<td>
<code>apiKey</code></br>
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
<code>defaultFromEmail</code></br>
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
<code>defaultToEmail</code></br>
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
<code>defaultToName</code></br>
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
<code>defaultFromName</code></br>
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
<code>defaultMessage</code></br>
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
<code>defaultSubject</code></br>
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
<code>eventOptions</code></br>
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
<h3 id="targets.triggermesh.io/v1alpha1.SlackTarget">SlackTarget
</h3>
<p>
<p>SlackTarget defines the schema for the Slack target.</p>
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
targets.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code></br>
string
</td>
<td><code>SlackTarget</code></td>
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
<a href="#targets.triggermesh.io/v1alpha1.SlackTargetSpec">
SlackTargetSpec
</a>
</em>
</td>
<td>
<br/>
<br/>
<table>
<tr>
<td>
<code>token</code></br>
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
<h3 id="targets.triggermesh.io/v1alpha1.SolaceTarget">SolaceTarget
</h3>
<p>
<p>SolaceTarget is the Schema for an SolaceTarget.</p>
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
targets.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code></br>
string
</td>
<td><code>SolaceTarget</code></td>
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
<a href="#targets.triggermesh.io/v1alpha1.SolaceTargetSpec">
SolaceTargetSpec
</a>
</em>
</td>
<td>
<br/>
<br/>
<table>
<tr>
<td>
<code>url</code></br>
<em>
string
</em>
</td>
<td>
<p>URL</p>
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
<p>QueueName</p>
</td>
</tr>
<tr>
<td>
<code>auth</code></br>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SolaceTargetAuth">
SolaceTargetAuth
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>Auth contains Authentication method used to interact with Solace.</p>
</td>
</tr>
<tr>
<td>
<code>discardCloudEventContext</code></br>
<em>
bool
</em>
</td>
<td>
<p>Whether to omit CloudEvent context attributes in messages sent to Solace.
When this property is false (default), the entire CloudEvent payload is included.
When this property is true, only the CloudEvent data is included.</p>
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
<h3 id="targets.triggermesh.io/v1alpha1.SplunkTarget">SplunkTarget
</h3>
<p>
<p>SplunkTarget is the Schema for the event target.</p>
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
targets.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code></br>
string
</td>
<td><code>SplunkTarget</code></td>
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
<code>endpoint</code></br>
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
<code>token</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#ValueFromField">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.ValueFromField
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
<code>index</code></br>
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
<code>skipTLSVerify</code></br>
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
<tr>
<td>
<code>discardCloudEventContext</code></br>
<em>
bool
</em>
</td>
<td>
<p>Whether to omit CloudEvent context attributes in messages sent to Splunk.
When this property is false (default), the entire CloudEvent payload is included.
When this property is true, only the CloudEvent data is included.</p>
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
<h3 id="targets.triggermesh.io/v1alpha1.TwilioTarget">TwilioTarget
</h3>
<p>
<p>TwilioTarget is the Schema for an Twilio Target.</p>
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
targets.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code></br>
string
</td>
<td><code>TwilioTarget</code></td>
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
<a href="#targets.triggermesh.io/v1alpha1.TwilioTargetSpec">
TwilioTargetSpec
</a>
</em>
</td>
<td>
<br/>
<br/>
<table>
<tr>
<td>
<code>sid</code></br>
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
<code>token</code></br>
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
<code>defaultPhoneFrom</code></br>
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
<code>defaultPhoneTo</code></br>
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
<code>eventOptions</code></br>
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
<h3 id="targets.triggermesh.io/v1alpha1.ZendeskTarget">ZendeskTarget
</h3>
<p>
<p>ZendeskTarget is the Schema for an Zendesk Target.</p>
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
targets.triggermesh.io/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code></br>
string
</td>
<td><code>ZendeskTarget</code></td>
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
<a href="#targets.triggermesh.io/v1alpha1.ZendeskTargetSpec">
ZendeskTargetSpec
</a>
</em>
</td>
<td>
<br/>
<br/>
<table>
<tr>
<td>
<code>token</code></br>
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
<code>subdomain</code></br>
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
<code>email</code></br>
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
<code>subject</code></br>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
<p>Subject a static subject assignemnt for every ticket.</p>
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
<h3 id="targets.triggermesh.io/v1alpha1.AWSComprehendTargetSpec">AWSComprehendTargetSpec
</h3>
<p>
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.AWSComprehendTarget">AWSComprehendTarget</a>)
</p>
<p>
<p>AWSComprehendTargetSpec defines the desired state of the event target.</p>
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
<code>auth</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#AWSAuth">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.AWSAuth
</a>
</em>
</td>
<td>
<p>AWS-specific authentication methods.</p>
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
<p>Region to use for calling into Comprehend API.</p>
</td>
</tr>
<tr>
<td>
<code>eventOptions</code></br>
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
<code>language</code></br>
<em>
string
</em>
</td>
<td>
<p>Language code to use to interact with Comprehend. The supported list can be found at: <a href="https://docs.aws.amazon.com/comprehend/latest/dg/supported-languages.html">https://docs.aws.amazon.com/comprehend/latest/dg/supported-languages.html</a></p>
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
<h3 id="targets.triggermesh.io/v1alpha1.AWSDynamoDBTargetSpec">AWSDynamoDBTargetSpec
</h3>
<p>
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.AWSDynamoDBTarget">AWSDynamoDBTarget</a>)
</p>
<p>
<p>AWSDynamoDBTargetSpec defines the desired state of the event target.</p>
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
<code>auth</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#AWSAuth">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.AWSAuth
</a>
</em>
</td>
<td>
<p>AWS-specific authentication methods.</p>
</td>
</tr>
<tr>
<td>
<code>arn</code></br>
<em>
string
</em>
</td>
<td>
<p>Table ARN
<a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazondynamodb.html#amazondynamodb-resources-for-iam-policies">https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazondynamodb.html#amazondynamodb-resources-for-iam-policies</a></p>
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
<h3 id="targets.triggermesh.io/v1alpha1.AWSEventBridgeTargetSpec">AWSEventBridgeTargetSpec
</h3>
<p>
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.AWSEventBridgeTarget">AWSEventBridgeTarget</a>)
</p>
<p>
<p>AWSEventBridgeTargetSpec defines the desired state of the event target.</p>
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
<code>auth</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#AWSAuth">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.AWSAuth
</a>
</em>
</td>
<td>
<p>AWS-specific authentication methods.</p>
</td>
</tr>
<tr>
<td>
<code>arn</code></br>
<em>
string
</em>
</td>
<td>
<p>Amazon Resource Name of the EventBridge Event Bus.
<a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazoneventbridge.html">https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazoneventbridge.html</a></p>
</td>
</tr>
<tr>
<td>
<code>discardCloudEventContext</code></br>
<em>
bool
</em>
</td>
<td>
<p>Whether to omit CloudEvent context attributes in notifications sent to EventBridge.
When this property is false (default), the entire CloudEvent payload is included.
When this property is true, only the CloudEvent data is included.</p>
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
<h3 id="targets.triggermesh.io/v1alpha1.AWSKinesisTargetSpec">AWSKinesisTargetSpec
</h3>
<p>
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.AWSKinesisTarget">AWSKinesisTarget</a>)
</p>
<p>
<p>AWSKinesisTargetSpec defines the desired state of the event target.</p>
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
<code>auth</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#AWSAuth">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.AWSAuth
</a>
</em>
</td>
<td>
<p>AWS-specific authentication methods.</p>
</td>
</tr>
<tr>
<td>
<code>arn</code></br>
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
<code>partition</code></br>
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
<code>discardCloudEventContext</code></br>
<em>
bool
</em>
</td>
<td>
<p>Whether to omit CloudEvent context attributes in records created in Kinesis.
When this property is false (default), the entire CloudEvent payload is included.
When this property is true, only the CloudEvent data is included.</p>
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
<h3 id="targets.triggermesh.io/v1alpha1.AWSLambdaTargetSpec">AWSLambdaTargetSpec
</h3>
<p>
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.AWSLambdaTarget">AWSLambdaTarget</a>)
</p>
<p>
<p>AWSLambdaTargetSpec defines the desired state of the event target.</p>
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
<code>auth</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#AWSAuth">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.AWSAuth
</a>
</em>
</td>
<td>
<p>AWS-specific authentication methods.</p>
</td>
</tr>
<tr>
<td>
<code>arn</code></br>
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
<code>discardCloudEventContext</code></br>
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
<h3 id="targets.triggermesh.io/v1alpha1.AWSS3TargetSpec">AWSS3TargetSpec
</h3>
<p>
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.AWSS3Target">AWSS3Target</a>)
</p>
<p>
<p>AWSS3TargetSpec holds the desired state of the even target.</p>
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
<code>auth</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#AWSAuth">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.AWSAuth
</a>
</em>
</td>
<td>
<p>AWS-specific authentication methods.</p>
</td>
</tr>
<tr>
<td>
<code>arn</code></br>
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
<code>discardCloudEventContext</code></br>
<em>
bool
</em>
</td>
<td>
<p>Whether to omit CloudEvent context attributes in objects created in S3.
When this property is false (default), the entire CloudEvent payload is included.
When this property is true, only the CloudEvent data is included.</p>
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
<h3 id="targets.triggermesh.io/v1alpha1.AWSSNSTargetSpec">AWSSNSTargetSpec
</h3>
<p>
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.AWSSNSTarget">AWSSNSTarget</a>)
</p>
<p>
<p>AWSSNSTargetSpec defines the desired state of the event target.</p>
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
<code>auth</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#AWSAuth">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.AWSAuth
</a>
</em>
</td>
<td>
<p>AWS-specific authentication methods.</p>
</td>
</tr>
<tr>
<td>
<code>arn</code></br>
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
<code>discardCloudEventContext</code></br>
<em>
bool
</em>
</td>
<td>
<p>Whether to omit CloudEvent context attributes in notifications sent to SNS.
When this property is false (default), the entire CloudEvent payload is included.
When this property is true, only the CloudEvent data is included.</p>
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
<h3 id="targets.triggermesh.io/v1alpha1.AWSSQSTargetSpec">AWSSQSTargetSpec
</h3>
<p>
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.AWSSQSTarget">AWSSQSTarget</a>)
</p>
<p>
<p>AWSSQSTargetSpec defines the desired state of the event target.</p>
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
<code>auth</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#AWSAuth">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.AWSAuth
</a>
</em>
</td>
<td>
<p>AWS-specific authentication methods.</p>
</td>
</tr>
<tr>
<td>
<code>arn</code></br>
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
<code>messageGroupId</code></br>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
<p>Message Group ID is required for FIFO based queues, and is used to uniquely identify the event producer
<a href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues-understanding-logic.html">https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues-understanding-logic.html</a></p>
</td>
</tr>
<tr>
<td>
<code>discardCloudEventContext</code></br>
<em>
bool
</em>
</td>
<td>
<p>Whether to omit CloudEvent context attributes in messages sent to SQS.
When this property is false (default), the entire CloudEvent payload is included.
When this property is true, only the CloudEvent data is included.</p>
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
<h3 id="targets.triggermesh.io/v1alpha1.AzureAuth">AzureAuth
</h3>
<p>
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.AzureEventHubsTargetSpec">AzureEventHubsTargetSpec</a>, 
<a href="#targets.triggermesh.io/v1alpha1.AzureSentinelTargetSpec">AzureSentinelTargetSpec</a>, 
<a href="#targets.triggermesh.io/v1alpha1.AzureServiceBusTargetSpec">AzureServiceBusTargetSpec</a>)
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
<a href="#targets.triggermesh.io/v1alpha1.AzureServicePrincipal">
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
<a href="#targets.triggermesh.io/v1alpha1.AzureSASToken">
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
<h3 id="targets.triggermesh.io/v1alpha1.AzureEventHubsTargetSpec">AzureEventHubsTargetSpec
</h3>
<p>
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.AzureEventHubsTarget">AzureEventHubsTarget</a>)
</p>
<p>
<p>AzureEventHubsTargetSpec defines the desired state of the event target.</p>
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
<code>auth</code></br>
<em>
<a href="#targets.triggermesh.io/v1alpha1.AzureAuth">
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
<code>eventHubID</code></br>
<em>
<a href="#targets.triggermesh.io/v1alpha1.AzureResourceID">
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
<code>eventOptions</code></br>
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
<tr>
<td>
<code>discardCloudEventContext</code></br>
<em>
bool
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
<h3 id="targets.triggermesh.io/v1alpha1.AzureResourceID">AzureResourceID
</h3>
<p>
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.AzureEventHubsTargetSpec">AzureEventHubsTargetSpec</a>, 
<a href="#targets.triggermesh.io/v1alpha1.AzureServiceBusTargetSpec">AzureServiceBusTargetSpec</a>)
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
<h3 id="targets.triggermesh.io/v1alpha1.AzureSASToken">AzureSASToken
</h3>
<p>
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.AzureAuth">AzureAuth</a>)
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
<h3 id="targets.triggermesh.io/v1alpha1.AzureSentinelTargetSpec">AzureSentinelTargetSpec
</h3>
<p>
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.AzureSentinelTarget">AzureSentinelTarget</a>)
</p>
<p>
<p>AzureSentinelTargetSpec holds the desired state of the event target.</p>
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
<code>subscriptionID</code></br>
<em>
string
</em>
</td>
<td>
<p>SubscriptionID refers to the Azure Subscription ID that the Azure Sentinel instance is associated with.</p>
</td>
</tr>
<tr>
<td>
<code>resourceGroup</code></br>
<em>
string
</em>
</td>
<td>
<p>ResourceGroup refers to the resource group where the Azure Sentinel instance is deployed.</p>
</td>
</tr>
<tr>
<td>
<code>workspace</code></br>
<em>
string
</em>
</td>
<td>
<p>Workspace refers to the workspace name in Azure Sentinel.</p>
</td>
</tr>
<tr>
<td>
<code>auth</code></br>
<em>
<a href="#targets.triggermesh.io/v1alpha1.AzureAuth">
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
<code>eventOptions</code></br>
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
<h3 id="targets.triggermesh.io/v1alpha1.AzureServiceBusTargetSpec">AzureServiceBusTargetSpec
</h3>
<p>
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.AzureServiceBusTarget">AzureServiceBusTarget</a>)
</p>
<p>
<p>AzureServiceBusTargetSpec defines the desired state of the event target.</p>
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
<code>topicID</code></br>
<em>
<a href="#targets.triggermesh.io/v1alpha1.AzureResourceID">
AzureResourceID
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>The resource ID the Service Bus Topic.</p>
<p>Expected format:
- /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ServiceBus/namespaces/{namespaceName}/topics/{topicName}</p>
</td>
</tr>
<tr>
<td>
<code>queueID</code></br>
<em>
<a href="#targets.triggermesh.io/v1alpha1.AzureResourceID">
AzureResourceID
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>The resource ID the Service Bus Queue.</p>
<p>Expected format:
- /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ServiceBus/namespaces/{namespaceName}/queues/{queueName}</p>
</td>
</tr>
<tr>
<td>
<code>auth</code></br>
<em>
<a href="#targets.triggermesh.io/v1alpha1.AzureAuth">
AzureAuth
</a>
</em>
</td>
<td>
<p>Authentication method to interact with the Azure Service Bus API.</p>
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
<code>eventOptions</code></br>
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
<tr>
<td>
<code>discardCloudEventContext</code></br>
<em>
bool
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
<h3 id="targets.triggermesh.io/v1alpha1.AzureServicePrincipal">AzureServicePrincipal
</h3>
<p>
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.AzureAuth">AzureAuth</a>)
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
<h3 id="targets.triggermesh.io/v1alpha1.CloudEventsCredentials">CloudEventsCredentials
</h3>
<p>
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.CloudEventsTargetSpec">CloudEventsTargetSpec</a>)
</p>
<p>
<p>CloudEventsCredentials to be used when sending requests.</p>
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
<code>basicAuth</code></br>
<em>
<a href="#targets.triggermesh.io/v1alpha1.HTTPBasicAuth">
HTTPBasicAuth
</a>
</em>
</td>
<td>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.CloudEventsTargetSpec">CloudEventsTargetSpec
</h3>
<p>
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.CloudEventsTarget">CloudEventsTarget</a>)
</p>
<p>
<p>CloudEventsTargetSpec defines the desired state of the event target.</p>
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
<a href="#targets.triggermesh.io/v1alpha1.CloudEventsCredentials">
CloudEventsCredentials
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>Credentials to connect to the remote endpoint.</p>
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
<p>Path at the remote endpoint under which requests are accepted.</p>
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
<p>Endpoint that accept CloudEvents.</p>
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
<p>AdapterOverrides sets runtime parameters to the adapter instance.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.Connection">Connection
</h3>
<p>
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.ElasticsearchTargetSpec">ElasticsearchTargetSpec</a>)
</p>
<p>
<p>Connection contains connection and configuration parameters</p>
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
<code>addresses</code></br>
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
<code>caCert</code></br>
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
<code>skipVerify</code></br>
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
<code>username</code></br>
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
<code>password</code></br>
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
<code>apiKey</code></br>
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
<h3 id="targets.triggermesh.io/v1alpha1.Credentials">Credentials
</h3>
<p>
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.IBMMQTargetSpec">IBMMQTargetSpec</a>)
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
<a href="#targets.triggermesh.io/v1alpha1.TLSSpec">
TLSSpec
</a>
</em>
</td>
<td>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.DatadogTargetSpec">DatadogTargetSpec
</h3>
<p>
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.DatadogTarget">DatadogTarget</a>)
</p>
<p>
<p>DatadogTargetSpec defines the desired state of the event target.</p>
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
<code>apiKey</code></br>
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
<code>site</code></br>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
<p>DatadogSite controls the site of the Datadog intake API, defaults to <code>datadoghq.com</code></p>
</td>
</tr>
<tr>
<td>
<code>metricPrefix</code></br>
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
<code>eventOptions</code></br>
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
<h3 id="targets.triggermesh.io/v1alpha1.ElasticsearchTargetSpec">ElasticsearchTargetSpec
</h3>
<p>
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.ElasticsearchTarget">ElasticsearchTarget</a>)
</p>
<p>
<p>ElasticsearchTargetSpec defines the desired state of the event target.</p>
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
<code>indexName</code></br>
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
<code>discardCloudEventContext</code></br>
<em>
bool
</em>
</td>
<td>
<p>Whether to omit CloudEvent context attributes in documents created in Elasticsearch.
When this property is false (default), the entire CloudEvent payload is included.
When this property is true, only the CloudEvent data is included.</p>
</td>
</tr>
<tr>
<td>
<code>eventOptions</code></br>
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
<h3 id="targets.triggermesh.io/v1alpha1.EventOptions">EventOptions
</h3>
<p>
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.AWSComprehendTargetSpec">AWSComprehendTargetSpec</a>, 
<a href="#targets.triggermesh.io/v1alpha1.AzureEventHubsTargetSpec">AzureEventHubsTargetSpec</a>, 
<a href="#targets.triggermesh.io/v1alpha1.AzureSentinelTargetSpec">AzureSentinelTargetSpec</a>, 
<a href="#targets.triggermesh.io/v1alpha1.AzureServiceBusTargetSpec">AzureServiceBusTargetSpec</a>, 
<a href="#targets.triggermesh.io/v1alpha1.DatadogTargetSpec">DatadogTargetSpec</a>, 
<a href="#targets.triggermesh.io/v1alpha1.ElasticsearchTargetSpec">ElasticsearchTargetSpec</a>, 
<a href="#targets.triggermesh.io/v1alpha1.GoogleCloudFirestoreTargetSpec">GoogleCloudFirestoreTargetSpec</a>, 
<a href="#targets.triggermesh.io/v1alpha1.GoogleCloudPubSubTargetSpec">GoogleCloudPubSubTargetSpec</a>, 
<a href="#targets.triggermesh.io/v1alpha1.GoogleCloudStorageTargetSpec">GoogleCloudStorageTargetSpec</a>, 
<a href="#targets.triggermesh.io/v1alpha1.GoogleCloudWorkflowsTargetSpec">GoogleCloudWorkflowsTargetSpec</a>, 
<a href="#targets.triggermesh.io/v1alpha1.IBMMQTargetSpec">IBMMQTargetSpec</a>, 
<a href="#targets.triggermesh.io/v1alpha1.LogzMetricsTargetSpec">LogzMetricsTargetSpec</a>, 
<a href="#targets.triggermesh.io/v1alpha1.LogzTargetSpec">LogzTargetSpec</a>, 
<a href="#targets.triggermesh.io/v1alpha1.MongoDBTargetSpec">MongoDBTargetSpec</a>, 
<a href="#targets.triggermesh.io/v1alpha1.SalesforceTargetSpec">SalesforceTargetSpec</a>, 
<a href="#targets.triggermesh.io/v1alpha1.SendGridTargetSpec">SendGridTargetSpec</a>, 
<a href="#targets.triggermesh.io/v1alpha1.TwilioTargetSpec">TwilioTargetSpec</a>)
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
<h3 id="targets.triggermesh.io/v1alpha1.GCloudResourceName">GCloudResourceName
</h3>
<p>
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.GoogleCloudPubSubTargetSpec">GoogleCloudPubSubTargetSpec</a>)
</p>
<p>
<p>GCloudResourceName represents a fully qualified resource name,
as described at</p>
<pre><code>https://cloud.google.com/apis/design/resource_names
</code></pre>
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
<h3 id="targets.triggermesh.io/v1alpha1.GoogleCloudFirestoreTargetSpec">GoogleCloudFirestoreTargetSpec
</h3>
<p>
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.GoogleCloudFirestoreTarget">GoogleCloudFirestoreTarget</a>)
</p>
<p>
<p>GoogleCloudFirestoreTargetSpec defines the desired state of the event target.</p>
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
<code>credentialsJson</code></br>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>Credentials represents how Google Firestore credentials should be provided in the secret
Deprecated, please use &ldquo;auth&rdquo; object.</p>
</td>
</tr>
<tr>
<td>
<code>auth</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#GoogleCloudAuth">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.GoogleCloudAuth
</a>
</em>
</td>
<td>
<p>Authentication methods common for all GCP targets.</p>
</td>
</tr>
<tr>
<td>
<code>defaultCollection</code></br>
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
<code>projectID</code></br>
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
<code>discardCloudEventContext</code></br>
<em>
bool
</em>
</td>
<td>
<p>Whether to omit CloudEvent context attributes in documents created in Firestore.
When this property is false (default), the entire CloudEvent payload is included.
When this property is true, only the CloudEvent data is included.</p>
</td>
</tr>
<tr>
<td>
<code>eventOptions</code></br>
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
<h3 id="targets.triggermesh.io/v1alpha1.GoogleCloudPubSubTargetSpec">GoogleCloudPubSubTargetSpec
</h3>
<p>
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.GoogleCloudPubSubTarget">GoogleCloudPubSubTarget</a>)
</p>
<p>
<p>GoogleCloudPubSubTargetSpec holds the desired state of the event target.</p>
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
<a href="#targets.triggermesh.io/v1alpha1.GCloudResourceName">
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
<code>credentialsJson</code></br>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>Service account key in JSON format.
<a href="https://cloud.google.com/iam/docs/creating-managing-service-account-keys">https://cloud.google.com/iam/docs/creating-managing-service-account-keys</a>
Deprecated, please use &ldquo;auth&rdquo; object.</p>
</td>
</tr>
<tr>
<td>
<code>auth</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#GoogleCloudAuth">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.GoogleCloudAuth
</a>
</em>
</td>
<td>
<p>Authentication methods common for all GCP targets.</p>
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
<tr>
<td>
<code>eventOptions</code></br>
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
<tr>
<td>
<code>discardCloudEventContext</code></br>
<em>
bool
</em>
</td>
<td>
<p>DiscardCloudEventContext is the policy for how to handle the payload of
the CloudEvent.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.GoogleCloudPubSubTargetStatus">GoogleCloudPubSubTargetStatus
</h3>
<p>
<p>GoogleCloudPubSubTargetStatus communicates the observed state of the event target.</p>
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
<h3 id="targets.triggermesh.io/v1alpha1.GoogleCloudStorageTargetSpec">GoogleCloudStorageTargetSpec
</h3>
<p>
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.GoogleCloudStorageTarget">GoogleCloudStorageTarget</a>)
</p>
<p>
<p>GoogleCloudStorageTargetSpec defines the desired state of the event target.</p>
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
<code>credentialsJson</code></br>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>Credentials represents how Google Storage credentials should be provided in the secret
Deprecated, please use &ldquo;auth&rdquo; object.</p>
</td>
</tr>
<tr>
<td>
<code>auth</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#GoogleCloudAuth">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.GoogleCloudAuth
</a>
</em>
</td>
<td>
<p>Authentication methods common for all GCP targets.</p>
</td>
</tr>
<tr>
<td>
<code>bucketName</code></br>
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
<code>discardCloudEventContext</code></br>
<em>
bool
</em>
</td>
<td>
<p>Whether to omit CloudEvent context attributes in objects created in Google Cloud Storage.
When this property is false (default), the entire CloudEvent payload is included.
When this property is true, only the CloudEvent data is included.</p>
</td>
</tr>
<tr>
<td>
<code>eventOptions</code></br>
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
<h3 id="targets.triggermesh.io/v1alpha1.GoogleCloudWorkflowsTargetSpec">GoogleCloudWorkflowsTargetSpec
</h3>
<p>
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.GoogleCloudWorkflowsTarget">GoogleCloudWorkflowsTarget</a>)
</p>
<p>
<p>GoogleCloudWorkflowsTargetSpec defines the desired state of the event target.</p>
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
<code>credentialsJson</code></br>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>GoogleCloudWorkflowsApiKey represents how GoogleCloudWorkflows credentials should be provided in the secret
Deprecated, please use &ldquo;auth&rdquo; object.</p>
</td>
</tr>
<tr>
<td>
<code>auth</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#GoogleCloudAuth">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.GoogleCloudAuth
</a>
</em>
</td>
<td>
<p>Authentication methods common for all GCP targets.</p>
</td>
</tr>
<tr>
<td>
<code>eventOptions</code></br>
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
<h3 id="targets.triggermesh.io/v1alpha1.GoogleSheetTargetSpec">GoogleSheetTargetSpec
</h3>
<p>
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.GoogleSheetTarget">GoogleSheetTarget</a>)
</p>
<p>
<p>GoogleSheetTargetSpec defines the desired state of the event target.</p>
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
<code>googleServiceAccount</code></br>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>GoogleSheet credential JSON for auth
Deprecated, please use &ldquo;auth&rdquo; object.</p>
</td>
</tr>
<tr>
<td>
<code>auth</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#GoogleCloudAuth">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.GoogleCloudAuth
</a>
</em>
</td>
<td>
<p>Authentication methods common for all GCP targets.</p>
</td>
</tr>
<tr>
<td>
<code>id</code></br>
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
<code>defaultPrefix</code></br>
<em>
string
</em>
</td>
<td>
<p>DefaultPrefix is a pre-defined prefix for the individual sheets.</p>
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
<h3 id="targets.triggermesh.io/v1alpha1.HTTPBasicAuth">HTTPBasicAuth
</h3>
<p>
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.CloudEventsCredentials">CloudEventsCredentials</a>)
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
<h3 id="targets.triggermesh.io/v1alpha1.HTTPEventResponse">HTTPEventResponse
</h3>
<p>
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.HTTPTargetSpec">HTTPTargetSpec</a>)
</p>
<p>
<p>HTTPEventResponse for reply events context.</p>
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
<code>eventType</code></br>
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
<code>eventSource</code></br>
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
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.HTTPTarget">HTTPTarget</a>)
</p>
<p>
<p>HTTPTargetSpec defines the desired state of the event target.</p>
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
<code>response</code></br>
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
<code>endpoint</code></br>
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
<code>method</code></br>
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
<code>headers</code></br>
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
<code>skipVerify</code></br>
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
<code>caCertificate</code></br>
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
<code>basicAuthUsername</code></br>
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
<code>basicAuthPassword</code></br>
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
<code>oauthClientID</code></br>
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
<code>oauthClientSecret</code></br>
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
<code>oauthTokenURL</code></br>
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
<code>oauthScopes</code></br>
<em>
[]string
</em>
</td>
<td>
<em>(Optional)</em>
<p>OAuthScopes used for OAuth2 authentication.</p>
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
<h3 id="targets.triggermesh.io/v1alpha1.IBMMQTargetSpec">IBMMQTargetSpec
</h3>
<p>
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.IBMMQTarget">IBMMQTarget</a>)
</p>
<p>
<p>IBMMQTargetSpec defines the desired state of the event target.</p>
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
<code>replyTo</code></br>
<em>
<a href="#targets.triggermesh.io/v1alpha1.MQReplyOptions">
MQReplyOptions
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
<a href="#targets.triggermesh.io/v1alpha1.Credentials">
Credentials
</a>
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>eventOptions</code></br>
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
<tr>
<td>
<code>discardCloudEventContext</code></br>
<em>
bool
</em>
</td>
<td>
<p>Whether to omit CloudEvent context attributes in messages sent to MQ.
When this property is false (default), the entire CloudEvent payload is included.
When this property is true, only the CloudEvent data is included.</p>
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
<h3 id="targets.triggermesh.io/v1alpha1.Instrument">Instrument
</h3>
<p>
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.LogzMetricsTargetSpec">LogzMetricsTargetSpec</a>)
</p>
<p>
<p>Instrument push metrics for.</p>
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
<p>Name for the Instrument.</p>
</td>
</tr>
<tr>
<td>
<code>description</code></br>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
<p>Description for the Instrument</p>
</td>
</tr>
<tr>
<td>
<code>instrument</code></br>
<em>
<a href="#targets.triggermesh.io/v1alpha1.InstrumentKind">
InstrumentKind
</a>
</em>
</td>
<td>
<p>Instrument Kind as defined by OpenTelemetry. Supported values are:</p>
<ul>
<li>Histogram: for absolute values that can be aggregated.</li>
<li>Counter: for delta values that increase monotonically.</li>
<li>UpDownCounter: for delta values that can increase and decrease.</li>
</ul>
</td>
</tr>
<tr>
<td>
<code>number</code></br>
<em>
<a href="#targets.triggermesh.io/v1alpha1.NumberKind">
NumberKind
</a>
</em>
</td>
<td>
<p>Number Kind as defined by OpenTelemetry, defines the measure data type
accepted by the Instrument. Supported values are:</p>
<ul>
<li>Int64.</li>
<li>Float64.</li>
</ul>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.InstrumentKind">InstrumentKind
(<code>string</code> alias)</p></h3>
<p>
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.Instrument">Instrument</a>)
</p>
<p>
<p>InstrumentKind as defined by OpenTelemetry.</p>
</p>
<h3 id="targets.triggermesh.io/v1alpha1.JiraAuth">JiraAuth
</h3>
<p>
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.JiraTargetSpec">JiraTargetSpec</a>)
</p>
<p>
<p>JiraAuth contains Jira credentials.</p>
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
<code>user</code></br>
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
<code>token</code></br>
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
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.JiraTarget">JiraTarget</a>)
</p>
<p>
<p>JiraTargetSpec defines the desired state of the event target.</p>
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
<code>auth</code></br>
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
<code>url</code></br>
<em>
string
</em>
</td>
<td>
<p>URL for Jira service.</p>
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
<h3 id="targets.triggermesh.io/v1alpha1.KafkaTargetAuth">KafkaTargetAuth
</h3>
<p>
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.KafkaTargetSpec">KafkaTargetSpec</a>)
</p>
<p>
<p>KafkaTargetAuth contains Authentication method used to interact with Kafka.</p>
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
<a href="#targets.triggermesh.io/v1alpha1.KafkaTargetKerberos">
KafkaTargetKerberos
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
<a href="#targets.triggermesh.io/v1alpha1.KafkaTargetTLSAuth">
KafkaTargetTLSAuth
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
<h3 id="targets.triggermesh.io/v1alpha1.KafkaTargetKerberos">KafkaTargetKerberos
</h3>
<p>
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.KafkaTargetAuth">KafkaTargetAuth</a>)
</p>
<p>
<p>KafkaTargetKerberos contains kerberos credentials.</p>
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
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.KafkaTargetSpec">KafkaTargetSpec
</h3>
<p>
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.KafkaTarget">KafkaTarget</a>)
</p>
<p>
<p>KafkaTargetSpec defines the desired state of the event target.</p>
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
string
</em>
</td>
<td>
<p>Topic where messages are produced.</p>
</td>
</tr>
<tr>
<td>
<code>topicReplicationFactor</code></br>
<em>
int16
</em>
</td>
<td>
<em>(Optional)</em>
<p>TopicReplicationFactor is the number of replicas for the topic.</p>
</td>
</tr>
<tr>
<td>
<code>topicPartitions</code></br>
<em>
int32
</em>
</td>
<td>
<em>(Optional)</em>
<p>TopicPartitions is the number of partitions for the topic.</p>
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
<code>auth</code></br>
<em>
<a href="#targets.triggermesh.io/v1alpha1.KafkaTargetAuth">
KafkaTargetAuth
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>Auth contains Authentication method used to interact with Kafka.</p>
</td>
</tr>
<tr>
<td>
<code>discardCloudEventContext</code></br>
<em>
bool
</em>
</td>
<td>
<p>Whether to omit CloudEvent context attributes in messages sent to Kafka.
When this property is false (default), the entire CloudEvent payload is included.
When this property is true, only the CloudEvent data is included.</p>
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
<h3 id="targets.triggermesh.io/v1alpha1.KafkaTargetTLSAuth">KafkaTargetTLSAuth
</h3>
<p>
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.KafkaTargetAuth">KafkaTargetAuth</a>)
</p>
<p>
<p>KafkaTargetTLSAuth contains kerberos credentials.</p>
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
<h3 id="targets.triggermesh.io/v1alpha1.Keystore">Keystore
</h3>
<p>
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.TLSSpec">TLSSpec</a>)
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
<h3 id="targets.triggermesh.io/v1alpha1.LogzMetricsConnection">LogzMetricsConnection
</h3>
<p>
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.LogzMetricsTargetSpec">LogzMetricsTargetSpec</a>)
</p>
<p>
<p>LogzMetricsConnection contains the information to connect to a Logz tenant to push metrics.</p>
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
<code>token</code></br>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
<p>Token for connecting to Logz metrics listener.</p>
</td>
</tr>
<tr>
<td>
<code>listenerURL</code></br>
<em>
string
</em>
</td>
<td>
<p>ListenerURL for pushing metrics.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.LogzMetricsTargetSpec">LogzMetricsTargetSpec
</h3>
<p>
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.LogzMetricsTarget">LogzMetricsTarget</a>)
</p>
<p>
<p>LogzMetricsTargetSpec defines the desired state of the event target.</p>
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
<a href="#targets.triggermesh.io/v1alpha1.LogzMetricsConnection">
LogzMetricsConnection
</a>
</em>
</td>
<td>
<p>Connection information for LogzMetrics.</p>
</td>
</tr>
<tr>
<td>
<code>instruments</code></br>
<em>
<a href="#targets.triggermesh.io/v1alpha1.Instrument">
[]Instrument
</a>
</em>
</td>
<td>
<p>Instruments configured for pushing metrics. It is mandatory that all metrics
pushed by using this target are pre-registered using this list.</p>
</td>
</tr>
<tr>
<td>
<code>eventOptions</code></br>
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
<h3 id="targets.triggermesh.io/v1alpha1.LogzTargetSpec">LogzTargetSpec
</h3>
<p>
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.LogzTarget">LogzTarget</a>)
</p>
<p>
<p>LogzTargetSpec defines the desired state of the event target.</p>
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
<code>shippingToken</code></br>
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
<code>logsListenerURL</code></br>
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
<code>eventOptions</code></br>
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
<h3 id="targets.triggermesh.io/v1alpha1.MQReplyOptions">MQReplyOptions
</h3>
<p>
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.IBMMQTargetSpec">IBMMQTargetSpec</a>)
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
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.MongoDBTargetSpec">MongoDBTargetSpec
</h3>
<p>
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.MongoDBTarget">MongoDBTarget</a>)
</p>
<p>
<p>MongoDBTargetSpec defines the desired state of the event target.</p>
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
<code>connectionString</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#ValueFromField">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.ValueFromField
</a>
</em>
</td>
<td>
<p>ConnectionString defines the MongoDB connection string.</p>
</td>
</tr>
<tr>
<td>
<code>database</code></br>
<em>
string
</em>
</td>
<td>
<p>Database defines the MongoDB database.</p>
</td>
</tr>
<tr>
<td>
<code>collection</code></br>
<em>
string
</em>
</td>
<td>
<p>Collection defines the MongoDB collection.</p>
</td>
</tr>
<tr>
<td>
<code>eventOptions</code></br>
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
<h3 id="targets.triggermesh.io/v1alpha1.NumberKind">NumberKind
(<code>string</code> alias)</p></h3>
<p>
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.Instrument">Instrument</a>)
</p>
<p>
<p>NumberKind as defined by OpenTelemetry.</p>
</p>
<h3 id="targets.triggermesh.io/v1alpha1.OracleFunctionSpecSpec">OracleFunctionSpecSpec
</h3>
<p>
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.OracleTargetSpec">OracleTargetSpec</a>)
</p>
<p>
<p>OracleFunctionSpecSpec defines the desired state of the event target.</p>
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
<code>function</code></br>
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
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.OracleTarget">OracleTarget</a>)
</p>
<p>
<p>OracleTargetSpec defines the desired state of the event target.</p>
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
<code>oracleApiPrivateKey</code></br>
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
<code>oracleApiPrivateKeyPassphrase</code></br>
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
<code>oracleApiPrivateKeyFingerprint</code></br>
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
<code>oracleTenancy</code></br>
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
<code>oracleUser</code></br>
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
<code>oracleRegion</code></br>
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
<code>function</code></br>
<em>
<a href="#targets.triggermesh.io/v1alpha1.OracleFunctionSpecSpec">
OracleFunctionSpecSpec
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
<h3 id="targets.triggermesh.io/v1alpha1.SalesforceAuth">SalesforceAuth
</h3>
<p>
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.SalesforceTargetSpec">SalesforceTargetSpec</a>)
</p>
<p>
<p>SalesforceAuth contains OAuth JWT information to interact with the
Salesforce API. See:
<a href="https://help.salesforce.com/s/articleView?id=sf.remoteaccess_oauth_jwt_flow.htm">https://help.salesforce.com/s/articleView?id=sf.remoteaccess_oauth_jwt_flow.htm</a></p>
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
<p>ClientID for the Salesforce connected app.</p>
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
<p>Server points to the authorization URL.</p>
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
<p>User configuring the connected app.</p>
</td>
</tr>
<tr>
<td>
<code>certKey</code></br>
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
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.SalesforceTarget">SalesforceTarget</a>)
</p>
<p>
<p>SalesforceTargetSpec defines the desired state of the event target.</p>
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
<code>auth</code></br>
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
<code>apiVersion</code></br>
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
<code>eventOptions</code></br>
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
<h3 id="targets.triggermesh.io/v1alpha1.SecretValueFromSource">SecretValueFromSource
</h3>
<p>
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.Connection">Connection</a>, 
<a href="#targets.triggermesh.io/v1alpha1.DatadogTargetSpec">DatadogTargetSpec</a>, 
<a href="#targets.triggermesh.io/v1alpha1.GoogleCloudFirestoreTargetSpec">GoogleCloudFirestoreTargetSpec</a>, 
<a href="#targets.triggermesh.io/v1alpha1.GoogleCloudPubSubTargetSpec">GoogleCloudPubSubTargetSpec</a>, 
<a href="#targets.triggermesh.io/v1alpha1.GoogleCloudStorageTargetSpec">GoogleCloudStorageTargetSpec</a>, 
<a href="#targets.triggermesh.io/v1alpha1.GoogleCloudWorkflowsTargetSpec">GoogleCloudWorkflowsTargetSpec</a>, 
<a href="#targets.triggermesh.io/v1alpha1.GoogleSheetTargetSpec">GoogleSheetTargetSpec</a>, 
<a href="#targets.triggermesh.io/v1alpha1.HTTPTargetSpec">HTTPTargetSpec</a>, 
<a href="#targets.triggermesh.io/v1alpha1.JiraAuth">JiraAuth</a>, 
<a href="#targets.triggermesh.io/v1alpha1.LogzMetricsConnection">LogzMetricsConnection</a>, 
<a href="#targets.triggermesh.io/v1alpha1.LogzTargetSpec">LogzTargetSpec</a>, 
<a href="#targets.triggermesh.io/v1alpha1.OracleTargetSpec">OracleTargetSpec</a>, 
<a href="#targets.triggermesh.io/v1alpha1.SalesforceAuth">SalesforceAuth</a>, 
<a href="#targets.triggermesh.io/v1alpha1.SendGridTargetSpec">SendGridTargetSpec</a>, 
<a href="#targets.triggermesh.io/v1alpha1.SlackTargetSpec">SlackTargetSpec</a>, 
<a href="#targets.triggermesh.io/v1alpha1.TwilioTargetSpec">TwilioTargetSpec</a>, 
<a href="#targets.triggermesh.io/v1alpha1.ZendeskTargetSpec">ZendeskTargetSpec</a>)
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
<h3 id="targets.triggermesh.io/v1alpha1.SendGridTargetSpec">SendGridTargetSpec
</h3>
<p>
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.SendGridTarget">SendGridTarget</a>)
</p>
<p>
<p>SendGridTargetSpec defines the desired state of the event target.</p>
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
<code>apiKey</code></br>
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
<code>defaultFromEmail</code></br>
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
<code>defaultToEmail</code></br>
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
<code>defaultToName</code></br>
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
<code>defaultFromName</code></br>
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
<code>defaultMessage</code></br>
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
<code>defaultSubject</code></br>
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
<code>eventOptions</code></br>
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
<h3 id="targets.triggermesh.io/v1alpha1.SlackTargetSpec">SlackTargetSpec
</h3>
<p>
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.SlackTarget">SlackTarget</a>)
</p>
<p>
<p>SlackTargetSpec defines the desired state of the event target.</p>
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
<code>token</code></br>
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
<h3 id="targets.triggermesh.io/v1alpha1.SolaceTargetAuth">SolaceTargetAuth
</h3>
<p>
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.SolaceTargetSpec">SolaceTargetSpec</a>)
</p>
<p>
<p>SolaceTargetAuth contains Authentication method used to interact with Solace.</p>
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
<code>tls</code></br>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SolaceTargetTLSAuth">
SolaceTargetTLSAuth
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>TLS</p>
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
<em>(Optional)</em>
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
<code>username</code></br>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
<p>Username Solace</p>
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
<p>Password Solace</p>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.SolaceTargetSpec">SolaceTargetSpec
</h3>
<p>
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.SolaceTarget">SolaceTarget</a>)
</p>
<p>
<p>SolaceTargetSpec defines the desired state of the event target.</p>
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
<p>URL</p>
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
<p>QueueName</p>
</td>
</tr>
<tr>
<td>
<code>auth</code></br>
<em>
<a href="#targets.triggermesh.io/v1alpha1.SolaceTargetAuth">
SolaceTargetAuth
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>Auth contains Authentication method used to interact with Solace.</p>
</td>
</tr>
<tr>
<td>
<code>discardCloudEventContext</code></br>
<em>
bool
</em>
</td>
<td>
<p>Whether to omit CloudEvent context attributes in messages sent to Solace.
When this property is false (default), the entire CloudEvent payload is included.
When this property is true, only the CloudEvent data is included.</p>
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
<h3 id="targets.triggermesh.io/v1alpha1.SolaceTargetTLSAuth">SolaceTargetTLSAuth
</h3>
<p>
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.SolaceTargetAuth">SolaceTargetAuth</a>)
</p>
<p>
<p>SolaceTargetTLSAuth contains SSL credentials.</p>
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
<h3 id="targets.triggermesh.io/v1alpha1.SplunkTargetSpec">SplunkTargetSpec
</h3>
<p>
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.SplunkTarget">SplunkTarget</a>)
</p>
<p>
<p>SplunkTargetSpec defines the desired state of the event target.</p>
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
<code>endpoint</code></br>
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
<code>token</code></br>
<em>
<a href="https://pkg.go.dev/github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1#ValueFromField">
github.com/triggermesh/triggermesh/pkg/apis/common/v1alpha1.ValueFromField
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
<code>index</code></br>
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
<code>skipTLSVerify</code></br>
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
<tr>
<td>
<code>discardCloudEventContext</code></br>
<em>
bool
</em>
</td>
<td>
<p>Whether to omit CloudEvent context attributes in messages sent to Splunk.
When this property is false (default), the entire CloudEvent payload is included.
When this property is true, only the CloudEvent data is included.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.TLSSpec">TLSSpec
</h3>
<p>
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.Credentials">Credentials</a>)
</p>
<p>
<p>TLSSpec defines the desired state of the event target.</p>
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
<a href="#targets.triggermesh.io/v1alpha1.Keystore">
Keystore
</a>
</em>
</td>
<td>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.TwilioTargetSpec">TwilioTargetSpec
</h3>
<p>
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.TwilioTarget">TwilioTarget</a>)
</p>
<p>
<p>TwilioTargetSpec defines the desired state of the event target.</p>
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
<code>sid</code></br>
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
<code>token</code></br>
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
<code>defaultPhoneFrom</code></br>
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
<code>defaultPhoneTo</code></br>
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
<code>eventOptions</code></br>
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
<h3 id="targets.triggermesh.io/v1alpha1.ZendeskTargetSpec">ZendeskTargetSpec
</h3>
<p>
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.ZendeskTarget">ZendeskTarget</a>)
</p>
<p>
<p>ZendeskTargetSpec defines the desired state of the event target.</p>
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
<code>token</code></br>
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
<code>subdomain</code></br>
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
<code>email</code></br>
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
<code>subject</code></br>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
<p>Subject a static subject assignemnt for every ticket.</p>
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
on git commit <code>b72af044</code>.
</em></p>
