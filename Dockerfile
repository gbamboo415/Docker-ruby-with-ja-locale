FROM ruby:latest
MAINTAINER gbamboo415

RUN apt-get update && apt-get install -y locales
RUN echo "ja_JP.UTF-8 UTF-8" > /etc/locale.gen
RUN locale-gen ja_JP.UTF-8
ENV LANG ja_JP.UTF-8
ENV LC_CTYPE ja_JP.UTF-8
RUN localedef -f UTF-8 -i ja_JP ja_JP.UTF-8
ENV TZ Asia/Tokyo

ENV USER rubyist
ENV HOME /home/${USER}
ENV SHELL /bin/bash

RUN useradd -m ${USER}

USER ${USER}
WORKDIR ${HOME}
