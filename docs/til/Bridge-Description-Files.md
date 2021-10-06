Bridges are described in source files called _Bridge Description Files_ with the extension `.brg.hcl`.

Bridge descriptions are written in a configuration language called _TriggerMesh Integration Language_, which is based on the [HCL syntax](https://github.com/hashicorp/hcl/blob/main/hclsyntax/spec.md), as explained in the [Concepts](Concepts.md) section of the documentation.

Each Bridge Description File contains the description of a _single_ Bridge.

## Syntax Highlighting

The following extensions enable support for syntax highlighting of HCL files (any `*.hcl` file extension) in various popular IDEs/Text editors:

- Visual Studio Code: [hashicorp/vscode-terraform](https://marketplace.visualstudio.com/items?itemName=HashiCorp.terraform)
- IntelliJ: [Terraform/HCL language support](https://plugins.jetbrains.com/plugin/7808-hashicorp-terraform--hcl-language-support)
- Sublime Text: [alexlouden/Terraform](https://packagecontrol.io/packages/Terraform)
- Atom: [fd/language-hcl](https://atom.io/packages/language-hcl)
- Vim: [jvirtanen/vim-hcl](https://vimawesome.com/plugin/vim-hcl-impatience-and-laziness)
- Emacs: [purcell/emacs-hcl-mode](https://melpa.org/#/hcl-mode)

## Code Formatting

The GitHub repository of the HCL toolkit contains the source code of a command-line tool called [`hclfmt`](https://github.com/hashicorp/hcl/tree/main/cmd), which can be used for formatting HCL files.

Binary releases of this tool are available at [teamon/hclfmt](https://github.com/teamon/hclfmt/releases/tag/v0.0.1) (GitHub).

## Visual Studio Code Extension

<!-- TODO -->
