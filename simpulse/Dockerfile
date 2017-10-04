FROM chime-ch-frb-io

# Dependencies
RUN apt-get update && apt-get install -qqy libfftw3-dev

ADD submodules/simpulse /tmp/simpulse

WORKDIR /tmp/simpulse

RUN [ ! -f /tmp/simpulse/Makefile.local ] || rm /tmp/simpulse/Makefile.local

COPY simpulse/Makefile.local /tmp/simpulse/

RUN make all install -j4

WORKDIR /workspace
