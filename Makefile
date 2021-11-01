PACKAGE            = docs
PACKAGE_DESC       = TriggerMesh Docs
VERSION           ?= $(shell git describe --tags --always)

BASE_DIR          ?= $(CURDIR)

OUTPUT_DIR        ?= $(BASE_DIR)/_output
DIST_DIR          ?= $(OUTPUT_DIR)

SITE_OUTPUT_DIR   ?= $(OUTPUT_DIR)/site

DOCKER            ?= docker

IMAGE_REPO        ?= gcr.io/triggermesh
IMAGE_TAG         ?= latest
IMAGE_SHA         ?= $(shell git rev-parse HEAD)

HAS_MKDOCS        := $(shell command -v mkdocs;)

.PHONY: help build image cloudbuild-test cloudbuild clean

all: build

install-mkdocs:
ifndef HAS_MKDOCS
	pip3 install mkdocs-material mkdocs-redirects
endif

help: ## Display this help
	@awk 'BEGIN {FS = ":.*?## "; printf "\n$(PACKAGE_DESC)\n\nUsage:\n  make \033[36m<source>\033[0m\n"} /^[a-zA-Z0-9._-]+:.*?## / {printf "  \033[36m%-20s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

build: install-mkdocs ## Build the docs
	mkdocs build --clean --config-file mkdocs.yml --site-dir $(SITE_OUTPUT_DIR)

release: ## Build distribution tarball
	@mkdir -p $(DIST_DIR)
	tar -jcf $(DIST_DIR)/$(PACKAGE)-$(VERSION).tar.bz2 -C $$(dirname $(SITE_OUTPUT_DIR)) $$(basename $(SITE_OUTPUT_DIR))

image: ## Builds the container image
	$(DOCKER) build -t $(IMAGE_REPO)/$(PACKAGE) -f Dockerfile .

cloudbuild-test: ## Test container image build with Google Cloud Build
	gcloud builds submit $(BASE_DIR) --config cloudbuild.yaml --substitutions COMMIT_SHA=${IMAGE_SHA},_KANIKO_IMAGE_TAG=_

cloudbuild: ## Build and publish image to GCR
	gcloud builds submit $(BASE_DIR) --config cloudbuild.yaml --substitutions COMMIT_SHA=${IMAGE_SHA},_KANIKO_IMAGE_TAG=${IMAGE_TAG}

clean: ## Clean build artifacts
	@$(RM) -v $(DIST_DIR)/$(PACKAGE)-$(VERSION).tar.bz2
	@$(RM) -rv $(SITE_OUTPUT_DIR)
