.DEFAULT_GOAL := help

.PHONY: help build start connect stop clean


build:
	@make build --directory devenv

start:
	@docker run \
		--detach \
		--name devenv \
		--expose 22 \
		--publish 24:22 \
		--volume /var/run/docker.sock:/var/run/docker.sock \
		--add-host host.docker.internal:host-gateway \
		--user root \
		devenv 
connect:
	@ssh-keygen -R 192.168.106.2
	@ssh root@192.168.106.2 -p 24

stop:
	@docker container stop devenv
	@echo "done stopping"


clean:
	@docker container remove devenv --force
	@echo "deleted container"
	@docker image rm devenv --force
	@echo "deleted image"

help:
	@echo "start -- start a shell"
