The TriggerMesh Integration Language supports a few _function expressions_ which can be used inside configuration blocks to generate attribute values. Those functions are executed at the time a Bridge description is evaluated.

This document provides information about the syntax to use for calling functions inside a Bridge Description File, as well as a reference of all supported functions. 

## Syntax

A function is represented as an expression composed of an **identifier** (function name) directly followed by a comma-separated list of **arguments** between parenthesis, such as:

```hcl
function(argument1, argument2, ...)
```

The number and types of arguments as well as the type of the returned value depends on the function.

## Functions Reference

<!-- Please click "Preview" and ensure hyperlinks are working before clicking "Save page". -->

- [file](#file-function)
- [secret_name](#secret_name-function)
- [secret_ref](#secret_ref-function)

---

### `file` Function

The `file` function reads a file from the local filesystem and returns its contents as a string.

```hcl
file(path)
```

It is particularly relevant for attributes that accept multi-line data, such as in types of `target` or `transformer` blocks which embed inline code.

#### Argument(s)

- `path`: path of the file, either absolute or relative to the directory of the Bridge Description file which calls the function.

#### Example

```hcl
code = file("functions/my_function.js")
```

---

### `secret_name` Function

The sole purpose of the `secret_name` function is to expand a block's attribute into one or more references to Kubernetes Secrets.

```hcl
secret_name(name)
```

It is used in very specific contexts, namely in attributes which represent secrets (e.g. credentials). The result of this function is typically expanded to [SecretKeySelectors](https://pkg.go.dev/k8s.io/api/core/v1#SecretKeySelector) by implementations that know how to interpret its returned value.

#### Argument(s)

- `name`: name of the Secret object. Must be a valid Kubernetes object name (RFC 1123 subdomain).

#### Example

```hcl
api_credentials = secret_name("my-api-credentials")
```

---

### `secret_ref` Function

The `secret_ref` function allows referencing a value from a Kubernetes Secret in attributes which support or require such property.

```hcl
secret_ref(name, key)
```

It is used in very specific contexts, such as populating environment variables values in [custom applications](Targets#container). The result of this function is an internal representation of a [SecretKeySelector](https://pkg.go.dev/k8s.io/api/core/v1#SecretKeySelector).

#### Argument(s)

- `name`: name of the Secret object. Must be a valid Kubernetes object name (RFC 1123 subdomain).
- `key`: data key to reference. Must consist of alphanumeric characters, '-', '\_' or '.'.

#### Example

```hcl
API_TOKEN: secret_ref("my-api-credentials", "token")
```
