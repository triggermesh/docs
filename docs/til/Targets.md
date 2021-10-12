## Full list

<!-- Please click "Preview" and ensure hyperlinks are working before clicking "Save page". -->

- [Amazon DynamoDB](#amazon-dynamodb)
- [Amazon Kinesis](#amazon-kinesis)
- [Amazon Lambda](#amazon-lambda)
- [Amazon S3](#amazon-s3)
- [Amazon SNS](#amazon-sns)
- [Amazon SQS](#amazon-sqs)
- [Container](#container)
- [Datadog](#datadog)
- [Event Display](#event-display)
- [Function](#function)
- [Google Cloud Firestore](#google-cloud-firestore)
- [Google Cloud Storage](#google-cloud-storage)
- [Kafka](#kafka)
- [Logz](#logz)
- [Sendgrid](#sendgrid)
- [Slack](#slack)
- [Sockeye](#sockeye)
- [Splunk](#splunk)
- [Twilio](#twilio)
- [Zendesk](#zendesk)

---

## Amazon DynamoDB

```hcl
target aws_dynamodb "my_table" {
  arn = "arn:aws:dynamodb:us-east-2:123456789012:table/my-table"

  credentials = secret_name("my-aws-access-keys")

  //reply_to = <component>.<identifier>
}
```

Secret class: [aws](Secret-References.md#aws-secret-class)

## Amazon Kinesis

```hcl
target aws_kinesis "my_stream" {
  arn = "arn:aws:kinesis:us-east-2:123456789012:stream/my-stream"

  credentials = secret_name("my-aws-access-keys")

  //reply_to = <component>.<identifier>
}
```

Secret class: [aws](Secret-References.md#aws-secret-class)

## Amazon Lambda

```hcl
target aws_lambda "my_userpool" {
  arn = "arn:aws:cognito-idp:us-east-2:123456789012:userpool/my-pool"

  credentials = secret_name("my-aws-access-keys")

  //reply_to = <component>.<identifier>
}
```

Secret class: [aws](Secret-References.md#aws-secret-class)

## Amazon S3

```hcl
target aws_s3 "my_bucket" {
  arn = "arn:aws:s3:::my-bucket"

  credentials = secret_name("my-aws-access-keys")

  //reply_to = <component>.<identifier>
}
```

Secret class: [aws](Secret-References.md#aws-secret-class)

## Amazon SNS

```hcl
target aws_sns "my_topic" {
  arn = "arn:aws:sns:us-east-2:123456789012:my-topic"

  credentials = secret_name("my-aws-access-keys")

  //reply_to = <component>.<identifier>
}
```

Secret class: [aws](Secret-References.md#aws-secret-class)

## Amazon SQS

```hcl
target aws_sqs "my_queue" {
  arn = "arn:aws:sqs:us-east-2:123456789012:my-queue"

  credentials = secret_name("my-aws-access-keys")

  //reply_to = <component>.<identifier>
}
```

Secret class: [aws](Secret-References.md#aws-secret-class)

## Container

A single-container CloudEvents receiver which scales out automatically according to the number of concurrent requests, and scales down to zero when it doesn't receive any request for a certain amount of time.

```hcl
target container "my_app" {
  image = "registry.example.com/myapp:v1"
  public = false // optional

  // optional
  env_var "ENV_VAR_LITERAL" {
    value = "some value"
  }
  env_var "ENV_VAR_FROM_SECRET" {
    value = secret_ref("secret-name", "secret-key")
  }
}
```

This alternative, more compact syntax can be used for declaring environment variables, as long as all values have the **same type** (either literal string OR secret reference):

```hcl
  env_vars = {
    ENV_VAR_1: "some value"
    ENV_VAR_2: "another value"
  }
```

## Datadog

```hcl
target datadog "my_metrics" {
  metric_prefix = "myapp" // optional

  auth = secret_name("my-datadog-credentials")

  //reply_to = <component>.<identifier>
}
```

Secret class: [datadog](Secret-References.md#datadog-secret-class)

## Event Display

A CloudEvent receiver that logs received events to standard output. The service scales down to zero when it doesn't receive any request for a certain amount of time.

```hcl
target event_display "debug" { }
```

## Function

```hcl
target function "my_function" {
  runtime = "python"
  entrypoint = "main" // optional

  code = file("funcs/handler.py")

  // optional, applies to functions that send CloudEvent responses
  ce_context {
    type = "my.target.v1.event"

    source = "my_function" // optional
    subject = "some_subject" // optional
  }

  public = false // optional

  //reply_to = <component>.<identifier>
}
```

## Google Cloud Firestore

```hcl
target gcloud_firestore "my_bucket" {
  default_collection = "users"
  project_id = "my-project"

  service_account = secret_name("my-gcloud-service-account")

  //reply_to = <component>.<identifier>
}
```

Secret class: [gcloud_service_account](Secret-References.md#gcloud_service_account-secret-class)

## Google Cloud Storage

```hcl
target gcloud_storage "my_bucket" {
  bucket_name = "my-bucket"

  service_account = secret_name("my-gcloud-service-account")

  //reply_to = <component>.<identifier>
}
```

Secret class: [gcloud_service_account](Secret-References.md#gcloud_service_account-secret-class)

## Kafka

```hcl
target kafka "my_topic" {
  topic = "test1"

  bootstrap_servers = ["server1:9092", "server2:9092"]

  auth = secret_name("kafka-security-settings")

  //reply_to = <component>.<identifier>
}
```

Secret class: [kafka](Secret-References.md#kafka-secret-class)

## Logz

```hcl
target logz "my_logs" {
  logs_listener_url = "listener.logz.io"

  auth = secret_name("my-logz-credentials")

  //reply_to = <component>.<identifier>
}
```

Secret class: [logz](Secret-References.md#logz-secret-class)

## Sendgrid

```hcl
target sendgrid "email_notifications" {
  default_from_email = "jane@example.com" // optional
  default_from_name = "Jane" // optional

  default_to_email = "woodford@example.com" // optional
  default_to_name = "Woodford" // optional

  default_subject = "Notification" // optional

  auth = secret_name("my-sendgrid-credentials")

  //reply_to = <component>.<identifier>
}
```

Secret class: [sendgrid](Secret-References.md#sendgrid-secret-class)

## Slack

```hcl
target slack "my_channel" {
  auth = secret_name("my-slack-credentials")

  //reply_to = <component>.<identifier>
}
```

Secret class: [slack](Secret-References.md#slack-secret-class)

## Sockeye

A CloudEvent receiver that embeds a web UI which allows visualizing received events in real time. The service is exposed at a public URL via an ingress gateway, and scales down to zero when it doesn't receive any request for a certain amount of time.

```hcl
target sockeye "debug" { }
```

## Splunk

```hcl
target splunk "my_event_collector" {
  endpoint = "https://prd-x-12345.splunkcloud.com"
  index = "default" // optional

  skip_tls_verify = false // optional

  auth = secret_name("my-splunk-credentials")

  //reply_to = <component>.<identifier>
}
```

Secret class: [splunk_hec](Secret-References.md#splunk_hec-secret-class)

## Twilio

```hcl
target twilio "sms_notifications" {
  default_phone_from = "+10000000000" // optional
  default_phone_to = "+10000000000"   // optional

  auth = secret_name("my-twilio-credentials")

  //reply_to = <component>.<identifier>
}
```

Secret class: [twilio](Secret-References.md#twilio-secret-class)

## Zendesk

```hcl
target zendesk "customer_tickets" {
  subdomain = "mycompany"

  email = "woodford@example.com"
  api_auth = secret_name("my-zendesk-api-token")

  subject = "Ticket from TriggerMesh"

  //reply_to = <component>.<identifier>
}
```

Secret class: [zendesk](Secret-References.md#zendesk-secret-class)
