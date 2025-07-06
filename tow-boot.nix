let
  commit = "fe5ba8a08a94bce5153f28bbd94abc2e1a3b91a3";
  sha256 = "sha256:0yg4a0xim2g0qgi79am07vm9b44gv76mxmgc983cg1dm04mmg1jw";
  towBoot = builtins.fetchTarball {
    inherit sha256;
    url = "https://github.com/csarn/tow-boot/archive/${commit}.tar.gz";
  };
in {
  inherit towBoot;
  pkgs = import "${towBoot}/nixpkgs.nix" {};
}
