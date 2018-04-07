
FROM ubuntu:16.04

MAINTAINER chen1i6c04 <chen1i6c04@gmail.com>

RUN apt-get update -qq && \
	apt-get install -y -qq \
	git \
	blast2 \
	python2.7 \
	make \
	curl && \
	git https://github.com/denglab/SeqSero.git && \
	rm -rf /var/cache/apt/* /var/lib/apt/lists/*;


RUN wget https://sourceforge.net/projects/bio-bwa/files/bwa-0.7.16a.tar.bz2 && \
    tar xvjf bwa-0.7.16a.tar.bz2 && rm bwa-0.7.16a.tar.bz2 && \
    cd bwa-0.7.16a && make
ENV PATH $PATH:/usr/src/bwa-0.7.16a


RUN wget https://github.com/samtools/samtools/releases/download/1.6/samtools-1.6.tar.bz2 && \
    tar xvjf samtools-1.6.tar.bz2 && rm samtools-1.6.tar.bz2 && \
    cd samtools-1.6 && make && make install
ENV PATH $PATH:/usr/src/samtools-1.6


RUN pip install -U biopython


