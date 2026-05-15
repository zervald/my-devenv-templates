# uses nixos-shell to simplify vm experience
# just run `nix run .`
{
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  inputs.nixos-shell = {
    url = "github:Mic92/nixos-shell";
    inputs.nixpkgs.follows = "nixpkgs";

  };

  outputs =
    {
      self,
      nixpkgs,
      nixos-shell,
      ...
    }:
    let
      system = "x86_64-linux";
      vm-config = nixpkgs.lib.nixosSystem {
        inherit system; # TODO: target platform
        modules = [
          ./vm.nix
          {
            imports = [ nixos-shell.nixosModules.nixos-shell ];
          }
        ];
      };
    in
    {
      nixosConfigurations.vm = vm-config;

      defaultApp.x86_64-linux = {
        type = "app";
        program = nixpkgs.lib.getExe self.nixosConfigurations.vm.config.system.build.nixos-shell;
      };
    };
}
