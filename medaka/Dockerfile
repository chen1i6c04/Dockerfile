FROM continuumio/miniconda3

ARG medakaVer=1.3.4

LABEL base.image="conda/miniconda3"
LABEL software="Medaka"
LABEL software.version="1.3.4"
LABEL description="Consensus sequence correction provided by ONT Research"
LABEL website="https://github.com/nanoporetech/medaka"
LABEL license="https://github.com/nanoporetech/medaka/blob/master/LICENSE.md"
LABEL maintainer="chen1i6c04"
LABEL maintainer.email="chen1i6c04@cdc.gov.tw"

RUN apt-get update && \
    apt-get install -y \
    bzip2 \
    g++ \
    zlib1g-dev \
    libbz2-dev \
    liblzma-dev \
    libffi-dev \
    libncurses5-dev\
    libcurl4-gnutls-dev \
    libssl-dev \
    curl \
    make \
    cmake \
    wget \
    python3-all-dev\
    python-virtualenv && \
    rm -rf /var/lib/apt/lists/*
RUN conda update -n base -c defaults conda && \
    conda install -c bioconda pip samtools minimap2 tabix htslib && \
    pip install medaka

WORKDIR /data
