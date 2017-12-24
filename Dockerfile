FROM ubuntu:16.04

RUN apt-get update && apt-get install -y \
	wget

RUN cd /root && wget https://github.com/davembg/xios/releases/download/2/xiosd-linux.tar.gz && \
	tar xvzf xiosd-linux.tar.gz && rm *tar.gz

WORKDIR /root

ENTRYPOINT ["/root/XIOSd"]


