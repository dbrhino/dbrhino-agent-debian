#!/bin/bash
version=$(cat VERSION)
wget -O dbrhino-agent_${version}.orig.tar.gz \
    https://github.com/dbrhino/dbrhino-agent/archive/${version}.tar.gz
tar xzvf dbrhino-agent_${version}.orig.tar.gz \
    -C dbrhino-agent \
    --strip 1
