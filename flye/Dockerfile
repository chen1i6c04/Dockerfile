FROM ubuntu:bionic

ARG flyeVer=2.8.3

LABEL software.version="2.8.3"
LABEL website="https://github.com/fenderglass/Flye"
LABEL license="https://github.com/fenderglass/Flye/blob/flye/LICENSE"

RUN apt-get update && apt-get install -y make \
 gcc \
 g++ \
 python \
 python-pip \
 python-setuptools \
 zlib1g-dev \
 wget && \
 rm -rf /var/lib/apt/lists/* && apt-get clean && apt-get autoclean

RUN wget https://github.com/fenderglass/Flye/archive/${FLYE_VER}.tar.gz && \
  tar -xvf ${FLYE_VER}.tar.gz && \
  rm ${FLYE_VER}.tar.gz && \
  cd Flye-${FLYE_VER} && \
  python setup.py build && \
  python setup.py install && \
  mkdir /data

WORKDIR /data
