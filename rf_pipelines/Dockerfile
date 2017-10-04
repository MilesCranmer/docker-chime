FROM chime-simpulse

#Dependencies
RUN pip install scipy Pillow

RUN apt-get update && \
    apt-get install -qqy libjsoncpp-dev 

ADD submodules/rf_pipelines /tmp/rf_pipelines

WORKDIR /tmp/rf_pipelines

RUN [ ! -f /tmp/rf_pipelines/Makefile.local ] || rm /tmp/rf_pipelines/Makefile.local

COPY rf_pipelines/Makefile.local /tmp/rf_pipelines/

RUN make all install -j4

WORKDIR /workspace
