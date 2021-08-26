all: purge deps compile docker-restart

purge:
	mix clean --deps

clean:
	mix clean

deps:
	mix deps.get

compile: deps
	mix compile

docker-restart: docker-stop docker-run

docker-stop:
	docker-compose -f ./docker/docker-compose.yaml down

docker-run: compile
	docker-compose -f ./docker/docker-compose.yaml up


