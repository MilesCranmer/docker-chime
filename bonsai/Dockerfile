FROM chime-bitshuffle

ADD submodules/bonsai /tmp/bonsai

WORKDIR /tmp/bonsai

RUN [ ! -f /tmp/bonsai/Makefile.local ] || rm /tmp/bonsai/Makefile.local

COPY bonsai/Makefile.local /tmp/bonsai/

RUN make all install -j4

WORKDIR /workspace
