#!/bin/sh
# BepInExBGPP build entrypoint.
#
# This just forwards to the Cake Frosting project in build/, but Cake Frosting's
# default task ("Default") only compiles the solution - it does NOT package a
# distribution. Pass one of the targets below explicitly to get dist output.
#
# Usage:
#   ./build.sh                     # Clean + Compile only (default). No zips are produced.
#   ./build.sh --target Dist       # Clean + Compile + DownloadDependencies + Dist
#                                   #   -> writes bin/dist/<target>/BepInExBGPP/... per-target folders
#   ./build.sh --target Publish    # everything above, then zips each dist folder
#                                   #   -> writes bin/dist/BepInExBGPP-<target>-<version>.zip
#
# Other useful args (forwarded as-is to Cake Frosting):
#   --build-type=Release|Development|BleedingEdge   (default: Development)
#   --build-id=<n>                                  (used for BleedingEdge version suffix)
#   --nuget-api-key=<key> --nuget-source=<url>       (only used by the PushNuGet task)

dotnet run --project ./build/Build.csproj -- "$@"
