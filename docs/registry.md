# Registry

!!!Placeholder content!!!

In TriggerMesh, an Event is described using a common format that defines the structure and metadata description of events.

Example event

```
{
"specversion" : "1.0",
"type" : "com.aws.s3.objectcreated",
"source" : "aws.s3",
"subject" : "mynewfile.jpg",
"id" : "A234-1234-1234",
"time" : "2018-04-05T17:31:00Z",
"extension1" : "value",
"datacontenttype" : "application/json",
“dataschema”: “http://schemas.myorg.com/schemagroups/awsS3/schemas/com.aws.s3.objectcreated@aws.s3/versions/2”
"data" : "{\“data\”:\”here\”}"
}
```
Schemas are what the Registry stores. 

```
tmcli get schemas
TYPE                                     SOURCE     		  DESCRIPTION
my.webhook.source.type			   my.source	  	  My webhook events


tmcli create trigger --eventTypes my.webhook.source.type --target myhttptarget
```
