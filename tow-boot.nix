let
  tag = "release-2023.07-007";
  sha256 = "sha256:1ffpx643nlxhs7x52rdaxwjx67wfl68rdy63qc8gsvlii3x3mskw";
  towBoot = builtins.fetchTarball {
    inherit sha256;
    url = "https://github.com/tow-boot/tow-boot/archive/${tag}.tar.gz";
  };
in {
  inherit towBoot;
  pkgs = import "${towBoot}/nixpkgs.nix" {};
}
