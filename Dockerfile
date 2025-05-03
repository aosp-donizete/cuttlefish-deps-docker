FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update
RUN apt install -y git devscripts equivs config-package-dev debhelper-compat golang curl sudo

COPY scripts /scripts
COPY files /files

RUN apt install ./files/libtinfo5_6.3-2ubuntu0.1_amd64.deb

WORKDIR /out

ENTRYPOINT [ "/scripts/build-cuttlefish.sh" ]