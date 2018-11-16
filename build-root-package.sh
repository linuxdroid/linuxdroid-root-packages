#!/bin/bash

set -e -o pipefail -u

# link into main package repo to handle dependencies
for root_package in packages/*; do
    ln -sf ../../$root_package linuxdroid-packages/packages/
done

cd linuxdroid-packages
./build-package.sh "$@"
