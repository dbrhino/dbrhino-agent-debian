#!/bin/bash
version=$(cat VERSION)
if [[ ! -f dbrhino-agent_${version}.orig.tar.gz ]]; then
    wget -O dbrhino-agent_${version}.orig.tar.gz \
        https://github.com/dbrhino/dbrhino-agent/archive/v${version}.tar.gz
fi
tar xzvf dbrhino-agent_${version}.orig.tar.gz \
    -C dbrhino-agent \
    --strip 1
