FROM python:3 AS builder

RUN pip install mkdocs

COPY . /docs

RUN mkdocs build --clean --config-file /docs/mkdocs.yml

FROM nginx

COPY --from=builder /docs/site/ /usr/share/nginx/html/
