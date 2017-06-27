# bobthehamster/freebasic-32
FROM debian:jessie-slim

ENV FBC_VERSION 1.05.0

# This is needed for the 32-bit version of libtinfo5
RUN dpkg --add-architecture i386

# Install the 32-bit packages that FreeBasic requires
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
      g++-multilib \
      libtinfo5:i386 \
    && rm -rf /var/lib/apt/lists/*

# Now install freebasic from the tarball
ADD FreeBASIC-${FBC_VERSION}-linux-x86.tar.gz /freebasic-installer/

WORKDIR /freebasic-installer/FreeBASIC-${FBC_VERSION}-linux-x86/
RUN ./install.sh -i

WORKDIR /
RUN rm -rf /freebasic-installer

