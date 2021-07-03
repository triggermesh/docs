# Documentation Site for TriggerMesh

This uses [`mkdocs`](https://www.mkdocs.org/)

Install it with:

```
pip install mkdocs-material
```

If you have Python3, you may need to run

```
pip3 install mkdocs-material
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
