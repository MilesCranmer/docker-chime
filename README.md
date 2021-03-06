# docker-chime
Docker container for the entire CHIME software stack.

Note that some of the submodules are private. You will need access to build this container. Check out everything with

```
git submodule update --init --recursive
```

Build everything with
```
./build_all.sh
```
inside the repo root.

Then, run with
```
docker run -it --rm chime-ch-frb-l1
```
Or, `chime-...`, Where ... is the level of software you wish to run (e.g., `rf-pipelines`).

Since docker containers are built sequentially, this container is packaged up as follows:

1. chime-base
    - Contains my personal development docker on the Ubuntu 16.04 base. Be wary that ; and : are swapped in vim.
2. chime-simd-helpers
    - Builds simd_helpers on top of this.
3. chime-sp-hdf5
4. chime-bitshuffle
    - Also builds deps for numpy, cython, h5py
    - Depends only on the hdf5 built above
5. chime-simpulse
6. chime-bonsai
    - Depends on bitshuffle
7. chime-ch-frb-io
    - Depends on hdf5, bitshuffle
    - Also depends on some others
8. chime-rf-pipelines
9. chime-ch-frb-l1
10. chime-ch-frb-l1b

You can read the Dockerfiles in each folder to see the specific build step each commands go through.


## Setting up a network

To set up a network for two docker containers to talk to eachother, write:

```
docker network create --subnet=172.18.0.0/16 mynet
```

Then, 

```
docker run -it --net mynet --ip 172.18.0.21 chime-ch-frb-l1b
```

And,


```
docker run -it --net mynet --ip 172.18.0.22 chime-ch-frb-l1b
```

Will set up two containers that can ping eachother.
