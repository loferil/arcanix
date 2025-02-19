{
  description = ''
    NixOS flake where order emerges from chaos through digital alchemy
    @source: https://github.com/loferil/arcanix.git
  '';
  inputs = {
    pkgs = {
      owner = "nixos";
      ref = "nixos-unstable";
      repo = "nixpkgs";
      type = "github";
    };
  };
  nixConfig = {
    abort-on-warn = true;
    accept-flake-config = true;
    allow-dirty = false;
    connect-timeout = 30;
    fallback = true;
    keep-build-log = false;
    keep-derivations = false;
    max-jobs = "auto";
    preallocate-contents = true;
    sync-before-registering = true;
  };
  outputs = { pkgs, ... } : let
    availableHosts = builtins.attrNames(
      pkgs.lib.filterAttrs(
        _ : type : type == "directory"
      ) ( builtins.readDir ./hosts )
    );

    # Apparently dynamic system detection with `builtins.currentSystem`
    #  "breaks hermetic evaluation". So enjoy this hardcoded platform instead
    # See: https://github.com/NixOS/nix/issues/3843#issuecomment-2589248337
    currentPlatform = "x86_64-linux";
  in {
    nixosConfigurations = builtins.listToAttrs(
      builtins.map( hostname : {
        name = hostname;
        value = pkgs.lib.nixosSystem {
          modules = [
            ./shared/modules
            ./hosts/${hostname}
          ];
          specialArgs = { };
          system = currentPlatform;
        };
      } ) availableHosts
    );
  };
}
