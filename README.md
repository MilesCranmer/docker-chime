# docker-chime
Docker container for the entire CHIME software stack.

Note that some of the submodules are private. You will need access to build this container.

Build everything with
```
./build_all.sh
```
inside the repo root.

Then, run with
```
docker run -it --rm chime-...
```
Where ... is the level of software you wish to run.

Since docker containers are built sequentially, this container is packaged up as follows:

1. chime-base
    - Contains my personal development docker on the Ubuntu 16.04 base. Be wary that ; and : are swapped in vim.
2. ^ chime-simd-helpers
    - Builds simd_helpers on top of this.
3. ^ ^ chime-sp-hdf5
    - Builds sp_hdf5 on top of the above.
4. ^ ^ ^ chime-bonsai
    - Builds Bonsai on top of the previous images.
