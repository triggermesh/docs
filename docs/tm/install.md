# Installation

The `tm` binary can be installed from pre-built binary releases or can be built directly from source.

### From binary releases

Releases are available for 64-bit versions of Linux, macOS and Windows platforms.

1. Download the desired version from the [releases](https://github.com/triggermesh/tm/releases) page.
2. Move it to its desired destination (`mv tm-linux-amd64 /usr/local/bin/tm`)
3. Make it executable `chmod +x /usr/local/bin/tm`

### From Homebrew (macOS and Linux)

```bash
brew install tm
```

### From source (Linux / macOS)

To build the `tm` binary from source you need the [Go](https://golang.org/doc/install) compiler toolchain.

```bash
go get github.com/triggermesh/tm
```
