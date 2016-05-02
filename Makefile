default: info

info:
	ls

machine:
	docker-machine create --driver virtualbox gae

initenv:
	@./.docker/init.sh

build:
	docker build -t gae .

run:
	docker run -it --rm  gae bash
