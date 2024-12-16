# https://wiki.nixos.org/wiki/Python
# shell.nix
let
  # We pin to a specific nixpkgs commit for reproducibility.
  # Last updated: 2024-12-15. Check for new commits at https://status.nixos.org.
  pkgs = import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/314e12ba369ccdb9b352a4db26ff419f7c49fa84.tar.gz") {};
in pkgs.mkShell {
  packages = [
    (pkgs.python3.withPackages (python-pkgs: with python-pkgs; [
      # select Python packages here
      pandas
      requests
      pyyaml
      libxml2
    ]))
  ];
}
