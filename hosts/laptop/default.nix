{ lib, pkgs, ... } : let
  supported-systems = [
    "x86_64-linux"
  ];
in {
  assertions = [
    {
      assertion = builtins.elem pkgs.system supported-systems;
      message = ''
        Current system "${pkgs.system}" is not supported by host configuration.
        List of supported systems: ${builtins.toJSON supported-systems}
      '';
    }
  ];

  imports = lib.filesystem.listFilesRecursive ./modules;
}
