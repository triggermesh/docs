# How to update TriggerMesh

## Overview

Below is a breakdown of the main TriggerMesh components that have their own release cycles and hence their own versioning:

* TriggerMesh components (sources, targets, transformations...) and their Kubernetes CRDs and controllers, see [triggermesh/triggermesh](https://github.com/triggermesh/triggermesh)
* The TriggerMesh Brokers and their CRDs and controllers, see [triggermesh/triggermesh-core](https://github.com/triggermesh/triggermesh-core) and [triggermesh/brokers](https://github.com/triggermesh/brokers)
* The command line interface `tmctl`, see [triggermesh/tmctl](https://github.com/triggermesh/tmctl)

When TriggerMesh makes minor or major releases, the umbrella version number used is that of [triggermesh/triggermesh](https://github.com/triggermesh/triggermesh).  

With that in mind, here is what you need to know when updating these components, for example if a new release includes fixes or features you'd like to access.

## Updating tmctl

There are different ways to update `tmctl`, depending on you operating system and how you installed `tmctl`:

* If you used `homebrew`, you can run `brew upgrade triggermesh/cli/tmctl`
* If you used one of the pre-built binaries, you can replace the existing binary with the new one. The script provided with `curl -sSfL https://raw.githubusercontent.com/triggermesh/tmctl/HEAD/hack/install.sh | sh` will do this automatically

!!! warning

    Updating `tmctl` will not impact the versions of TriggerMesh components it uses.

To update the version of components used by `tmctl`, you need to update `tmctl` configuration to point to the version of the TriggerMesh components you want it to use.

You can view the current version used with the `tmctl version` command, which produces the following output:

```
CLI:
 Version:  v1.0.0
 Commit:  08be377e0f5fb77cee7fdd2d0ad026297245b8eb
 OS/Arch: darwin/arm64

TriggerMesh:
 Components version:  v1.22.0

Docker:
  Docker Desktop 4.6.1 (76265)
```

To switch to another version of the TriggerMesh components, you can use the command:

```
tmctl config set triggermesh.version v1.23.0
```

## Uninstalling tmctl 

If you install tmctl using brew, you can uninstall it with the following command:

```sh
brew uninstall triggermesh/cli/tmctl 
```

If you installed tmctl using a pre-built binary, you can uninstall it by running the following commands: 

```sh
rm -f $(which tmctl)
rm -rf $HOME/.triggermesh/cli/
```

## Updating TriggerMesh on K8s

If you've installed an older version of TriggerMesh, you can simply update it by following the installation guide with the latest versions of the CRDs and controllers or by using the latest helm chart.

Please carefully read the release notes before performing an update. There maybe be backwards incompatible changes to components that require changes to your configurations. It is your responsibility as the user to make any necessary migrations.
