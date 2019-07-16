all:
	@echo "available targets:"
	@echo "  * build tag={tag}    - build the playframework docker image"
	@echo "  * push tag={tag}     - push the playframework docker image to docker hub"
	@echo "  * test tag={tag}     - test the playframework docker image. this creates a container for testing"

build:
	docker build --build-arg PLAY_VERSION=${tag} -t risezhang/playframework:$(tag) .

push:
	docker push risezhang/playframework:$(tag)

test:
	docker run --name testplay.${tag} risezhang/playframework:$(tag) play || docker rm testplay.${tag}
