# Configure autocompletion for `tmctl`

!!! warning "Work in progress"

    We are still working to stabilise these instructions for various configurations. [Please let us know](https://github.com/triggermesh/tmctl/issues/new) if you encounter difficulties.

With autocompletion with `tmctl`, you'll be able to hit the Tab key to get contextual recommendations for CLI commands and their parameters.

If you used `brew install` to install `tmctl` then autocompletion should already be configured. For other methods, please follow the instructions below.

=== "Bash (Linux, Windows WSL)"

    ```
    echo 'source <(tmctl completion bash)' >>~/.bash_profile
    ```

=== "ZSH (MacOS, Linux)"

    !!! info "Prerequisites"

        Please make sure you have autocompletion activated in ZSH before proceeding. For example the [zsh-autocomplete](https://github.com/marlonrichert/zsh-autocomplete) project makes it quite easy to setup.

    With autocomplete for ZSH configured, you can proceed to configure autocomplete for `tmctl` with the following commands:

    ```
    tmctl completion zsh > $(brew --prefix)/share/zsh/site-functions/_tmctl
    ```

    ```
    source <(tmctl completion zsh)
    compdef _tmctl tmctl
    ```

For other shells than those shown above, please try:

```sh
tmctl completion --help   
```

And then for example:

```sh
tmctl completion fish --help
```
