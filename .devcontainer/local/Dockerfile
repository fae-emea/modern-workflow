FROM ubuntu:24.04

ENV LC_ALL=C \
DEBIAN_FRONTEND="noninteractive" \
PATH=/opt/iar/cxarm/arm/bin:/opt/iar/cxarm/common/bin:$PATH \
CC=iccarm \
CXX=iccarm \
ASM=iasmarm \
HOME=/workdir

RUN apt-get update \
&& apt-get install -y --no-install-recommends \
bzip2 \
ca-certificates \
git \
libsqlite3-0 \
libxml2 \
tzdata \
wget \
udev \
libusb-1.0-0 \
usbutils

RUN mkdir /opt/iar \
&& wget -qO- "https://github.com/iarsystems/arm/releases/download/9.60.4/cxarm-9.60.4-linux-x86_64-base.tar.bz2" | tar --strip-components=1 -xj -C /opt/iar \
&& wget -qO- "https://github.com/iarsystems/arm/releases/download/9.60.4/cxarm-device-support-st-9.60.4.20250303090915.tar.bz2" | tar --strip-components=1 -xj -C /opt/iar \
&& wget -qO- "https://cmake.org/files/v3.31/cmake-3.31.5-linux-x86_64.tar.gz" | tar --strip-components=1 -xz -C /usr/local \
&& cd /opt/iar && ln -s 'cxarm-9.60.4' cxarm

RUN echo 'SUBSYSTEM=="usb", ATTRS{idVendor}=="272c", ATTRS{idProduct}=="7d13", MODE="0666"' > /etc/udev/rules.d/ijet.rules || echo "Creating udev rules for I-jet." \
&& echo 'SUBSYSTEM=="usb", ATTRS{idVendor}=="272c", ATTRS{idProduct}=="7d14", MODE="0666"' > /etc/udev/rules.d/ijet-trace.rules || echo "Creating udev rules for I-jet trace." \
&& /lib/systemd-udevd --daemon || echo "Starting udev daemon."

WORKDIR ${HOME}
