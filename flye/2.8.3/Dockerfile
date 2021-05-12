FROM ubuntu:bionic

ARG flyeVer=2.8.3

LABEL software.version="2.8.3"
LABEL website="https://github.com/fenderglass/Flye"
LABEL license="https://github.com/fenderglass/Flye/blob/flye/LICENSE"

RUN apt-get update && apt-get install --no-install-recommends -y make \
 cmake \
 file \
 bzip2 \
 gcc \
 g++ \
 python \
 zlib1g-dev \
 wget \
 curl \
 libffi-dev \
 libncurses5-dev \
 libbz2-dev \
 liblzma-dev \
 libcurl4-gnutls-dev \
 libssl-dev \
 python3-all-dev \
 python-virtualenv \
 virtualenv \
 git-lfs && \
 apt-get clean && apt-get autoclean && \
 rm -rf /var/lib/apt/lists/*

# initialize git lfs, prior to cloning repo
RUN git lfs install

RUN git clone https://github.com/fenderglass/Flye.git --single-branch --depth 1 --branch v${flyeVer} && \
 cd Flye && \
 python setup.py install
