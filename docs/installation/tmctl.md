# Install TriggerMesh CLI

TriggerMesh's command line interface `tmctl`, makes it easy to create, configure and run a TriggerMesh Broker on any machine that has Docker.

## Pre-requisites

Make sure [docker](https://docs.docker.com/engine/install/) container service is installed at the host where `tmctl` will be used.

## Installation

**:material-numeric-1-box: Install `tmctl`**

TriggerMesh CLI can be installed from different sources: brew repository, pre-built binary, or compiled from source.

=== "Brew"

    Coming soon...
    <!-- ```
    brew install tmctl
    ``` -->

=== "Pre-built binary"

    Use the following one-liner to automatically download and install the CLI:

    ```
    curl -sSfL https://raw.githubusercontent.com/triggermesh/tmctl/HEAD/hack/install.sh | sh
    ```

    Alternatively, visit the [releases page](https://github.com/triggermesh/tmctl/releases) to manually download the latest version for your platform and make sure the path of the downloaded binary is configured in the `PATH` environment variable.

=== "From source"

    The most recent version of the `go` compiler is recommended to build `tmctl` binary from source:

    ```
    git clone git@github.com:triggermesh/tmctl.git
    cd tmctl
    go install
    ```

    Make sure that the binary's location is configured in the `PATH` environment variable, like so:

    ```
    export PATH="$HOME/go/bin:$PATH"
    ```

    Verify that the binary has been successfully installed:

    ```
    tmctl --help
    ```

**:material-numeric-2-box: Setup autocompletion**

This will let you hit the Tab key to get recommendations when using `tmctl`.

=== "Bash (Linux, Windows WSL)"

    ```
    echo 'source <(tmctl completion bash)' >>~/.bash_profile
    ```

=== "ZSH (MacOS, Linux)"

    ```
    tmctl completion zsh > $(brew --prefix)/share/zsh/site-functions/_tmctl
    ```

    <!-- For certain MacOS environments:
    ```
    tmctl completion zsh > $(brew --prefix)/share/zsh/site-functions/_tmctl
    ``` -->

For other shells, try `tmctl completion help` for more information.

