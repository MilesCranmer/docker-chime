FROM chime-rf-pipelines

#Dependencies
RUN apt-get update && apt-get install -qqy libyaml-cpp-dev libboost-dev

ADD submodules/ch_frb_l1 /tmp/ch_frb_l1

WORKDIR /tmp/ch_frb_l1

RUN [ ! -f /tmp/ch_frb_l1/Makefile.local ] || rm /tmp/ch_frb_l1/Makefile.local

COPY ch_frb_l1/Makefile.local /tmp/ch_frb_l1/

RUN make all install

WORKDIR /workspace
