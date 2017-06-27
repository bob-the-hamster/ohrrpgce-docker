# bobthehamster/ohrrpgce-build-env-32
# Begin with the freebasic-32 image, (which is in turn based on debian:jessie-slim)

FROM bobthehamster/freebasic-32

# Install the packages needed to compile the ohrrpgce.
# Also include subversion for fetching the source.
# The parent image already has g++-multilib.
# We don't bother with timidity or freepats because those
# are really run-time requirements, not build-time.

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
      subversion \
      libx11-dev:i386 \
      libxpm-dev:i386 \
      libxrandr-dev:i386 \
      libxrender-dev:i386 \
      libsdl-mixer1.2-dev:i386 \
      libncurses5-dev:i386 \
      scons \
      make \
    && rm -rf /var/lib/apt/lists/*

# Install the euphoria compiler.

COPY euphoria_4.0.5_i386.deb /euphoria-install/
RUN dpkg -i /euphoria-install/euphoria_4.0.5_i386.deb
RUN rm -rf /euphoria-install

# Copy over the script for compiling the latest nightly
COPY compile_ohrrpgce_nightly_inside_docker.sh /ohrrpgce/
