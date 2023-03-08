# Amazon DynamoDB source

This event source captures changes to items stored in an [Amazon DynamoDB Table][ddb-docs] by reading the time-ordered
sequence of item-level modifications from a [DynamoDB Stream][ddb-streams].

With `tmctl`:

```
tmctl create source awsdynamodb --arn <arn> --auth.credentials.accessKeyID <keyID> --auth.credentials.secretAccessKey <key>
```

On Kubernetes:

```yaml
apiVersion: sources.triggermesh.io/v1alpha1
kind: AWSDynamoDBSource
metadata:
  name: sample
spec:
  arn: arn:aws:dynamodb:us-west-2:123456789012:table/triggermeshtest

  auth:
    credentials:
      accessKeyID:
        valueFromSecret:
          name: awscreds
          key: aws_access_key_id
      secretAccessKey:
        valueFromSecret:
          name: awscreds
          key: aws_secret_access_key

  sink:
    ref:
      apiVersion: eventing.triggermesh.io/v1alpha1
      kind: RedisBroker
      name: triggermesh
```

Alternatively you can use an IAM role for authentication instead of an access key and secret, for Amazon EKS only:

```yaml
auth:
  iamrole: arn:aws:iam::123456789012:role/foo
```

To setup an IAM role for service accounts, please refer to the [official AWS documentation](https://docs.aws.amazon.com/eks/latest/userguide/iam-roles-for-service-accounts.html).

Events produced have the following attributes:

* type `com.amazon.dynamodb.stream_record`
* Schema of the `data` attribute: [com.amazon.dynamodb.stream_record.json](https://raw.githubusercontent.com/triggermesh/triggermesh/main/schemas/com.amazon.dynamodb.stream_record.json)

See the [Kubernetes object reference](../../reference/sources/#sources.triggermesh.io/v1alpha1.AWSDynamoDBSource) for more details.

## Prerequisite(s)

- DynamoDB Table and Stream
- Amazon Resource Name (ARN)
- API Credentials

### DynamoDB Table and Stream

If you don't already have an Amazon DynamoDB Table, create one by following the instructions at [Getting Started with
DynamoDB][ddb-gettingstarted]. In order for change notifications to be consumed by the TriggerMesh Amazon DynamoDB event
source, it is mandatory to enable a [Stream][ddb-streams] on the DynamoDB Table. To do so, follow the instructions at
[Enabling a Stream][ddb-stream-enable]. You are free to select the _View type_ that is the most suitable for your own
usage of the event source.

![DynamoDB Table](../assets/images/awsdynamodb-source/table-1.png)

### Amazon Resource Name (ARN)

A fully qualified ARN is required to uniquely identify the Amazon DynamoDB Table.

This ARN can be obtained directly from the _Overview_ tab after clicking the DynamoDB Table name in the list of existing
tables. It typically has the following format:

```
arn:aws:dynamodb:{awsRegion}:{awsAccountId}:table/{tableName}
```

![DynamoDB Table ARN](../assets/images/awsdynamodb-source/table-2.png)

Alternatively, one can obtain the ARN of a DynamoDB Table by using the [AWS CLI][aws-cli]. The following command
retrieves the information of a table called `triggermeshtest` in the `us-west-2` region:

```console
$ aws dynamodb describe-table --table-name triggermeshtest --region us-west-2
{
    "Table": {
        "TableName": "triggermeshtest",
        "TableStatus": "ACTIVE",
        "TableArn": "arn:aws:dynamodb:us-west-2:123456789012:table/triggermeshtest",
        (...)
    }
}
```

### API Credentials

The TriggerMesh event source for Amazon DynamoDB authenticates calls to the AWS API using AWS Access Keys. The page
[Understanding and getting your AWS credentials][accesskey] contains instructions to create access keys when signed-in
either as the root user or as an IAM user. Take note of the **Access Key ID** and **Secret Access Key**, they will be
used to create an instance of the event source.

It is considered a [good practice][iam-bestpractices] to create dedicated users with restricted privileges in order to
programmatically access AWS services. Permissions can be added or revoked granularly for a given IAM user by attaching
[IAM Policies][iam-policies] to it.

As an example, the following policy contains only the permissions required by the TriggerMesh Amazon DynamoDB event
source to operate:

```json
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "dynamodb:ListStreams",
                "dynamodb:DescribeStream",
                "dynamodb:GetShardIterator",
                "dynamodb:GetRecords"
            ],
            "Resource": "arn:aws:dynamodb:*:*:*"
        }
    ]
}
```

![Creating an IAM user](../assets/images/awsdynamodb-source/iam-user-1.png)

[arn]: https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazondynamodb.html#amazondynamodb-resources-for-iam-policies
[accesskey]: https://docs.aws.amazon.com/general/latest/gr/aws-sec-cred-types.html#access-keys-and-secret-access-keys
[aws-cli]: https://aws.amazon.com/cli/
[iam-bestpractices]: https://docs.aws.amazon.com/general/latest/gr/aws-access-keys-best-practices.html#iam-user-access-keys
[iam-policies]: https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html

[ddb-docs]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Introduction.html
[ddb-streams]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Streams.html
[ddb-gettingstarted]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/GettingStartedDynamoDB.html
[ddb-stream-enable]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Streams.html#Streams.Enabling

[tm-secret]: ../secrets.md
