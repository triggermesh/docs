# Google spreadsheets Target

## Using the sink adapter

|ENV name                       |Required   |Default|Description|
|-------------------------------|:---------:|-------| ----------|
|[General ENV](../README.md)    |           |       | ENV variables that is common for every target |
|GOOGLE_CREDENTIALS_JSON         |    YES    |       | JSON string with credentials of Service Account |
|MAX_SHEET_ROW                  |    NO     |  100  | Number of rows that will be appended to sheet before creating new one|
|GOOGLE_SPREADSHEET_ID          |    YES    |       | id of Spreadsheet where cloudevent data should be saved|

- `GOOGLE_SPREADSHEET_ID` is a unique identifier that can be retrieved from the URL path or parameters:
  - from path: `https://docs.google.com/spreadsheets/d/<SHEET_ID>/edit`
  - from query string: `https://docs.google.com/spreadsheet/ccc?key=<SHEET_ID>`
  
To get `GOOGLE_CREDENTIALS` json:

1. Head to [Google Developers Console](https://console.developers.google.com/apis/dashboard) and create a new
 project (or select the one you have.)
2. Under “**APIs & Services > Library**”, search for “**Sheets API**” and enable it.
3. Go to “**APIs & Services > Credentials**” and choose “**Create credentials > Service account**”. (No extra roles nor
 users access is required, you can skip optional fields)
4. On the last step of service account creation download the JSON key.

Use the `client_email` field within the credentials JSON file you downloaded to share the 
Google Spreadsheets you want the Target to have access to. (when sharing Notifications mark should be disabled)

Create a new Google Sheet and share it with the 'client_email' address found in the JSON key. (when sharing the "Send Notifications" mark should be disabled)

## Message format

Google Spreadsheets Target expect to received Cloud Events with a JSON payload that includes these fields:

- `sheet_name_prefix` will be set to the prefix for individual sheets adding a suffix number. 
The Target will write entries to each sheet and once `MAX_SHEET_ROW` is reached, the suffix number 
will be increased, and a new sheet will be created and written to.
- `row` 

```json
{
	"sheet_name_prefix": "Employees",
	"row": [{"column": "Name", "value": "Alex"}, {"column": "Experience", "value": "2"}, {"column": "Stack", "value": "Backend"}]
}
```

Example:

```sh
curl -v "10.1.52.153:8080" \
-X POST \
-H "Ce-Id: 536808d3-88be-4077-9d7a-a3f162705f79" \
-H "Ce-Specversion: 1.0" \
-H "Ce-Type: dev.knative.helloworld" \
-H "Ce-Source: dev.knative/helloworldsource" \
-H "Content-Type: application/json" \
-d '{"sheet_name_prefix": "Employees", "row": [{"column": "Name", "value": "Alex"}, {"column": "Experience", "value": "2"}, {"column": "Stack", "value": "Backend"}]}'
```


## Deploying The Google Spreadsheet Target To a Kubernetes cluster


1. In the 'samples' folder you will need to:
* Update the '100-secret.yaml' file with a valid Google JSON credential string.
* Update the '200-target.yaml' file 'googleSpreadsheetID' field with a valid Google sheet ID.

2. From the root of the project directory execute the following commands:

```shell
ko apply -f config/ 
kubectl apply -f samples/
```

3. If everything worked sucessfully a new namespace "triggermesh-knative-targets" should be now be created with a Googlesheets adapter and controller pod active and ready!

***Note: currently all services are deployed to the 'triggermesh-knative-targets' namespace. If you would like to deploy to another namespace the 'namespace' value in all the .yaml files found in both 'samples/' and 'config/' will need to be updated with the desired namespace***

