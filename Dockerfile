FROM mcranmer/dev:cpu

RUN apt-get update && apt-get install -qqy python-dev apt-utils

WORKDIR /workspace
