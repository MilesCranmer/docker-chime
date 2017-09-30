FROM chime-base

ADD submodules/simd_helpers /tmp/simd_helpers

WORKDIR /tmp/simd_helpers

RUN [ ! -f /tmp/simd_helpers/Makefile.local ] || rm /tmp/simd_helpers/Makefile.local

COPY simd_helpers/Makefile.local /tmp/simd_helpers/

RUN make test && make install

WORKDIR /workspace


