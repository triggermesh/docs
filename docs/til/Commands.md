This document describes the usage of the `til` CLI.

It is also possible to print some usage instructions about any command directly via the CLI by appending the `-h` or `--help` flag to the specified command:

```console
$ til --help
Interpreter for TriggerMesh's Integration Language.

USAGE:
    til <command>

COMMANDS:
    generate     Generate Kubernetes manifests for deploying a Bridge.
    validate     Validate a Bridge description.
    graph        Represent a Bridge as a directed graph in DOT format.
```

## List of commands

<!-- Please click "Preview" and ensure hyperlinks are working before clicking "Save page". -->

- [generate](#generate-command)
- [validate](#validate-command)
- [graph](#graph-command)

## `generate` Command

Usage: `til generate FILE [OPTION]...`

The `til generate` command generates the Kubernetes manifests that allow the Bridge described in `FILE` to be deployed to TriggerMesh. The default output is a Kubernetes `List` of individual Kubernetes objects written to standard output in JSON format.

Options:

- `--bridge` Output a Bridge object instead of a List-manifest.
- `--yaml` Output generated manifests in YAML format.

## `validate` Command

Usage: `til validate FILE`

The `til validate` command verifies that the Bridge described in `FILE` is syntactically valid and can be generated, in which case it returns with an exit code of `0`. If the Bridge description contains errors, those errors are printed to standard output and the command returns with an exit code of `1`.

Options:

- `--quiet` Suppress non-error output.

## `graph` Command

Usage: `til graph FILE`

The `til graph` command generates a [DOT Language](https://www.graphviz.org/doc/info/lang.html) representation of the Bridge parsed from FILE, and writes it to standard output.

Drawings in the DOT language can be rendered in different graphic formats using the [`dot` command-line tool](https://www.graphviz.org/doc/info/command.html) from the Graphviz visualization software, or visualized directly via a web interface such as the [Graphviz Visual Editor](http://magjac.com/graphviz-visual-editor/).
