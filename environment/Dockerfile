# hash:sha256:3055852e73daf80853195adba9d007cbfbe4e3ee4927019eb0f9cb09224c0d3e
FROM registry.apps.codeocean.com/codeocean/mambaforge3:22.11.1-4-ubuntu22.04

ARG DEBIAN_FRONTEND=noninteractive

ARG GIT_ASKPASS
ARG GIT_ACCESS_TOKEN
COPY git-askpass /

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        ca-certificates \
        curl=7.81.0-1ubuntu1.13 \
        git \
        wget=1.21.2-2ubuntu1 \
    && rm -rf /var/lib/apt/lists/*

RUN mamba install -y \
        pycurl==7.45.1 \
        python-dateutil==2.8.2 \
        setuptools==65.6.3 \
    && mamba clean -ya

COPY postInstall /
RUN /postInstall
