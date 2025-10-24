.PHONY:podman/remove-containers
## Remove all Podman containers
podman/remove-containers:
	podman container stop $(shell podman container ls -aq)
	podman container rm $(shell podman container ls -aq)

.PHONY:podman/remove-images
## Remove all Podman images
podman/remove-images:
	podman image prune --force
	podman images --quiet | xargs podman rmi

.PHONY:podman/remove-volumes
## Remove all Podman volumes
podman/remove-volumes:
	podman volume prune --force
	podman volumes ls | xargs podman volume rm

.PHONY: podman/prune
## Remove unused images and all stopped containers
podman/prune:
	podman system df
	podman image prune --force
	podman container prune --force
