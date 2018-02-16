#!/bin/bash
set -eu

# Uses GitHub release:
# https://github.com/tfausak/github-release/releases/tag/1.1.3

version=$(cat VERSION)

upload_arch() {
    local arch=$1
    github-release upload \
      --token $DBRHINO_GITHUB_TOKEN \
      --owner dbrhino \
      --repo dbrhino-agent \
      --tag $version \
      --file dbrhino-agent_${version}_${arch}.deb \
      --name dbrhino-agent_${version}_${arch}.deb
}

upload_arch amd64
upload_arch i386
