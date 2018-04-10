
FROM ubuntu:16.04

MAINTAINER chen1i6c04 <chen1i6c04@gmail.com>

RUN apt-get update -qq && \
	apt install -y -qq \
	git \
	blast2 \
	wget \
	python2.7 \
	python-pip
	bwa \
	samtools \
	curl && \
	git clone git@github.com:denglab/SeqSero.git && \
	rm -rf /var/cache/apt/* /var/lib/apt/lists/*;


RUN pip install biopython


