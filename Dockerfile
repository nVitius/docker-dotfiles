FROM buildpack-deps:jessie

MAINTAINER nVitius <mauricio@nviti.us>

ARG DOTFILES_USER=nvitius

RUN apt-get update && \
    apt-get install -y \
      zsh

RUN useradd -ms /usr/bin/zsh ${DOTFILES_USER}

USER ${DOTFILES_USER}
WORKDIR /home/${DOTFILES_USER}

ADD . /home/${DOTFILES_USER}

ENTRYPOINT ["/usr/bin/zsh"]
