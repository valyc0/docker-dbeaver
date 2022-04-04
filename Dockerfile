FROM ghcr.io/linuxserver/baseimage-rdesktop-web:bionic

# set version label
ARG BUILD_DATE
ARG VERSION
ARG AUDACITY_VERSION
ARG DBEAVER_VERSION="22.0.2"
ARG DBEAVER_LINK="https://dbeaver.io/files/${DBEAVER_VERSION}/dbeaver-ce-${DBEAVER_VERSION}-linux.gtk.x86_64.tar.gz"
LABEL build_version="Linuxserver.io version:- ${VERSION} Build-date:- ${BUILD_DATE}"
LABEL maintainer="aptalca"



RUN \
  echo "**** install build packages ****" && \
  apt-get update && \
  apt-get install -y \
    libnss3 && \
  echo "**** install dbeaver ****" && \
  curl -sL ${DBEAVER_LINK} | tar -xz -C /tmp && \
  echo "**** cleanup ****" && \
  rm -rf \
    /var/lib/apt/lists/* \
    /var/tmp/*

# add local files
COPY /root /

# ports and volumes
EXPOSE 3000
VOLUME /config
