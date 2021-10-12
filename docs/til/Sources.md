## Full list

<!-- Please click "Preview" and ensure hyperlinks are working before clicking "Save page". -->

- [Amazon CloudWatch](#amazon-cloudwatch)
- [Amazon CloudWatch Logs](#amazon-cloudwatch-logs)
- [Amazon CodeCommit](#amazon-codecommit)
- [Amazon Cognito User Pool](#amazon-cognito-user-pool)
- [Amazon DynamoDB](#amazon-dynamodb)
- [Amazon Kinesis](#amazon-kinesis)
- [Amazon RDS Performance Insights](#amazon-rds-performance-insights)
- [Amazon S3](#amazon-s3)
- [Amazon SNS](#amazon-sns)
- [Amazon SQS](#amazon-sqs)
- [Azure Activity Logs](#azure-activity-logs)
- [Azure Blob Storage](#azure-blob-storage)
- [Azure Event Hubs](#azure-event-hubs)
- [GitHub](#github)
- [HTTP Poller](#http-poller)
- [Kafka](#kafka)
- [Ping](#ping)
- [Salesforce](#salesforce)
- [Slack](#slack)
- [Webhook](#webhook)
- [Zendesk](#zendesk)

---

## Amazon CloudWatch

```hcl
source aws_cloudwatch "my_metrics" {
  region = "us-east-2"

  polling_interval = "5m" // optional

  metric_query "query1" {
    // mutually exclusive with "metric"
    expression = "SEARCH(' {AWS/EC2} MetricName=\"CPUUtilization\" ', 'Average', 300)"
  }

  metric_query "query2" {
    // mutually exclusive with "expression"
    metric {
      period = 60
      stat = "p90"
      unit = "Milliseconds"

      name = "Duration"
      namespace = "AWS/Lambda"

      dimension "FunctionName" {
        value = "lambdadumper"
      }
    }
  }

  credentials = secret_name("my-aws-access-keys")

  //to = <component>.<identifier>
}
```

Secret class: [aws](Secret-References.md#aws-secret-class)

## Amazon CloudWatch Logs

```hcl
source aws_cloudwatch_logs "my_logs" {
  arn = "arn:aws:logs:us-east-2:123456789012:log-group:/my/log/group:*"

  polling_interval = "5m" // optional

  credentials = secret_name("my-aws-access-keys")

  //to = <component>.<identifier>
}
```

Secret class: [aws](Secret-References.md#aws-secret-class)

## Amazon CodeCommit

```hcl
source aws_codecommit "my_repo" {
  arn = "arn:aws:codecommit:us-east-2:123456789012:my-repo"

  branch = "main"
  event_types = ["push", "pull_request"]

  credentials = secret_name("my-aws-access-keys")

  //to = <component>.<identifier>
}
```

Secret class: [aws](Secret-References.md#aws-secret-class)

## Amazon Cognito User Pool

```hcl
source aws_cognito_userpool "my_userpool" {
  arn = "arn:aws:cognito-idp:us-east-2:123456789012:userpool/my-pool"

  credentials = secret_name("my-aws-access-keys")

  //to = <component>.<identifier>
}
```

Secret class: [aws](Secret-References.md#aws-secret-class)

## Amazon DynamoDB

```hcl
source aws_dynamodb "my_table" {
  arn = "arn:aws:dynamodb:us-east-2:123456789012:table/my-table"

  credentials = secret_name("my-aws-access-keys")

  //to = <component>.<identifier>
}
```

Secret class: [aws](Secret-References.md#aws-secret-class)

## Amazon Kinesis

```hcl
source aws_kinesis "my_stream" {
  arn = "arn:aws:kinesis:us-east-2:123456789012:stream/my-stream"

  credentials = secret_name("my-aws-access-keys")

  //to = <component>.<identifier>
}
```

Secret class: [aws](Secret-References.md#aws-secret-class)

## Amazon RDS Performance Insights

```hcl
source aws_pi "my_db_metrics" {
  arn = "arn:aws:rds:us-east-2:123456789012:db:my-instance"

  polling_interval = "5m"

  metric_queries = [
    "os.cpuUtilization.user.avg",
    "os.fileSys.used.avg",
  ]

  credentials = secret_name("my-aws-access-keys")

  //to = <component>.<identifier>
}
```

Secret class: [aws](Secret-References.md#aws-secret-class)

## Amazon S3

```hcl
source aws_s3 "my_bucket" {
  arn = "arn:aws:s3:us-east-2:123456789012:my-bucket"

  event_types = [
    "s3:ObjectCreated:*",
    "s3:ObjectRemoved:*",
  ]

  credentials = secret_name("my-aws-access-keys")

  //to = <component>.<identifier>
}
```

Secret class: [aws](Secret-References.md#aws-secret-class)

## Amazon SNS

```hcl
source aws_sns "my_topic" {
  arn = "arn:aws:sns:us-east-2:123456789012:my-topic"

  credentials = secret_name("my-aws-access-keys")

  //to = <component>.<identifier>
}
```

Secret class: [aws](Secret-References.md#aws-secret-class)

## Amazon SQS

```hcl
source aws_sqs "my_queue" {
  arn = "arn:aws:sqs:us-east-2:123456789012:my-queue"

  credentials = secret_name("my-aws-access-keys")

  //to = <component>.<identifier>
}
```

Secret class: [aws](Secret-References.md#aws-secret-class)

## Azure Activity Logs

```hcl
source azure_activity_logs "audit_logs" {
  event_hub_id = "/subscriptions/1234/resourceGroups/my-group/providers/Microsoft.EventHub/namespaces/mylogs"
  event_hubs_sas_policy = "RootManageSharedAccessKey" // optional

  categories = ["Administrative", "Security", "Policy"] // optional

  auth = secret_name("my-azure-service-principal")

  //to = <component>.<identifier>
}
```

Secret class: [azure_sp](Secret-References.md#azure_sp-secret-class)

## Azure Blob Storage

```hcl
source azure_blob_storage "my_files" {
  storage_account_id = "/subscriptions/1234/resourceGroups/my-group/providers/Microsoft.Storage/storageAccounts/myfiles"
  event_hub_id = "/subscriptions/1234/resourceGroups/my-group/providers/Microsoft.EventHub/namespaces/myevents"

  event_types = ["Microsoft.Storage.BlobCreated", "Microsoft.Storage.BlobDeleted"] // optional

  auth = secret_name("my-azure-service-principal")

  //to = <component>.<identifier>
}
```

Secret class: [azure_sp](Secret-References.md#azure_sp-secret-class)

## Azure Event Hubs

```hcl
source azure_event_hubs "user_events" {
  hub_namespace = "myapp"
  hub_name = "users"

  auth = secret_name("my-azure-service-principal")

  //to = <component>.<identifier>
}
```

Secret class: [azure_sp](Secret-References.md#azure_sp-secret-class)

## GitHub

```hcl
source github "my_repo" {
  owner_and_repository = "triggermesh/bridges"

  event_types = [ "push", "pull_request" ]

  tokens = secret_name("github-source-tokens")

  //to = <component>.<identifier>
}
```

Secret class: [github](Secret-References.md#github-secret-class)

## HTTP Poller

```hcl
source httppoller "scrape_weather" {
  endpoint = "https://api.weather.gov/alerts/active?area=KS"
  method = "GET"
  interval = "5m"

  event_type = "weather.alert"
  event_source = "weather.gov/alerts/kansas" // optional

  //to = <component>.<identifier>
}
```

## Kafka

```hcl
source kafka "my_topics" {
  topics = [ "users", "transactions" ]

  bootstrap_servers = [
    "kafka1.example.com:9092",
    "kafka2.example.com:9092",
  ]

  consumer_group = "knative" // optional

  sasl_auth = secret_name("kafka-credentials") // optional

  tls = secret_name("kafka-tls") // optional
  tls = true // optional - enables TLS without referencing additional certificates

  //to = <component>.<identifier>
}
```

Secret class: [kafka](Secret-References.md#kafka-secret-class)

## Ping

```hcl
source ping "every_10_minutes" {
  data = "{ \"msg\": \"Hello, World!\" }"
  content_type = "application/json" // optional

  schedule = "*/10 * * * *" // optional

  //to = <component>.<identifier>
}
```

## Salesforce

```hcl
source salesforce "my_leads" {
  channel = "/data/ChangeEvents"
  replay_id = -2 // optional

  client_id = "my_client_id"
  server = "https://login.salesforce.com"
  user = "woodford@example.com"
  secret_key = secret_name("salesforce-oauth-cert-key")

  //to = <component>.<identifier>
}
```

Secret class: [salesforce](Secret-References.md#salesforce-secret-class)

## Slack

```hcl
source slack "my_app" {
  signing_secret = secret_name("my-app-secret") // optional
  app_id = "A12345" // optional

  //to = <component>.<identifier>
}
```

Secret class: [slack_app](Secret-References.md#slack_app-secret-class)

## Webhook

```hcl
source webhook "my_webhook" {
  event_type = "com.example.mysample.event"
  event_source = "instance-abc123" // optional

  basic_auth_username = "user" // optional
  basic_auth_password = "abc123secret" // optional

  //to = <component>.<identifier>
}
```

## Zendesk

```hcl
source zendesk "my_tickets" {
  subdomain = "mycompany"

  email = "woodford@example.com"
  api_auth = secret_name("my-zendesk-api-token")

  webhook_username = "user"
  webhook_password = "abc123secret"

  //to = <component>.<identifier>
}
```

Secret class: [zendesk](Secret-References.md#zendesk-secret-class)
