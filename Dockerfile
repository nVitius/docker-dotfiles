FROM buildpack-deps:jessie

MAINTAINER nVitius <mauricio@nviti.us>

RUN apt-get update && \
    apt-get install -y \
      zsh

RUN useradd -ms /usr/bin/zsh nvitius

USER mwalters
WORKDIR /home/nvitius

ENTRYPOINT ["/usr/bin/zsh"]
