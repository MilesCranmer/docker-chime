FROM chime-sp-hdf5

# Dependencies
RUN pip install Cython h5py numpy

ADD submodules/bitshuffle /tmp/bitshuffle

WORKDIR /tmp/bitshuffle

RUN python setup.py install --h5plugin --h5plugin-dir=$HOME/lib/hdf5_plugins

WORKDIR /workspace
