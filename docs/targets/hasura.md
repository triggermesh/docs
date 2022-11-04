# Hasura Target

This event target utilizes CloudEvents to send [GraphQL](https://graphql.org/)
queries to Hasura.  The Hasura Target supports two methods of invocation:

- Raw query where the payload can be passed directly to Hasura's GraphQL endpoint
- A pre-defined query where it can be invoked with the variables passed in the message

## Prerequisites

The Hasura base URL acting as the endpoint is a requirement.  In addition, either
an admin token or JWT token may be required to grant permission to the target
tables hosted by Hasura.

If using JWT, you may choose to add an optional user role to invoke the queries as.

Authentication and authorization will be considered out of scope for the target guide, but
can be found in the [Hasura Guide](https://hasura.io/docs/1.0/graphql/core/auth/index.html)

Consult the [Secrets](../guides/secrets.md) guide for more information about
how to add the admin or user JWT as secrets.

## Deploying an Instance of the Target

- **Admin Token for Hasura**: Reference to a [TriggerMesh secret](../guides/secrets.md) containing an [admin secret][hasura-admin] or [JWT][hasura-jwt] to communicate with Hasura as discussed in [Admin Secret or JWT](#admin-secret-or-jwt).
- **Hasura Server URL**: URL endpoint to communicate with Hasura.
- **Default Role**: Specify the Hasura user role to use when querying Hasura.
- **Pre-canned Queries**: A key/value pair of predefined queries available for [CloudEvents][ce] to specify.

For more information about using Hasura and GraphQL, please refer to the [Hasura][hasura] and [GraphQL][graphql] documentation.

## Create Hasura Target Integration

### When an Authentication Token Is Required

Any authentication token will require a secret to be created before it can be used.

```yaml
apiVersion: v1
kind: Secret
metadata:
  name: hasuratargetadminsecret
type: Opaque
stringData:
  token: <REPLACE ME WITH A REAL TOKEN>
```

### Creating a Hasura Target

The Hasura target can handle two types of events: a raw request for Hasura that
consists of a [JSON payload](https://graphql.org/learn/serving-over-http/), and
passing a premade query with the parameters in a key/value array.

Regardless of method, the Knative target will require an endpoint.

If required, the admin token or a JWT token can be specified for queries that
require authorized access.  Lastly, if a particular role is required, a `defaultRole`
can be defined.

#### Sending a Known Query

Predefined queries can be specified in the target spec using a
[sample example](../samples/hasura/200-target.yaml).  For an incoming CloudEvent
to make use of the pre-defined query, the `Ce-Subject` will need to specify the
specific query, and the `Ce-Type` must match `org.graphql.query` or
`org.graphql.query.raw`. The resulting payload must be an object of keys and
string values.


### Sending a Raw Query

```sh
curl -v http://localhost:8080 \
 -X POST \
 -H "Content-Type: application/json" \
 -H "Ce-Specversion: 1.0" \
 -H "Ce-Type: org.graphql.query.raw" \
 -H "Ce-Source: awesome/instance" \
 -H "Ce-Id: aabbccdd11223344" \
 -d '{
  "query": "query MyQuery { foo { id name } }",
  "operationName": "MyQuery",
  "variables": {}
}'
```

### Send a Predefined Query
Assuming a sample target spec:

```yaml
apiVersion: targets.triggermesh.io/v1alpha1
kind: HasuraTarget
metadata:
 name: hasuratarget

spec:
  endpoint: 'http://hasura.example.com:8080' # Target Hasura instance
  queries:
    - name: MyQuery
      query: "query MyQuery($person_id: Int) { foo(where: {id: {_eq: $person_id}} ) { id name } }"

```

Then the following event could be used:
```sh
curl -v http://localhost:8080 \
 -X POST \
 -H "Content-Type: application/json" \
 -H "Ce-Specversion: 1.0" \
 -H "Ce-Type: org.graphql.query" \
 -H "Ce-Source: awesome/instance" \
 -H "Ce-Subject: MyQuery" \
 -H "Ce-Id: aabbccdd11223344" \
 -d '{"person_id": "5"}'
```

## Event Types

A Hasura event Target accepts the following [CloudEvent][ce] types:

### org.graphql.query.raw

Events of this type are raw [GraphQL][graphql] queries intended to be submitted directly to Hasura.

This type expects a [JSON][ce-jsonformat] payload with the following properties:

| Name  |  Type |  Comment |
| ---|---|---|
| **query**| string| The GraphQL to run against the Hasura server|
| **operationName**| string| The query name specified in the **query** attribute|
| **variables**| map[string]string| Key/value pairs of variables with the key defined in the query|

The response event will have the `ce-type` attribute set to `org.graphql.query.result` and
`ce-source` attribute set to the Target's endpoint.

### org.graphql.query

Events of this type leverage the pre-defined query defined when the Target is created. In addition
to the `ce-type`, the `ce-subject` must be set to the name of the pre-defined query, otherwise
the event will not be processed by the Target.

The [JSON][ce-jsonformat] payload for this type must consist of a string dictionary where the
keys correspond to the variables defined in the query, and key's value is passed as a string.

The response event will have the `ce-type` attribute set to `org.graphql.query.result` and
`ce-source` attribute set to the Target's endpoint.

[ce]: https://cloudevents.io/
[ce-jsonformat]: https://github.com/cloudevents/spec/blob/v1.0/json-format.md

[graphql]: https://graphql.org/
[hasura]: https://hasura.io
[hasura-jwt]: https://hasura.io/docs/1.0/graphql/core/auth/authentication/jwt.html
[hasura-admin]: https://hasura.io/blog/hasura-authentication-explained/#admin-secret-auth
