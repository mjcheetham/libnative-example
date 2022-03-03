#!/bin/sh
set -e

THIS_DIR=`dirname "$0"`
REPO_DIR="$THIS_DIR/../.."

echo "Building native library..."
mkdir -p "$REPO_DIR/out/libnative"
cmake "$THIS_DIR" -B "$REPO_DIR/out/libnative"
make -C "$REPO_DIR/out/libnative"
