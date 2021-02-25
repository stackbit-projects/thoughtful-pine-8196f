#!/usr/bin/env bash

set -e
set -o pipefail
set -v

echo "stackbit-build.sh: start build"

# build site
npm run build

./inject-stackbit-widget.js public https://localhost:8092/init.js 6038196f45fbc51f1d1f0f09

echo "stackbit-build.sh: finished build"
