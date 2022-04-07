FROM python:3.10.4-slim-bullseye

RUN apt-get update \
 && apt-get install -y curl pypy3 sudo time \
 && groupadd -g 1000 appgroup \
 && useradd -m -s /bin/bash -u 1000 -g 1000 -G sudo,root appuser \
 && echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers \
 && curl -fsSL https://crystal-lang.org/install.sh | bash

ENV APPDIR /judge
ENV CODESDIR /codes
RUN mkdir -p $APPDIR $CODESDIR \
 && chown appuser:appgroup $APPDIR $CODESDIR

WORKDIR $APPDIR

USER appuser
ENV PATH $PATH:/home/appuser/.local/bin

RUN pip install --upgrade pip \
 && pip install online-judge-tools watchdog
