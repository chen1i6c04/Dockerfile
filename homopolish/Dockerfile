FROM continuumio/miniconda3

ARG version=0.2

LABEL software.version="0.2"
LABEL website="https://github.com/ythuang0522/homopolish"
LABEL license="https://github.com/ythuang0522/homopolish/blob/master/LICENSE"
LABEL maintainer="chen1i6c04"
LABEL maintainer.email="chen1i6c04@cdc.gov.tw"

RUN apt-get update && \
    apt-get install -y \
    wget && \
    rm -rf /var/lib/apt/lists/*

RUN conda update -n base -c defaults conda && \
    conda install -c anaconda -c conda-forge -c bioconda -c defaults \
    python=3.7.7 \
    mash=2.1.1 \
    scikit-learn=0.21.3 \
    minimap2=2.17 \
    python-wget=3.2 \
    feather-format=0.4.1 \
    numpy=1.18.5 \
    pandas=0.23.4 \
    biopython=1.76 \
    joblib=0.15.1 \
    requests=2.24.0 \
    more-itertools=8.4.0 \
    pyarrow=0.17.1 \
    pycurl



RUN wget https://github.com/ythuang0522/homopolish/archive/refs/tags/v0.2.tar.gz -O homopolish.tar.gz && \
    tar -xf homopolish.tar.gz && \
    mv homopolish-0.2 /opt/homopolish

WORKDIR /opt/homopolish
