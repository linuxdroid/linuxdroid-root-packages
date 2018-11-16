# Linuxdroid root packages
This repository contain packages that are useful for rooted users only.

# Building a package
To build a package, checkout the linuxdroid-root-packages
```sh
git clone https://github.com/linuxdroid/linuxdroid-root-packages
```
and then update the linuxdroid-packages submodule
```sh
cd linuxdroid-root-packages
git submodule init
git submodule update
```
You can then build a package with
```sh
./build-root-package.sh name-of-package
```
Note that this currently only works outside of the docker container.
To build from the docker container linuxdroid-root-packages have to be a subfolder of linuxdroid-packages, and a root package can then be built with
```sh
./build-package.sh linuxdroid-root-packages/packages/package-to-build
```
The linuxdroid-package submodule is then not needed.

# Subscribing to the repository
To install packages from this repository you need to subscribe to it with:
```sh
pkg install root-repo
```

