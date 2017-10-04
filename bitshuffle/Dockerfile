FROM chime-bonsai

ADD submodules/bitshuffle /tmp/bitshuffle

WORKDIR /tmp/bitshuffle

RUN python setup.py install

WORKDIR /workspace
