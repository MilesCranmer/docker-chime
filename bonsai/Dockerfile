FROM chime-sp-hdf5

# Dependency downloads
RUN apt-get update && apt-get install -qqy libhdf5-dev && \
    pip install Cython

ADD submodules/bonsai /tmp/bonsai

WORKDIR /tmp/bonsai

RUN [ ! -f /tmp/bonsai/Makefile.local ] || rm /tmp/bonsai/Makefile.local

COPY bonsai/Makefile.local /tmp/bonsai/

RUN make all install

WORKDIR /workspace
