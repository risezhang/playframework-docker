# playframework-docker

docker images for Playframework 1.x 

## Guide to build

```
$ make

available targets:
  * build tag={tag}    - build the playframework docker image
  * push tag={tag}     - push the playframework docker image to docker hub
  * test tag={tag}     - test the playframework docker image. this creates a container for testing
```

## Guide to use

An example of Dockerfile

｀｀｀
FROM risezhang/playframework:1.4.5
ADD server /var/www/server
WORKDIR /var/www/server
EXPOSE 9000
｀｀｀

## Docker hub

https://cloud.docker.com/u/risezhang/repository/docker/risezhang/playframework