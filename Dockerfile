FROM ubuntu:trusty

LABEL maintainer="adr.her.arc.95@gmail.com"
LABEL version="1.0"
LABEL description="MAST v. 1.5.1.0"

RUN dpkg --add-architecture i386 \
&& apt-get update \
&& apt-get -y upgrade \
&& apt-get -y dist-upgrade \
&& apt-get -y --no-install-recommends install \
wget=1.15-1ubuntu1.14.04.3 \
libc6:i386=2.19-0ubuntu6.14 \
libncurses5:i386=5.9+20140118-1ubuntu1 \
libstdc++6:i386=4.8.4-2ubuntu1~14.04.3 \
libgtk-3-0:i386=3.10.8-0ubuntu1.4 \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/*

RUN wget --no-check-certificate \
http://mast.unican.es/mast-bin-linux-1-5-1-0.tar.gz \
&& tar -xzf mast-bin-linux-1-5-1-0.tar.gz \
&& rm mast-bin-linux-1-5-1-0.tar.gz

ENV PATH=${PATH}:/mast-bin-linux-1-5-1-0
ENV LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:/mast-bin-linux-1-5-1-0/lib
