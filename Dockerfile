FROM python:3 AS builder

ARG MKDOCS_INSIDERS_TOKEN=

RUN pip install git+https://${MKDOCS_INSIDERS_TOKEN}@github.com/squidfunk/mkdocs-material-insiders.git@8.5.8-insiders-4.26.2 mkdocs-redirects

COPY . /docs

RUN mkdocs build --clean --config-file /docs/mkdocs.yml

FROM nginx

COPY --from=builder /docs/site/ /usr/share/nginx/html/
