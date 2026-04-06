{
  description = "Nuhddy's typst templates";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs = {
    self,
    nixpkgs,
    ...
  }: let
    forAllSystems = nixpkgs.lib.genAttrs nixpkgs.lib.systems.flakeExposed;
  in {
    packages = forAllSystems (
      system:
        (import nixpkgs {inherit system;}).stdenv.mkDerivation {
          name = "typst-templates";
          src = ./.;
          installPhase = ''
            mkdir -p $out
            cp -r . $out
          '';
        }
    );
  };
}
