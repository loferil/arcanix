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
  outputs = { ... } : { };
}
