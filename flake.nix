{
  description = "Nuhddy's typst templates";

  inputs.nixpkgs.follows = "nixpkgs";

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
