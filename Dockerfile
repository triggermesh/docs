FROM python:3 AS builder

RUN pip install mkdocs-material

COPY . /docs

RUN mkdocs build --clean --config-file /docs/mkdocs.yml

FROM nginx

COPY --from=builder /docs/site/ /usr/share/nginx/html/
