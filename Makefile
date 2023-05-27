.DEFAULT_GOAL := help

.PHONY: help start


build:
	@make build --directory devenv

start: build
	@docker run \
		--rm \
		--name devenv \
		--volume /var/run/docker.sock:/var/run/docker.sock \
		--user root \
		devenv 

clean:
	@docker image rm dev --force

help:
	@echo "start -- start a shell"
