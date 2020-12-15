# bobthehamster/ohrrpgce-bin
# A package containing pre-compiled ohrrpgce wip branch binaries
# (These are only current up to the time the image was built/pushed)

FROM bobthehamster/ohrrpgce-build-env

# Create a non-root ohrrpgce user
RUN useradd -m -d /ohrrpgce ohrrpgce
USER ohrrpgce

# Copy over the script for compiling the latest nightly
COPY --chown=ohrrpgce:ohrrpgce compile_ohrrpgce_nightly_inside_docker.sh /ohrrpgce/

WORKDIR /ohrrpgce

# After you run this container, you can compile inside it
