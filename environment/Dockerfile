# hash:sha256:ab606c49e33133bbb4fd199d80f97d04cb6d897b9367d1b316cff7bdd4c56145
FROM registry.apps.codeocean.com/codeocean/mambaforge3:22.11.1-4-ubuntu22.04

ARG DEBIAN_FRONTEND=noninteractive

ARG GIT_ASKPASS
ARG GIT_ACCESS_TOKEN
COPY git-askpass /

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        ca-certificates=20230311ubuntu0.22.04.1 \
        curl=7.81.0-1ubuntu1.13 \
        git=1:2.34.1-1ubuntu1.10 \
        wget=1.21.2-2ubuntu1 \
    && rm -rf /var/lib/apt/lists/*

RUN mamba install -y \
        pycurl==7.45.1 \
        python-dateutil==2.8.2 \
        setuptools==65.6.3 \
    && mamba clean -ya

COPY postInstall /
RUN /postInstall
