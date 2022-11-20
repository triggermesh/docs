# Hasura target

Send [GraphQL](https://graphql.org/) queries to [Hasura](https://hasura.io/).

The Hasura target can handle two types of events: a raw request for Hasura that
consists of a [JSON payload](https://graphql.org/learn/serving-over-http/), and
passing a premade query with the parameters in a key/value array.


With `tmctl`:

```
tmctl create target hasura --endpoint <endpoint>
```

On Kubernetes:

Secret

```yaml
apiVersion: v1
kind: Secret
metadata:
  name: hasuratargetadminsecret
type: Opaque
stringData:
  token: <REPLACE ME WITH A REAL TOKEN>
```

Example with a predefined query

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

If required, the admin token or a JWT token can be specified for queries that
require authorized access.  Lastly, if a particular role is required, a `defaultRole`
can be defined.

- **Admin Token for Hasura**: An [admin secret][hasura-admin] or [JWT][hasura-jwt] to communicate with Hasura as discussed in [Admin Secret or JWT](#admin-secret-or-jwt).
- **Hasura Server URL**: URL endpoint to communicate with Hasura.
- **Default Role**: Specify the Hasura user role to use when querying Hasura.
- **Pre-canned Queries**: A key/value pair of predefined queries available for [CloudEvents][ce] to specify.

You can test the Target by sending it an event using `curl`.

Example of sending a raw query:

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

To make use of the pre-defined query, the `Ce-Subject` will need to specify the
specific query, and the `Ce-Type` must match `org.graphql.query` or
`org.graphql.query.raw`. The resulting payload must be an object of keys and
string values.

Example of sending a predefined query:

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

The Hasura target accepts the following event types.

`org.graphql.query.raw`

Events of this type are raw [GraphQL][graphql] queries intended to be submitted directly to Hasura.

This type expects a [JSON][ce-jsonformat] payload with the following properties:

| Name  |  Type |  Comment |
| ---|---|---|
| **query**| string| The GraphQL to run against the Hasura server|
| **operationName**| string| The query name specified in the **query** attribute|
| **variables**| map[string]string| Key/value pairs of variables with the key defined in the query|

The response event will have the `ce-type` attribute set to `org.graphql.query.result` and
`ce-source` attribute set to the Target's endpoint.

`org.graphql.query`

Events of this type leverage the pre-defined query defined when the Target is created. In addition
to the `ce-type`, the `ce-subject` must be set to the name of the pre-defined query, otherwise
the event will not be processed by the Target.

The [JSON][ce-jsonformat] payload for this type must consist of a string dictionary where the
keys correspond to the variables defined in the query, and key's value is passed as a string.

The response event will have the `ce-type` attribute set to `org.graphql.query.result` and
`ce-source` attribute set to the Target's endpoint.

See the [Kubernetes object reference](../../reference/targets/#targets.triggermesh.io/v1alpha1.HasuraTarget) for more details.

## Prerequisites

The Hasura base URL acting as the endpoint is a requirement.  In addition, either
an admin token or JWT token may be required to grant permission to the target
tables hosted by Hasura.

If using JWT, you may choose to add an optional user role to invoke the queries as.

Authentication and authorization will be considered out of scope for the target guide, but
can be found in the [Hasura Guide](https://hasura.io/docs/1.0/graphql/core/auth/index.html)

For more information about using Hasura and GraphQL, please refer to the [Hasura][hasura] and [GraphQL][graphql] documentation.

[ce]: https://cloudevents.io/
[ce-jsonformat]: https://github.com/cloudevents/spec/blob/v1.0/json-format.md

[graphql]: https://graphql.org/
[hasura]: https://hasura.io
[hasura-jwt]: https://hasura.io/docs/1.0/graphql/core/auth/authentication/jwt.html
[hasura-admin]: https://hasura.io/blog/hasura-authentication-explained/#admin-secret-auth
