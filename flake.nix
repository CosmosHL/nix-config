{
  description = "Sample Nix Config";

  outputs = {
    nixpkgs,
    ...
  } @ inputs: {
    nixosConfigurations = {
      nixlearn = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        nixpkgs = nixpkgs;
        specialArgs = inputs;
        modules = [
          ./hosts/nixlearn
        ];
      };
    };
  };

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-23.11";
  };

  nixConfig = {
    experimental-features = ["nix-command" "flakes"];
    substituters = [
      "https://cache.nixos.org"
    ];
  };
}
