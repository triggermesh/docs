[kapp](https://carvel.dev/kapp/docs/latest/) is a CLI tool backed by VMware which can deploy groups of Kubernetes objects as independent applications in a safe and predictable manner.

The example below demonstrates how to use kapp to deploy a TriggerMesh Bridge and manage its lifecycle.

## Deployment

The kapp tool allows deploying a Bridge List-manifest directly using the `kapp deploy` command. In a Bash-compatible shell, this can be achieved in a single step using a [process substitution](https://tldp.org/LDP/abs/html/process-sub.html):

```console
$ kapp deploy -a my-bridge --yes -f <(til generate my-bridge.brg.hcl)
Target cluster 'https://my-cluster.example.com' (nodes: node-1, 2+)

Changes

Namespace  Name        Kind       Conds.  Age  Op      Op st.  Wait to    Rs  Ri
default    some-name   SomeKind   -       -    create  -       reconcile  -   -
^          other-name  OtherKind  -       -    create  -       reconcile  -   -
[...]

Op:      6 create, 0 delete, 0 update, 0 noop
Wait to: 6 reconcile, 0 delete, 0 noop

Continue? [yN]: y

2:51:35PM: ---- applying 6 changes [0/6 done] ----
2:51:37PM: create somekind/some-name (example/v1) namespace: default
2:51:37PM: create otherkind/other-name (example/v1) namespace: default
[...]
2:51:39PM: ---- waiting on 6 changes [0/6 done] ----
2:51:40PM: ok: reconcile somekind/some-name (example/v1) namespace: default
2:51:40PM: ok: reconcile otherkind/other-name (example/v1) namespace: default
[...]
2:51:40PM: ---- applying complete [6/6 done] ----
2:51:40PM: ---- waiting complete [6/6 done] ----

Succeeded
```

The command shown in the previous example is equivalent to saving the generated List-manifest to a file prior to deploying it:

```console
$ til generate my-bridge.brg.hcl > my-bridge-manifest.json
```
```console
$ kapp deploy -a my-bridge -f my-bridge-manifest.json
```

Alternatively, a List-manifest can be piped to the `kapp deploy` command by using the `-` notation as the file name, which corresponds to the standard input. Please note that piping data to kapp requires the usage of the `--yes` flag, which bypasses the interactive user approval:

```console
$ til generate my-bridge.brg.hcl | kapp deploy -a my-bridge --yes -f -
```

The deployed Bridge should appear in the list of kapp applications:

```console
$ kapp list
Target cluster 'https://my-cluster.example.com' (nodes: node-1, 2+)

Apps in namespace 'default'

Name       Namespaces  Lcs   Lca
my-bridge  default     true  6m

Lcs: Last Change Successful
Lca: Last Change Age

1 apps

Succeeded
```

## Updates

Any future modification to the Bridge description can be applied to the deployed application using the same `deploy` command and parameters used during the initial deployment. All pending changes are printed in the terminal and must be approved by the user, unless the `--yes` flag is set:

```console
$ kapp deploy -a my-bridge -f my-bridge-manifest.json
Target cluster 'https://my-cluster.example.com' (nodes: node-1, 2+)

Changes

Namespace  Name        Kind       Conds.  Age  Op      Op st.  Wait to    Rs  Ri
default    some-name   SomeKind   5/5 t   14m  update  -       reconcile  ok  -
^          other-name  OtherKind  5/5 t   14m  delete  -       delete     ok  -

Op:      0 create, 1 delete, 1 update, 0 noop
Wait to: 1 reconcile, 1 delete, 0 noop

Continue? [yN]: y

3:05:57PM: ---- applying 2 changes [0/2 done] ----
3:05:58PM: update somekind/some-name (example/v1) namespace: default
3:05:58PM: delete otherkind/other-name (example/v1) namespace: default
3:05:59PM: ---- waiting on 2 changes [0/2 done] ----
3:06:00PM: ok: reconcile somekind/some-name (example/v1) namespace: default
3:06:01PM: ok: delete otherkind/other-name (example/v1) namespace: default
3:06:01PM: ---- applying complete [2/2 done] ----
3:06:01PM: ---- waiting complete [2/2 done] ----

Succeeded
```

## Termination

To undo the deployment of an entire Bridge, simply uninstall its kapp application:

```console
$ kapp delete -a my-bridge
Target cluster 'https://my-cluster.example.com' (nodes: node-1, 2+)

Changes

Namespace  Name        Kind       Conds.  Age  Op      Op st.  Wait to    Rs  Ri
default    some-name   SomeKind   5/5 t   20m  delete  -       reconcile  ok  -
[...]

Op:      0 create, 5 delete, 0 update, 0 noop
Wait to: 0 reconcile, 5 delete, 0 noop

Continue? [yN]: y

3:12:02PM: ---- applying 5 changes [0/5 done] ----
3:12:04PM: delete somekind/some-name (example/v1) namespace: default
[...]
3:12:04PM: ---- waiting on 5 changes [0/5 done] ----
3:12:04PM: ok: delete somekind/some-name (example/v1) namespace: default
[...]
3:12:04PM: ---- applying complete [5/5 done] ----
3:12:04PM: ---- waiting complete [5/5 done] ----

Succeeded
```
