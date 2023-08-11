# hash:sha256:b69063d0f0cebfb019a2badc23fbf76e2fd946e7957eb5ac5a0bc574bb90242a
FROM registry.apps.codeocean.com/codeocean/mambaforge3:22.11.1-4-ubuntu22.04

ARG DEBIAN_FRONTEND=noninteractive

ARG GIT_ASKPASS
ARG GIT_ACCESS_TOKEN
COPY git-askpass /

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        curl=7.81.0-1ubuntu1.13 \
        wget=1.21.2-2ubuntu1 \
    && rm -rf /var/lib/apt/lists/*

RUN mamba install -y \
        pycurl==7.45.1 \
        python-dateutil==2.8.2 \
        setuptools==65.6.3 \
    && mamba clean -ya
