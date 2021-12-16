FROM python:3.10.1-slim-bullseye

RUN apt-get update \
 && apt-get install -y curl \
 && pip install --upgrade pip \
 && pip install online-judge-tools watchdog \
 && curl -fsSL https://crystal-lang.org/install.sh | bash
