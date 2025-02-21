{ config, lib, pkgs, ... } : {
  config = {
    assertions = [
      {
        assertion = builtins.elem pkgs.system config.supportedSystems;
        message = ''
          Current system "${pkgs.system}" is not supported by host configuration.
          List of supported systems: ${builtins.toJSON config.supportedSystems}
        '';
      }
    ];
  };

  options = {
    supportedSystems = lib.mkOption {
      default = lib.systems.flakeExposed;
      description = "List of supported systems";
      type = lib.types.listOf lib.types.str;
    };
  };
}
