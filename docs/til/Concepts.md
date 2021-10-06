The _TriggerMesh Integration Language_ allows to declaratively express a messaging system called a _Bridge_. At its core, a Bridge is composed of interconnected messaging components that exchange data via _Events_, often asynchronously over data channels.

This document describes the main concepts of the language.

## Contents

<!-- Please click "Preview" and ensure hyperlinks are working before clicking "Save page". -->

- [Syntax](#syntax)
- [Component Blocks](#component-blocks)
- [Identifiers](#identifiers)
- [References](#references)
- [Expressions](#expressions)

---

## Syntax

The constructs of the TriggerMesh Integration Language build upon the [HCL syntax][hcl-syntax], which was created by HashiCorp Inc. and popularized by products such as Terraform, Nomad or Packer.

The different components of a given Bridge are represented as configuration _blocks_ which are identified by _labels_ and contain configuration _attributes_.

An example of direct point-to-point integration between two services could be expressed with the following code snippet:

```hcl
bridge "github_to_splunk" { }

/* Event source block 
   Sources events from a GitHub repository
*/
source github "my_repo" {
  owner_and_repository = "triggermesh/bridges"
  tokens = secret_name("github-source-tokens")

  event_types = [
    "push", 
    "pull_request",
  ]

  to = target.github_archive_index
}

/* Event target block 
   Receives events and stores them into a Splunk index
*/
target splunk "github_archive_index" {
  endpoint = "https://prd-x-12345.splunkcloud.com"
  auth = secret_name("my-splunk-credentials")

  index = "github_events"
}
```

Most configuration attributes are component-specific. All available attributes are documented in details in the [Availaible Implementations](Home#available-implementations) section of the documentation.

The rest of this document focuses on the general language constructs available in the TriggerMesh Integration Language, some of which are demonstrated in the previous snippet.

## Component Blocks

Each configuration block represents a logical messaging component within a Bridge. These components are expressed as [HCL blocks][hcl-elems].

The first keyword in a component block definition is the _category_ of the component to represent. There are five categories of components available in the TriggerMesh Integration Language, which are described in details in the [Component Categories](Component-Categories) section of the documentation.

For example, the following component, taken from the previous code snippet, falls into the `source` category:

```hcl
source github "my_repo" { }
```

**NOTE:** While all components are ultimately translated to Kubernetes manifests, there is not always a 1:1 relationship between a Bridge component and a Kubernetes API object.

## Identifiers

A Bridge component accepts exactly two [labels][hcl-elems] after the category keyword.

The first label is the component _type_. It determines the schema of the configuration within the component block: its nested blocks and attributes, their type, whether they are mandatory or optional, etc. Its value must be a supported component type.

The second label is the component _identifier_. It is used to uniquely identify the instance of a component within a given component category. Its value can be arbitrarily chosen.

For example, the following component, taken from the previous code snippet, is of type `github` and is identified as `my_repo`:

```hcl
source github "my_repo" { }
```

**NOTE:** Labels that appear in component blocks must be valid [HCL identifiers][hcl-ident], and can therefore be written either as quoted literal strings or naked identifiers (unquoted). By convention, all examples in this documentation use a naked identifier for the type label, and a quoted identifier for the component identifier label.

## References

Any messaging component that can _send_ events is required to support references to other components. These references are used to determine the dependencies between components of a Bridge, and are automatically resolved to event _addresses_.

A block reference is always expressed as a [HCL variable expression][hcl-varexpr] in the format `<CATEGORY>.<IDENTIFIER>`. The referenced component must be defined within the Bridge.

For example, the following component, taken from the previous code snippet, sends events to a component of type `target` identified as `github_archive_index`:

```hcl
source github "my_repo" {
  to = target.github_archive_index
}
```

**NOTE:** Although there is no restriction in the language about what attribute name may represent a block reference, most component implementations use the attribute name `to` or `reply_to` by convention to represent such reference.

## Expressions

In some contexts, the value of a given attribute may be determined by evaluating a [HCL expression][hcl-expr].

For example, the following component, taken from the previous code snippet, has a `tokens` attribute which value is evaluated by calling a function named `secret_name`:

```hcl
source github "my_repo" {
  tokens = secret_name("github-source-tokens")
}
```

**NOTE:** Function expressions are documented in details in the [Function Expressions](Function-Expressions) section of the documentation.

[hcl-syntax]: https://github.com/hashicorp/hcl/blob/main/hclsyntax/spec.md
[hcl-elems]: https://github.com/hashicorp/hcl/blob/main/hclsyntax/spec.md#structural-elements
[hcl-ident]: https://github.com/hashicorp/hcl/blob/main/hclsyntax/spec.md#identifiers
[hcl-varexpr]: https://github.com/hashicorp/hcl/blob/main/hclsyntax/spec.md#variables-and-variable-expressions
[hcl-expr]: https://github.com/hashicorp/hcl/blob/main/hclsyntax/spec.md#expression-terms
