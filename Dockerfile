
FROM ubuntu:16.04

MAINTAINER chen1i6c04 <chen1i6c04@gmail.com>

RUN apt-get update -qq && \
	apt-get install -y -qq \
	git \
	blast2 \
	wget \
	python2.7 \
	make \
	bwa \
	samtools \
	curl && \
	git clone https://github.com/denglab/SeqSero.git && \
	rm -rf /var/cache/apt/* /var/lib/apt/lists/*;


RUN pip install -U biopython


