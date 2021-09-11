<style>
.bs-sidebar {
display: none;
}
</style>
<p>Packages:</p>
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
<a href="#targets.triggermesh.io/v1alpha1.ConfluentTarget">ConfluentTarget</a>
</li><li>
<a href="#targets.triggermesh.io/v1alpha1.DatadogTarget">DatadogTarget</a>
</li><li>
<a href="#targets.triggermesh.io/v1alpha1.ElasticsearchTarget">ElasticsearchTarget</a>
</li><li>
<a href="#targets.triggermesh.io/v1alpha1.GoogleSheetTarget">GoogleSheetTarget</a>
</li><li>
<a href="#targets.triggermesh.io/v1alpha1.HTTPTarget">HTTPTarget</a>
</li><li>
<a href="#targets.triggermesh.io/v1alpha1.HasuraTarget">HasuraTarget</a>
</li><li>
<a href="#targets.triggermesh.io/v1alpha1.InfraTarget">InfraTarget</a>
</li><li>
<a href="#targets.triggermesh.io/v1alpha1.OracleTarget">OracleTarget</a>
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
<a href="#targets.triggermesh.io/v1alpha1.ZendeskTarget">ZendeskTarget</a>
</li></ul>
<h3 id="targets.triggermesh.io/v1alpha1.AWSKinesisTarget">AWSKinesisTarget
</h3>
<p>
<p>AWSKinesisTarget is the Schema for an Amazon Kinesis Target.</p>
</p>
<table>
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
<p>Spec holds the desired state of the AWSKinesisTarget (from the client).</p>
<br/>
<br/>
<table>
<tr>
<td>
<code>awsApiKey</code></br>
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
<code>awsApiSecret</code></br>
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
<code>status</code></br>
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
<p>Spec holds the desired state of the AWSLambdaTarget (from the client).</p>
<br/>
<br/>
<table>
<tr>
<td>
<code>awsApiKey</code></br>
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
<code>awsApiSecret</code></br>
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
</table>
</td>
</tr>
<tr>
<td>
<code>status</code></br>
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
<p>
<p>AWSS3Target is the Schema for an Amazon S3 Target.</p>
</p>
<table>
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
<p>Spec holds the desired state of the AWSS3Target (from the client).</p>
<br/>
<br/>
<table>
<tr>
<td>
<code>awsApiKey</code></br>
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
<code>awsApiSecret</code></br>
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
<code>status</code></br>
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
<p>
<p>AWSTarget is the Schema for an AWS Target.</p>
</p>
<table>
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
<p>Spec holds the desired state of the AWSSNSTarget (from the client).</p>
<br/>
<br/>
<table>
<tr>
<td>
<code>awsApiKey</code></br>
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
<code>awsApiSecret</code></br>
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
<code>status</code></br>
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
<p>
<p>AWSSQSTarget is the Schema for an Amazon SQS Target.</p>
</p>
<table>
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
<p>Spec holds the desired state of the AWSSQSTarget (from the client).</p>
<br/>
<br/>
<table>
<tr>
<td>
<code>awsApiKey</code></br>
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
<code>awsApiSecret</code></br>
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
<code>discardCloudEventContext</code></br>
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
<code>status</code></br>
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
<h3 id="targets.triggermesh.io/v1alpha1.ConfluentTarget">ConfluentTarget
</h3>
<p>
<p>ConfluentTarget is the Schema for an ConfluentTarget.</p>
</p>
<table>
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
<td><code>ConfluentTarget</code></td>
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
<code>username</code></br>
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
<code>password</code></br>
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
<code>topicPartitions</code></br>
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
<code>securityProtocol</code></br>
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
<code>saslMechanism</code></br>
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
<code>discardCloudEventContext</code></br>
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
<code>status</code></br>
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
<code>agentAddress</code></br>
<em>
string
</em>
</td>
<td>
<p>AgentAddress is the address of the StatsD server</p>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<code>status</code></br>
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
<p>Spec holds the desired state of the ElasticsearchTarget (from the client).</p>
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
<p>Connection information to elasticsearch</p>
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
<p>IndexName to write to</p>
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
<p>Whether to omit CloudEvent context attributes in created documents.
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
<em>(Optional)</em>
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
<p>Spec holds the desired state of the GoogleSheetTarget (from the client).</p>
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
<p>GoogleSheet credential JSON for auth</p>
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
</table>
</td>
</tr>
<tr>
<td>
<code>status</code></br>
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
knative.dev/pkg/apis.URL
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
</table>
</td>
</tr>
<tr>
<td>
<code>status</code></br>
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
<p>
<p>HasuraTarget is the Schema for the event target.</p>
</p>
<table>
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
<td><code>HasuraTarget</code></td>
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
<code>endpoint</code></br>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>jwt</code></br>
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
<code>admin</code></br>
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
<code>defaultRole</code></br>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>queries</code></br>
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
<code>status</code></br>
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
<p>
<p>InfraTarget is the Schema for the Infra JS Target.</p>
</p>
<table>
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
<td><code>InfraTarget</code></td>
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
<code>script</code></br>
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
<code>state</code></br>
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
<code>typeLoopProtection</code></br>
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
<code>status</code></br>
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
<em>(Optional)</em>
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
<p>Spec holds the desired state of the OracleTarget (from the client).</p>
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
<p>Oracle User API private key</p>
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
<p>Oracle User API private key passphrase</p>
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
</table>
</td>
</tr>
<tr>
<td>
<code>status</code></br>
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
<h3 id="targets.triggermesh.io/v1alpha1.SendGridTarget">SendGridTarget
</h3>
<p>
<p>SendGridTarget is the Schema for an SendGrid Target.</p>
</p>
<table>
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
<em>(Optional)</em>
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
<p>Spec holds the desired state of the SendGridTarget (from the client).</p>
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
</table>
</td>
</tr>
<tr>
<td>
<code>status</code></br>
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
<p>
<p>SlackTarget defines the schema for the Slack target</p>
</p>
<table>
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
<em>(Optional)</em>
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
<p>Spec holds the desired state of the SlackTarget (from the client).</p>
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
</table>
</td>
</tr>
<tr>
<td>
<code>status</code></br>
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
knative.dev/pkg/apis.URL
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
</table>
</td>
</tr>
<tr>
<td>
<code>status</code></br>
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
<p>
<p>TektonTarget defines the schema for the Tekton target</p>
</p>
<table>
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
<td><code>TektonTarget</code></td>
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
</table>
</td>
</tr>
<tr>
<td>
<code>status</code></br>
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
<em>(Optional)</em>
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
<p>Spec holds the desired state of the TwilioTarget (from the client).</p>
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
</table>
</td>
</tr>
<tr>
<td>
<code>status</code></br>
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
<p>Spec holds the desired state of the ZendeskTarget (from the client).</p>
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
<p>Token contains the Zendesk account Token</p>
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
<p>Subdomain the Zendesk subdomain</p>
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
<p>Email the regestierd Zendesk email account</p>
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
</table>
</td>
</tr>
<tr>
<td>
<code>status</code></br>
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
<h3 id="targets.triggermesh.io/v1alpha1.AWSKinesisTargetSpec">AWSKinesisTargetSpec
</h3>
<p>
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.AWSKinesisTarget">AWSKinesisTarget</a>)
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
<code>awsApiKey</code></br>
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
<code>awsApiSecret</code></br>
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
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.AWSLambdaTarget">AWSLambdaTarget</a>)
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
<code>awsApiKey</code></br>
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
<code>awsApiSecret</code></br>
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
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.AWSS3TargetSpec">AWSS3TargetSpec
</h3>
<p>
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.AWSS3Target">AWSS3Target</a>)
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
<code>awsApiKey</code></br>
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
<code>awsApiSecret</code></br>
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
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.AWSS3Target">AWSS3Target</a>)
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
<code>AWSTargetStatus</code></br>
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
<code>CloudEventStatus</code></br>
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
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.AWSSNSTarget">AWSSNSTarget</a>)
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
<code>awsApiKey</code></br>
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
<code>awsApiSecret</code></br>
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
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.AWSSQSTarget">AWSSQSTarget</a>)
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
<code>awsApiKey</code></br>
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
<code>awsApiSecret</code></br>
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
<code>discardCloudEventContext</code></br>
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
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.AWSKinesisTarget">AWSKinesisTarget</a>, 
<a href="#targets.triggermesh.io/v1alpha1.AWSLambdaTarget">AWSLambdaTarget</a>, 
<a href="#targets.triggermesh.io/v1alpha1.AWSSNSTarget">AWSSNSTarget</a>, 
<a href="#targets.triggermesh.io/v1alpha1.AWSSQSTarget">AWSSQSTarget</a>, 
<a href="#targets.triggermesh.io/v1alpha1.AWSS3TargetStatus">AWSS3TargetStatus</a>)
</p>
<p>
<p>AWSTargetStatus communicates the observed state of the various AWS Targets (from the controller).</p>
</p>
<table>
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
knative.dev/pkg/apis/duck/v1.Status
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
<code>AddressStatus</code></br>
<em>
knative.dev/pkg/apis/duck/v1.AddressStatus
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
<h3 id="targets.triggermesh.io/v1alpha1.CloudEventStatus">CloudEventStatus
</h3>
<p>
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.AWSS3TargetStatus">AWSS3TargetStatus</a>, 
<a href="#targets.triggermesh.io/v1alpha1.DatadogTargetStatus">DatadogTargetStatus</a>, 
<a href="#targets.triggermesh.io/v1alpha1.GoogleSheetTargetStatus">GoogleSheetTargetStatus</a>, 
<a href="#targets.triggermesh.io/v1alpha1.HasuraTargetStatus">HasuraTargetStatus</a>, 
<a href="#targets.triggermesh.io/v1alpha1.SendGridTargetStatus">SendGridTargetStatus</a>, 
<a href="#targets.triggermesh.io/v1alpha1.SlackTargetStatus">SlackTargetStatus</a>, 
<a href="#targets.triggermesh.io/v1alpha1.TektonTargetStatus">TektonTargetStatus</a>, 
<a href="#targets.triggermesh.io/v1alpha1.TwilioTargetStatus">TwilioTargetStatus</a>, 
<a href="#targets.triggermesh.io/v1alpha1.ZendeskTargetStatus">ZendeskTargetStatus</a>)
</p>
<p>
<p>CloudEventStatus contains attributes that target types can embed to declare
the event types they accept and emit.</p>
</p>
<table>
<thead>
<tr>
<th>Field</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td>
<code>acceptedEventTypes</code></br>
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
<code>ceAttributes</code></br>
<em>
[]knative.dev/pkg/apis/duck/v1.CloudEventAttributes
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
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.ConfluentTarget">ConfluentTarget</a>)
</p>
<p>
<p>ConfluentTargetSpec holds the desired state of the ConfluentTarget.</p>
</p>
<table>
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
<p>SASLUsername Confluent account User</p>
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
<p>SASLPassword Confluent account Password</p>
</td>
</tr>
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
<code>topicPartitions</code></br>
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
<code>securityProtocol</code></br>
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
<code>saslMechanism</code></br>
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
<code>discardCloudEventContext</code></br>
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
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.ConfluentTarget">ConfluentTarget</a>)
</p>
<p>
<p>ConfluentTargetStatus communicates the observed state of the ConfluentTarget (from the controller).</p>
</p>
<table>
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
knative.dev/pkg/apis/duck/v1.Status
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
<code>AddressStatus</code></br>
<em>
knative.dev/pkg/apis/duck/v1.AddressStatus
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
<code>apiKey</code></br>
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
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.DatadogTarget">DatadogTarget</a>)
</p>
<p>
<p>DatadogTargetSpec holds the desired state of the DatadogTarget.</p>
</p>
<table>
<thead>
<tr>
<th>Field</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td>
<code>agentAddress</code></br>
<em>
string
</em>
</td>
<td>
<p>AgentAddress is the address of the StatsD server</p>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.DatadogTargetStatus">DatadogTargetStatus
</h3>
<p>
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.DatadogTarget">DatadogTarget</a>)
</p>
<p>
<p>DatadogTargetStatus communicates the observed state of the DatadogTarget (from the controller).</p>
</p>
<table>
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
knative.dev/pkg/apis/duck/v1.Status
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
knative.dev/pkg/apis/duck/v1.AddressStatus
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
<code>CloudEventStatus</code></br>
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
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.ElasticsearchTarget">ElasticsearchTarget</a>)
</p>
<p>
<p>ElasticsearchTargetSpec holds the desired state of the ElasticsearchTarget.</p>
</p>
<table>
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
<p>Connection information to elasticsearch</p>
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
<p>IndexName to write to</p>
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
<p>Whether to omit CloudEvent context attributes in created documents.
When this property is false (default), the entire CloudEvent payload is included.
When this property is true, only the CloudEvent data is included.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.ElasticsearchTargetStatus">ElasticsearchTargetStatus
</h3>
<p>
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.ElasticsearchTarget">ElasticsearchTarget</a>)
</p>
<p>
<p>ElasticsearchTargetStatus communicates the observed state of the ElasticsearchTarget (from the controller).</p>
</p>
<table>
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
knative.dev/pkg/apis/duck/v1.Status
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
<code>AddressStatus</code></br>
<em>
knative.dev/pkg/apis/duck/v1.AddressStatus
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
<h3 id="targets.triggermesh.io/v1alpha1.GoogleSheetTargetSpec">GoogleSheetTargetSpec
</h3>
<p>
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.GoogleSheetTarget">GoogleSheetTarget</a>)
</p>
<p>
<p>GoogleSheetTargetSpec holds the desired state of the GoogleSheetTarget.</p>
</p>
<table>
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
<p>GoogleSheet credential JSON for auth</p>
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
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.GoogleSheetTargetStatus">GoogleSheetTargetStatus
</h3>
<p>
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.GoogleSheetTarget">GoogleSheetTarget</a>)
</p>
<p>
<p>GoogleSheetTargetStatus communicates the observed state of the GoogleSheetTarget (from the controller).</p>
</p>
<table>
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
knative.dev/pkg/apis/duck/v1.Status
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
<code>AddressStatus</code></br>
<em>
knative.dev/pkg/apis/duck/v1.AddressStatus
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
<code>CloudEventStatus</code></br>
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
<p>HTTPTargetSpec holds the desired state of the HTTPTarget.</p>
</p>
<table>
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
knative.dev/pkg/apis.URL
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
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.HTTPTargetStatus">HTTPTargetStatus
</h3>
<p>
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.HTTPTarget">HTTPTarget</a>)
</p>
<p>
<p>HTTPTargetStatus communicates the observed state of the HTTPTarget (from the controller).</p>
</p>
<table>
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
knative.dev/pkg/apis/duck/v1.Status
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
<h3 id="targets.triggermesh.io/v1alpha1.HasuraTargetSpec">HasuraTargetSpec
</h3>
<p>
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.HasuraTarget">HasuraTarget</a>)
</p>
<p>
<p>HasuraTargetSpec defines the desired state of the event target.</p>
</p>
<table>
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
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>jwt</code></br>
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
<code>admin</code></br>
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
<code>defaultRole</code></br>
<em>
string
</em>
</td>
<td>
</td>
</tr>
<tr>
<td>
<code>queries</code></br>
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
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.HasuraTarget">HasuraTarget</a>)
</p>
<p>
<p>HasuraTargetStatus defines the observed state of the event target.</p>
</p>
<table>
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
knative.dev/pkg/apis/duck/v1.Status
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
knative.dev/pkg/apis/duck/v1.AddressStatus
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
<code>CloudEventStatus</code></br>
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
(<code>string</code> alias)</p></h3>
<p>
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.InfraTargetState">InfraTargetState</a>)
</p>
<p>
<p>HeaderPolicy is the action to take on stateful headers</p>
</p>
<h3 id="targets.triggermesh.io/v1alpha1.InfraTargetScript">InfraTargetScript
</h3>
<p>
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.InfraTargetSpec">InfraTargetSpec</a>)
</p>
<p>
<p>InfraTargetScript holds the script options</p>
</p>
<table>
<thead>
<tr>
<th>Field</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td>
<code>code</code></br>
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
<code>timeout</code></br>
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
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.InfraTarget">InfraTarget</a>)
</p>
<p>
<p>InfraTargetSpec holds the desired state of the InfraTarget.</p>
</p>
<table>
<thead>
<tr>
<th>Field</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td>
<code>script</code></br>
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
<code>state</code></br>
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
<code>typeLoopProtection</code></br>
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
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.InfraTargetSpec">InfraTargetSpec</a>)
</p>
<p>
<p>InfraTargetState holds the state options</p>
</p>
<table>
<thead>
<tr>
<th>Field</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td>
<code>headersPolicy</code></br>
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
<code>bridge</code></br>
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
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.InfraTarget">InfraTarget</a>)
</p>
<p>
<p>InfraTargetStatus communicates the observed state of the InfraTarget (from the controller).</p>
</p>
<table>
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
knative.dev/pkg/apis/duck/v1.Status
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
<h3 id="targets.triggermesh.io/v1alpha1.OracleFunctionSpecSpec">OracleFunctionSpecSpec
</h3>
<p>
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.OracleTargetSpec">OracleTargetSpec</a>)
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
<code>function</code></br>
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
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.OracleTarget">OracleTarget</a>)
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
<code>oracleApiPrivateKey</code></br>
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
<code>oracleApiPrivateKeyPassphrase</code></br>
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
<code>oracleApiPrivateKeyFingerprint</code></br>
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
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.OracleTargetStatus">OracleTargetStatus
</h3>
<p>
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.OracleTarget">OracleTarget</a>)
</p>
<p>
<p>OracleTargetStatus communicates the observed state of the OracleTarget (from the controller).</p>
</p>
<table>
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
knative.dev/pkg/apis/duck/v1.Status
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
<code>AddressStatus</code></br>
<em>
knative.dev/pkg/apis/duck/v1.AddressStatus
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
<h3 id="targets.triggermesh.io/v1alpha1.SecretValueFromSource">SecretValueFromSource
</h3>
<p>
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.AWSKinesisTargetSpec">AWSKinesisTargetSpec</a>, 
<a href="#targets.triggermesh.io/v1alpha1.AWSLambdaTargetSpec">AWSLambdaTargetSpec</a>, 
<a href="#targets.triggermesh.io/v1alpha1.AWSS3TargetSpec">AWSS3TargetSpec</a>, 
<a href="#targets.triggermesh.io/v1alpha1.AWSSNSTargetSpec">AWSSNSTargetSpec</a>, 
<a href="#targets.triggermesh.io/v1alpha1.AWSSQSTargetSpec">AWSSQSTargetSpec</a>, 
<a href="#targets.triggermesh.io/v1alpha1.ConfluentTargetSpec">ConfluentTargetSpec</a>, 
<a href="#targets.triggermesh.io/v1alpha1.Connection">Connection</a>, 
<a href="#targets.triggermesh.io/v1alpha1.GoogleSheetTargetSpec">GoogleSheetTargetSpec</a>, 
<a href="#targets.triggermesh.io/v1alpha1.HTTPTargetSpec">HTTPTargetSpec</a>, 
<a href="#targets.triggermesh.io/v1alpha1.HasuraTargetSpec">HasuraTargetSpec</a>, 
<a href="#targets.triggermesh.io/v1alpha1.OracleTargetSpec">OracleTargetSpec</a>, 
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
<p>SendGridTargetSpec holds the desired state of the SendGridTarget.</p>
</p>
<table>
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
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.SendGridTargetStatus">SendGridTargetStatus
</h3>
<p>
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.SendGridTarget">SendGridTarget</a>)
</p>
<p>
<p>SendGridTargetStatus communicates the observed state of the SendGridTarget (from the controller).</p>
</p>
<table>
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
knative.dev/pkg/apis/duck/v1.Status
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
<code>AddressStatus</code></br>
<em>
knative.dev/pkg/apis/duck/v1.AddressStatus
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
<code>CloudEventStatus</code></br>
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
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.SlackTarget">SlackTarget</a>)
</p>
<p>
<p>SlackTargetSpec defines the spec for the Slack Taret</p>
</p>
<table>
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
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.SlackTargetStatus">SlackTargetStatus
</h3>
<p>
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.SlackTarget">SlackTarget</a>)
</p>
<p>
<p>SlackTargetStatus communicates the observed state of the SlackTarget (from the controller).</p>
</p>
<table>
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
knative.dev/pkg/apis/duck/v1.Status
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
<code>AddressStatus</code></br>
<em>
knative.dev/pkg/apis/duck/v1.AddressStatus
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
<code>CloudEventStatus</code></br>
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
knative.dev/pkg/apis.URL
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
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.SplunkTargetStatus">SplunkTargetStatus
</h3>
<p>
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.SplunkTarget">SplunkTarget</a>)
</p>
<p>
<p>SplunkTargetStatus defines the observed state of the event target.</p>
</p>
<table>
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
knative.dev/pkg/apis/duck/v1.Status
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
<h3 id="targets.triggermesh.io/v1alpha1.TektonTargetSpec">TektonTargetSpec
</h3>
<p>
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.TektonTarget">TektonTarget</a>)
</p>
<p>
</p>
<h3 id="targets.triggermesh.io/v1alpha1.TektonTargetStatus">TektonTargetStatus
</h3>
<p>
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.TektonTarget">TektonTarget</a>)
</p>
<p>
<p>TektonTargetStatus communicates the observed state of the TektonTarget (from the controller).</p>
</p>
<table>
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
knative.dev/pkg/apis/duck/v1.Status
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
<code>AddressStatus</code></br>
<em>
knative.dev/pkg/apis/duck/v1.AddressStatus
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
<code>CloudEventStatus</code></br>
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
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.TwilioTarget">TwilioTarget</a>)
</p>
<p>
<p>TwilioTargetSpec holds the desired state of the TwilioTarget.</p>
</p>
<table>
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
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.TwilioTargetStatus">TwilioTargetStatus
</h3>
<p>
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.TwilioTarget">TwilioTarget</a>)
</p>
<p>
<p>TwilioTargetStatus communicates the observed state of the TwilioTarget (from the controller).</p>
</p>
<table>
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
knative.dev/pkg/apis/duck/v1.Status
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
<code>AddressStatus</code></br>
<em>
knative.dev/pkg/apis/duck/v1.AddressStatus
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
<code>CloudEventStatus</code></br>
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
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.SplunkTargetSpec">SplunkTargetSpec</a>)
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
<h3 id="targets.triggermesh.io/v1alpha1.ZendeskTargetSpec">ZendeskTargetSpec
</h3>
<p>
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.ZendeskTarget">ZendeskTarget</a>)
</p>
<p>
<p>ZendeskTargetSpec holds the desired state of the ZendeskTarget.</p>
</p>
<table>
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
<p>Token contains the Zendesk account Token</p>
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
<p>Subdomain the Zendesk subdomain</p>
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
<p>Email the regestierd Zendesk email account</p>
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
</tbody>
</table>
<h3 id="targets.triggermesh.io/v1alpha1.ZendeskTargetStatus">ZendeskTargetStatus
</h3>
<p>
(<em>Appears on:</em>
<a href="#targets.triggermesh.io/v1alpha1.ZendeskTarget">ZendeskTarget</a>)
</p>
<p>
<p>ZendeskTargetStatus communicates the observed state of the ZendeskTarget (from the controller).</p>
</p>
<table>
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
knative.dev/pkg/apis/duck/v1.Status
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
<code>AddressStatus</code></br>
<em>
knative.dev/pkg/apis/duck/v1.AddressStatus
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
<code>CloudEventStatus</code></br>
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
on git commit <code>f8c98b6</code>.
</em></p>
