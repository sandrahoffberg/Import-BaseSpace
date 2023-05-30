# hash:sha256:88ccf54ba6c4c581404e77161fbf8842fc1a481a428d6c608dbaf5e9f9e21c3c
FROM registry.apps.codeocean.com/codeocean/jupyterlab:3.4.4-miniconda4.12.0-python3.9-ubuntu20.04

ARG DEBIAN_FRONTEND=noninteractive

ARG GIT_ASKPASS
ARG GIT_ACCESS_TOKEN
COPY git-askpass /

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        curl=7.68.0-1ubuntu2.18 \
        python-dateutil=2.7.3-3ubuntu1 \
        python-pycurl=7.43.0.2-1ubuntu5 \
        python3-setuptools=45.2.0-1ubuntu0.1 \
        wget=1.20.3-1ubuntu2 \
    && rm -rf /var/lib/apt/lists/*
