# Dockerfile for Windows cross-building using MinGW
# 
# Copyright (c) Davide Rondini
# All rights reserved. 
#
# MIT License (see LICENSE file)

FROM ubuntu:20.04

RUN export DEBIAN_FRONTEND=noninteractive
RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get -y install tzdata keyboard-configuration
RUN dpkg-reconfigure -f noninteractive tzdata keyboard-configuration
RUN apt-get -y install build-essential git subversion cmake joe g++-mingw-w64-i686 libz-mingw-w64 libz-mingw-w64-dev gettext wget nsis

RUN useradd -u 1001 -m -s /bin/bash builder

USER builder
WORKDIR /home/builder

