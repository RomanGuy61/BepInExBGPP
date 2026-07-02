<p align="center">
    <img src="https://avatars2.githubusercontent.com/u/39589027?s=256">
</p>

# BepInExBGPP

Bepis Injector Extensible Big Goofy Project Plus

---

BepInEx is a plugin / modding framework for Unity Mono, IL2CPP and .NET framework games (XNA, FNA, MonoGame, etc.) But, this one is mainly tuned for BGP+.

(Currently only Unity Mono has stable releases)

#### Platform compatibility chart

|              | Windows | OSX  | Linux | ARM |
|--------------|---------|------|-------|-----|
| Unity Mono   | ✔️      | ✔️  | ✔️    | N/A |
| Unity IL2CPP | ✔️      | ❌   | ✔     | ❌  |
| .NET / XNA   | ✔️      | Mono | Mono  | N/A |
| BGP+ (Unity) | ✔️      | N/A  | N/A   | N/A |

A more comprehensive comparison list of features and compatibility is available at https://bepis.io/unity.html

## Install folder

Unlike upstream BepInEx, this build installs itself into a folder named `BepInExBGPP` next to your game executable (instead of `BepInEx`), and its plugins/patchers/config/core subfolders all live under that renamed root — e.g. `BepInExBGPP/plugins`, `BepInExBGPP/config`. This lets BGP+ builds sit side-by-side with a vanilla BepInEx install without conflicting.

## Used libraries

- [NeighTools/UnityDoorstop](https://github.com/NeighTools/UnityDoorstop) - v4.5.0
- [BepInEx/HarmonyX](https://github.com/BepInEx/HarmonyX) - v2.10.2
- [0x0ade/MonoMod](https://github.com/0x0ade/MonoMod) - v22.7.31.1
- [jbevain/cecil](https://github.com/jbevain/cecil) - v0.10.4

#### IL2CPP libraries

- [SamboyCoding/Cpp2IL](https://github.com/SamboyCoding/Cpp2IL) - v2022.1.0
- [BepInEx/Il2CppInterop](https://github.com/BepInEx/Il2CppInterop) - v1.5.3
- [BepInEx/dotnet-runtime](https://github.com/BepInEx/dotnet-runtime) - v6.0.7

## License

The BepInEx project is licensed under the LGPL-2.1 license. (I have to keep it open-source)
