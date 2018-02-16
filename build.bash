#!/bin/bash
set -eu

cd dbrhino-agent
dpkg-buildpackage -us -uc
