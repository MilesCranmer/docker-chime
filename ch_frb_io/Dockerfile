FROM chime-bonsai

# Dependency downloads
# lz4
RUN apt-get update && apt-get install -qqy \
    liblz4-dev \
    libzmq5 \
    libzmq5-dev \
    libpgm-5.2.0 \
    libunwind8

# msgpack
WORKDIR /tmp/msgpack
RUN wget https://github.com/msgpack/msgpack-c/releases/download/cpp-2.1.5/msgpack-2.1.5.tar.gz && \
    tar xzf msgpack* && \
    cp -r msgpack-2.1.5/include/* /usr/local/include


# cppzmq
WORKDIR /tmp/zeromq
RUN git clone https://github.com/zeromq/cppzmq.git && \
    cd cppzmq && \
    cp zmq.hpp zmq_addon.hpp /usr/local/include

ADD submodules/ch_frb_io /tmp/ch_frb_io

WORKDIR /tmp/ch_frb_io

RUN [ ! -f /tmp/ch_frb_io/Makefile.local ] || rm /tmp/ch_frb_io/Makefile.local

COPY ch_frb_io/Makefile.local /tmp/ch_frb_io/

RUN make all install

WORKDIR /workspace
