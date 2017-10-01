FROM chime-base

WORKDIR /tmp
RUN mkdir hdf5-src && wget 'https://support.hdfgroup.org/ftp/HDF5/releases/hdf5-1.8/hdf5-1.8.19/src/hdf5-1.8.19.tar.gz' && \
    tar xzf hdf*.tar.gz && \
    cd hdf5* && \
    ./configure --enable-cxx --prefix=/usr/local/ && \
    make -j4 && \
    make install

ADD submodules/sp_hdf5 /tmp/sp_hdf5

WORKDIR /tmp/sp_hdf5

RUN [ ! -f /tmp/sp_hdf5/Makefile.local ] || rm /tmp/sp_hdf5/Makefile.local

COPY sp_hdf5/Makefile.local /tmp/sp_hdf5/

RUN make all && make install

WORKDIR /workspace


