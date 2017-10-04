docker build -t chime-base -f Dockerfile .
docker build -t chime-simd-helpers -f simd_helpers/Dockerfile .
docker build -t chime-sp-hdf5 -f sp_hdf5/Dockerfile .
docker build -t chime-bonsai -f bonsai/Dockerfile .
docker build -t chime-bitshuffle -f bitshuffle/Dockerfile .
