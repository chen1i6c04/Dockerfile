FROM continuumio/miniconda3

ARG flyeVer=2.8.3

LABEL software.version="2.8.3"
LABEL website="https://github.com/fenderglass/Flye"
LABEL license="https://github.com/fenderglass/Flye/blob/flye/LICENSE"
LABEL maintainer="chen1i6c04"
LABEL maintainer.email="chen1i6c04@cdc.gov.tw"

RUN conda update -n base -c defaults conda
RUN conda install -c conda-forge -c bioconda flye

WORKDIR /data
