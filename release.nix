let
  boards = import ./default.nix;
  pkgs = (import ./tow-boot.nix).pkgs;
  lib = pkgs.lib;
in
  pkgs.linkFarm "tow-boot-custom-release" (lib.mapAttrsToList
    (
      _: board: {
        name = board.build.archive.name;
        path = board.build.archive;
      }
    )
    boards)
