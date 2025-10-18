with import <nixpkgs> { };

mkShell {

  name = "RealFX-Code/scripts";

  buildInputs = with pkgs; [
    python313
    python313Packages.ruff
  ];

}
