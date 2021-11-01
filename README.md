# Documentation Site for TriggerMesh

This uses [`mkdocs`](https://www.mkdocs.org/)

Install it with:

```
pip install mkdocs-material mkdocs-redirects
```

If you have Python3, you may need to run

```
pip3 install mkdocs-material mkdocs-redirects
```

## Serve the site locally

```
mkdocs serve
```

## Changes

Commit your changes and CI will automatically build the new site and deploy it

## Docker Instructions

From the `docs` directory, build the image with the `docs` name.

```
docker build -t docs .
```

After a few minutes
```
docker images
REPOSITORY   TAG       IMAGE ID       CREATED              SIZE
docs         latest    1e704c7ab807   About a minute ago   155MB
```

Start up the container
```
docker run -p 8081:80 docs:latest
```

and open http://localhost:8081 to view the content.

## Support

We would love your feedback and help on this documentation, so don't hesitate to let
us know what is wrong and how we could improve them, just file an
[issue](https://github.com/triggermesh/docs/issues/new) or join those of us
who are maintaining them and submit a
[PR](https://github.com/triggermesh/docs/compare)

## Commercial Support

TriggerMesh Inc offers commercial support, email info@triggermesh.com
to get more details.

## Code of Conduct

This plugin is by no means part of [CNCF](https://www.cncf.io/) but we abide by
its
[code of conduct](https://github.com/cncf/foundation/blob/master/code-of-conduct.md)
