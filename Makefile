# TitanIDE App Makefile

app_name ?= $(shell basename $(PWD))
app_version ?= $(shell git-version ${PWD})
namespace ?= ${POD_NAMESPACE}
registry ?= titan.hub:5000
tag ?= ${registry}/${namespace}/${app_name}:${app_version}
username ?=
from_hub ?= ${registry}/titanide/
from_tag ?= $(shell project-tag)
force ?=

all: build

help: ## Display this help.
	@awk 'BEGIN {FS = ":.*##"; printf "\nUsage:\n  make \033[36m<target>\033[0m\n"} /^[a-zA-Z_0-9-]+:.*?##/ { printf "  \033[36m%-15s\033[0m %s\n", $$1, $$2 } /^##@/ { printf "\n\033[1m%s\033[0m\n", substr($$0, 5) } ' $(MAKEFILE_LIST)

download:
	@wget https://www.scootersoftware.com/bc_icon.png -O icon.png

build: download ## build container image
	@kaniko --cache \
	  --build-arg from_hub=${from_hub} \
	  --build-arg from_tag=${from_tag} \
	  --build-arg app_name=${app_name} \
	  --build-arg app_version=${app_version} \
	  --dockerfile=Dockerfile --destination=${tag} \
	  --insecure \
	  --insecure-pull \
	  --skip-tls-verify

docker-build: download ## build container image
	docker build
	  --build-arg from_hub=${from_hub} \
	  --build-arg from_tag=${from_tag} \
	  --build-arg app_name=${app_name} \
	  --build-arg app_version=${app_version} \
	  --tag=${tag} \