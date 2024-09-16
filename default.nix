let
  tag = "release-2023.07-007";
  sha256 = "sha256:1ffpx643nlxhs7x52rdaxwjx67wfl68rdy63qc8gsvlii3x3mskw";
  towBoot = builtins.fetchTarball {
    inherit sha256;
    url = "https://github.com/tow-boot/tow-boot/archive/${tag}.tar.gz";
  };

  pkgs = import "${towBoot}/nixpkgs.nix" {};

  evalFor = device:
    import "${towBoot}/support/nix/eval-with-configuration.nix" {
      inherit device;
      inherit pkgs;
      verbose = true;
      configuration = {
        imports = [
          {
            system.automaticCross = true;
          }
        ];
      };
    };
in {
  friendlyElec-nanoPiR4S-SPI = evalFor ./boards/friendlyElec-nanoPiR4S-SPI;
}
