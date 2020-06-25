# docker-mergerfs
Build mergerfs from source using docker for ubuntu bionic (18.04).

To build, clone the repo and `chmod +x build.sh` then,

    ./build.sh
    
When the build is complete you'll end up with a `mergerfs-from-source.deb` which you can install with `dpkg -i file.deb`.
