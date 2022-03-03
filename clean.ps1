$RepoDir=$PSScriptRoot

echo "Deleting cached NuGet packages..."
rm -Recurse -Force -ErrorAction SilentlyContinue ~\.nuget\packages\libnative.interop

echo "Deleting build outputs..."
rm -Recurse -Force -ErrorAction SilentlyContinue "$RepoDir\out"
