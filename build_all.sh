docker build -t chime-base -f Dockerfile .
docker build -t chime-simd-helpers -f simd_helpers/Dockerfile .
docker build -t chime-bonsai -f bonsai/Dockerfile .
