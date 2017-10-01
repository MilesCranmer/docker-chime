FROM chime-bonsai

# Dependency downloads
RUN apt-get update && apt-get install -qqy libhdf5-dev && \
    pip install Cython

ADD submodules/ch_frb_io /tmp/ch_frb_io

WORKDIR /tmp/ch_frb_io

RUN [ ! -f /tmp/ch_frb_io/Makefile.local ] || rm /tmp/ch_frb_io/Makefile.local

COPY ch_frb_io/Makefile.local /tmp/ch_frb_io/

RUN make all install

WORKDIR /workspace
