#!/bin/bash
set -eu

build_arch() {
    local arch=$1
    git clean -Xdf dbrhino-agent
    ./download.bash
    ( cd dbrhino-agent && dpkg-buildpackage -us -uc -a${arch} )
}

build_arch i386
build_arch amd64
