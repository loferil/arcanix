{ lib, ... } : {
  imports = lib.filesystem.listFilesRecursive ./modules;

  supportedSystems = [
    "x86_64-linux"
  ];
}
