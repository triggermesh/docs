<p>Packages:</p>
<ul>
<li>
<a href="#targets.triggermesh.io%2fv1alpha1">targets.triggermesh.io/v1alpha1</a>
</li>
</ul>
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
<code>region</code><br/>
<em>
string
</em>
</td>
<td>
<p>Region</p>
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
<tr>
<td>
<code>language</code><br/>
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
<p>AWSTarget is the Schema for an AWS Target.</p>
</div>
<table>
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
<p>Connection information to elasticsearch</p>
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
<p>IndexName to write to</p>
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
<p>State actions and options</p>
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
<p>URL for Jira service</p>
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
<p>Oracle User API private key</p>
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
<p>Oracle User API private key passphrase</p>
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
<p>SalesforceTarget is the Schema for the Salesforce Target.</p>
</div>
<table>
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
<p>SlackTarget defines the schema for the Slack target</p>
</div>
<table>
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
<p>TektonTarget defines the schema for the Tekton target</p>
</div>
<table>
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
<p>Token contains the Zendesk account Token</p>
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
<p>Subdomain the Zendesk subdomain</p>
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
<p>Email the regestierd Zendesk email account</p>
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
</div>
<table>
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
<code>region</code><br/>
<em>
string
</em>
</td>
<td>
<p>Region</p>
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
<tr>
<td>
<code>language</code><br/>
<em>
string
</em>
</td>
<td>
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
</div>
<table>
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
</div>
<table>
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
</div>
<table>
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
</div>
<table>
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
</div>
<table>
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
</div>
<table>
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
</div>
<table>
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
</div>
<table>
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
</div>
<table>
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
<p>When informed supersedes username and password</p>
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
<p>Connection information to elasticsearch</p>
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
<p>IndexName to write to</p>
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
<p>EventOptions for targets</p>
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
(<em>Appears on:</em><a href="#targets.triggermesh.io/v1alpha1.AWSComprehendTargetSpec">AWSComprehendTargetSpec</a>, <a href="#targets.triggermesh.io/v1alpha1.AlibabaOSSTargetSpec">AlibabaOSSTargetSpec</a>, <a href="#targets.triggermesh.io/v1alpha1.DatadogTargetSpec">DatadogTargetSpec</a>, <a href="#targets.triggermesh.io/v1alpha1.ElasticsearchTargetSpec">ElasticsearchTargetSpec</a>, <a href="#targets.triggermesh.io/v1alpha1.GoogleCloudFirestoreTargetSpec">GoogleCloudFirestoreTargetSpec</a>, <a href="#targets.triggermesh.io/v1alpha1.GoogleCloudStorageTargetSpec">GoogleCloudStorageTargetSpec</a>, <a href="#targets.triggermesh.io/v1alpha1.GoogleCloudWorkflowsTargetSpec">GoogleCloudWorkflowsTargetSpec</a>, <a href="#targets.triggermesh.io/v1alpha1.LogzTargetSpec">LogzTargetSpec</a>, <a href="#targets.triggermesh.io/v1alpha1.SalesforceTargetSpec">SalesforceTargetSpec</a>, <a href="#targets.triggermesh.io/v1alpha1.SendGridTargetSpec">SendGridTargetSpec</a>)
</p>
<div>
<p>EventOptions modifies target adapter management of CloudEvents.</p>
</div>
<table>
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
<p>PayloadPolicy sets when to send a new event at replies.</p>
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
<p>State actions and options</p>
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
<p>URL for Jira service</p>
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
</div>
<table>
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
</div>
<table>
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
<p>Oracle User API private key</p>
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
<p>Oracle User API private key passphrase</p>
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
<a href="#targets.triggermesh.io/v1alpha1.SecretValueFromSource">
SecretValueFromSource
</a>
</em>
</td>
<td>
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
<p>SlackTargetSpec defines the spec for the Slack Taret</p>
</div>
<table>
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
</div>
<table>
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
</div>
<table>
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
<p>Token contains the Zendesk account Token</p>
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
<p>Subdomain the Zendesk subdomain</p>
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
<p>Email the regestierd Zendesk email account</p>
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
<p>Accepted/emitted CloudEvent attributes</p>
</td>
</tr>
</tbody>
</table>
<hr/>
<p><em>
Generated with <code>gen-crd-api-reference-docs</code>
on git commit <code>d4e1658</code>.
</em></p>
