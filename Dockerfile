FROM openjdk:8-jre
ARG PLAY_VERSION

MAINTAINER Rise Zhang

RUN apt-get update && apt-get install -y sudo ant python && apt-get clean

ENV HOME /opt
#ENV PLAY_VERSION 1.4.4

RUN groupadd -r play -g 1000 && \
    useradd -u 1000 -r -g play -m -d $HOME -s /sbin/nologin -c "Play user" play

ADD https://downloads.typesafe.com/play/${PLAY_VERSION}/play-${PLAY_VERSION}.zip .
RUN unzip -q play-${PLAY_VERSION}.zip -d ${HOME}/ && rm play-${PLAY_VERSION}.zip

USER root
RUN ln -sf $HOME/play-${PLAY_VERSION}/play /usr/local/bin/play
