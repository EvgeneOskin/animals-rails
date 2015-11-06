DOCKER_COMPOSE = docker-compose
DOCKER = docker

.PHONY: serve build

build:
	$(DOCKER_COMPOSE) build

serve:
	$(DOCKER) rm -f $$($(DOCKER_COMPOSE) ps -q)
	$(DOCKER_COMPOSE) up
