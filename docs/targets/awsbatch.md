# Event Target for AWS Batch

This event target receives [CloudEvents][ce] over HTTP and sends them to [AWS Batch](https://aws.amazon.com/batch/)

## Prerequisite(s)

- AWS API key and secret.

## Deploying an Instance of the Target

Open the Bridge creation screen and add a target of type `AWS Batch`.

In the Target creation form, give a name to the event Target and add the following information:

- **AWS Secret**: Reference a [TriggerMesh secret](../guides/secrets.md) containing an AWS API key and Secret.
- **Region**: Denotes the region to run the Batch services from. 

After clicking the `Save` button, you will be taken back to the Bridge editor. Proceed to adding the remaining
components to the Bridge, then submit it.

A ready status on the main _Bridges_ page indicates that the AWS Batch target is ready to accept events.

For more information about using AWS Batch, please refer to the [documentation][https://docs.aws.amazon.com/batch/index.html].

## Event Types
### io.triggermesh.aws.batch.job.register

Events of this type contain nuanced data that is used to register an AWS Batch job. 

This type expects a [JSON][ce-jsonformat] payload with the following properties:

| Name  |  Type |  Comment | Example
|---|---|---|---|
| **jobDefinitionName** | string | The name of the job definition to register. | "fetch_and_run" |
| **type** | string | The type of job definition. |  "container" |
| **containerProperties.image** | string | The image used to start a container. | "123456789012.dkr.ecr.us-east-1.amazonaws.com/fetch_and_run" |
| **containerProperties.vcpus** | int | The number of vCPUs reserved for the container. |  2|
| **containerProperties.memory** | int | The ammout of memory reserved for the container. |  2000|
| **containerProperties.command** | string | The command that's passed to the container. |  ["myjob.sh","60"] |
| **containerProperties.jobRoleArn** | string | The Amazon Resource Name (ARN) of the IAM role that the container can assume. |  "arn:aws:iam::123456789012:role/AWSBatchS3ReadOnly" |
| **containerProperties.environment** | []struct | The environment variables to pass to a container. |  [{"name": "BATCH_FILE_S3_URL","value": "s3://my-batch-scripts/myjob.sh"},{"name": "BATCH_FILE_TYPE","value": "script"}]|
| **containerProperties.user** | string | he user name to use inside the container. |  "nobody"|

### io.triggermesh.aws.batch.job.run

Events of this type contain nuanced data that is used to register an AWS Batch job. 

This type expects a [JSON][ce-jsonformat] payload with the following properties:

| Name  |  Type |  Comment | Example
|---|---|---|---|
| **jobDefinitionName** | string | The job definition used by this job.  | "fetch_and_run" |
| **jobName** | string | The name of the job. The first character must be alphanumeric, and up to 128 letters  |  "sleep10" |
| **jobQueue** | string | The job queue into which the job is submitted. You can specify either the name or the Amazon Resource Name (ARN) of the queue.  |  "test" |

### io.triggermesh.aws.batch.queue.create

Events of this type contain nuanced data that is used to register an AWS Batch job. 

This type expects a [JSON][ce-jsonformat] payload with the following properties:

| Name  |  Type |  Comment | Example
|---|---|---|---|
| **computeEnvironment** | string | The job scheduler uses this parameter to determine which compute
	// environment should run a specific job.  | "test" |
| **order** | int | The order of the compute environment. Compute environments are tried in ascending order. |  1 |
| **priority** | int |  The priority of the job queue.  |  10 |
| **jobQueueName** | string |  The name of the job queue. Up to 128 letters.  |  "test"|
| **jobQueueState** | string |  The state of the job queue. |  ENABLED |


[ce]: https://cloudevents.io/
[ce-jsonformat]: https://github.com/cloudevents/spec/blob/v1.0/json-format.md
