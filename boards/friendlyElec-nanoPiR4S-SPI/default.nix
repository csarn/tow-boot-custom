{
  device = {
    manufacturer = "FriendlyELEC";
    name = "NanoPi R4S";
    identifier = "friendlyElec-nanoPiR4S-SPI";
    productPageURL = "https://wiki.friendlyelec.com/wiki/index.php/NanoPi_R4S";
    supportLevel = "best-effort";
  };

  hardware = {
    soc = "rockchip-rk3399";
    SPISize = 4 * 1024 * 1024;
  };

  Tow-Boot = {
    defconfig = "nanopi-r4s-rk3399_defconfig";
    patches = [
      ./enable-spi.patch
      ./add-sst26vf032b.patch
    ];
  };
}
