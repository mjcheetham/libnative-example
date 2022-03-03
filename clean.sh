#!/bin/sh

SCRIPT_DIR=`dirname "$0"`
REPO_DIR="$SCRIPT_DIR"

echo "Deleting cached NuGet packages..."
rm -rf ~/.nuget/packages/libnative.interop > /dev/null 2>&1

echo "Deleting build outputs..."
rm -rf "$REPO_DIR/out" > /dev/null 2>&1
