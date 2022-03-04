# Native Library with .NET Interop Package

Sample project showing how to create a cross-platform native library and a NuGet
package that contains interop (P/Invoke) code to call into the library.

## Local Build

Since we don't support cross-compilation of the native library, you can only
build a NuGet package containing one platform (current host OS + architecture)
when building locally.

The CI build runs parallel builds on all OS + architecture combinations, and
then collects all outputs to build a unified NuGet package.

### Dependencies

- cmake
- .NET SDK 6.0
- Visual Studio (Windows only)

### Instructions

1. Build the native library

```shell
# Mac/Linux
src/libnative/build.sh
```

```powershell
# Windows
src\libnative\build.ps1
```

2. Build the interop package

```shell
dotnet pack src/interop
```

3. Build the sample app

```shell
# Build for .NET Framework and .NET 6 against for architecture
dotnet build src/app

# Building for a specifc framework and architecture
dotnet build src/app -f net6.0 --self-contained -r osx-x64
```
