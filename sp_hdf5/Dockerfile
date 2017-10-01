FROM chime-base

WORKDIR /tmp
RUN mkdir hdf5-src && wget 'ftp://support.hdfgroup.org/HDF5/current/src/hdf5*.tar.gz' && \
    tar xzf hdf*.tar.gz && \
    cd hdf5* && \
    mkdir /usr/local/hdf5 && \
    ./configure --enable-cxx --prefix=/usr/local/hdf5 && \
    make -j4 && \
    make install

ADD submodules/sp_hdf5 /tmp/sp_hdf5

WORKDIR /tmp/sp_hdf5

RUN [ ! -f /tmp/sp_hdf5/Makefile.local ] || rm /tmp/sp_hdf5/Makefile.local

COPY sp_hdf5/Makefile.local /tmp/sp_hdf5/

#RUN make test && make install

WORKDIR /workspace


