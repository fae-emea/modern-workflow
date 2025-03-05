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
usbutils

RUN wget https://netstorage.iar.com/FileStore/STANDARD/001/003/322/cxarm-9.60.3.deb \
&& wget https://netstorage.iar.com/FileStore/STANDARD/001/003/329/cxarm-9.60.3-device-support-ubuntu-20241014154509.zip \
&& RUN wget -qO- "https://cmake.org/files/v3.31/cmake-3.31.0-linux-x86_64.tar.gz" | tar --strip-components=1 -xz -C /usr/local \
&& apt-get install -y ./cx*.deb

WORKDIR    ${HOME}
