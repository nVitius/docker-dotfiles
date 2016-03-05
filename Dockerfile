FROM buildpack-deps:jessie

MAINTAINER nVitius <mauricio@nviti.us>

RUN apt-get update && \
    apt-get install -y \
      zsh

ENTRYPOINT ["/usr/bin/zsh"]
