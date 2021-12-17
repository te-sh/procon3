FROM python:3.10.1-slim-bullseye

RUN apt-get update \
 && apt-get install -y curl time \
 && groupadd -g 1000 appgroup \
 && useradd -m -s /bin/bash -u 1000 -g 1000 appuser \
 && curl -fsSL https://crystal-lang.org/install.sh | bash

ENV APPDIR /judge
ENV CODESDIR /codes
RUN mkdir -p $APPDIR $CODESDIR \
    && chown appuser:appgroup $APPDIR $CODESDIR

WORKDIR $APPDIR

USER appuser
ENV PATH $PATH:/home/appuser/.local/bin

RUN pip install --upgrade pip \
 && pip install online-judge-tools watchdog \
