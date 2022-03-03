$RepoDir=(Join-Path $PSScriptRoot -ChildPath "..\..")

echo "Building native library..."
mkdir -Force "$RepoDir\out\libnative\lib\native\"
cmake "$PSScriptRoot" -B "$RepoDir\out\libnative"
msbuild "$RepoDir\out\libnative\native.sln"
cp -Recurse "$RepoDir\out\libnative\Debug\*.dll" "$RepoDir\out\libnative\lib\native\"
