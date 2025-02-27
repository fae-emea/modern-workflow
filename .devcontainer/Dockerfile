FROM       ubuntu:24.04

ENV LC_ALL=C \
DEBIAN_FRONTEND="noninteractive" \
PATH=/opt/iar/cxarm/arm/bin:/opt/iar/cxarm/common/bin:$PATH \
CC=iccarm \
CXX=iccarm \
ASM=iasmarm \
HOME=/workdir

RUN apt-get update \
&& apt-get install -y --no-install-recommends \
libsqlite3-0 \
libxml2 \
tzdata \
git \
udev \
ca-certificates \
wget \
libusb-1.0-0 \
usbutils \
cmake 

RUN wget https://netstorage.iar.com/FileStore/STANDARD/001/003/322/cxarm-9.60.3.deb \
&& wget https://netstorage.iar.com/FileStore/STANDARD/001/003/329/cxarm-9.60.3-device-support-ubuntu-20241014154509.zip \
&& apt-get install -y ./cx*.deb

WORKDIR    ${HOME}
