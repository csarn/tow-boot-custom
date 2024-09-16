# Tow-Boot Custom

Tow-Boot build for devices that I own and can't be upstreamed.

## friendlyElec-nanoPiR4S-SPI

I have actually upstreamed the `friendlyElec-nanoPiR4S` to Tow-Boot but this configuration is for my NanoPI R4S with my [SPI flash extension board](https://codedbearder.com/posts/nanopi-r4s-spi-flash/). As this is a custom solution I can't upstream this but I wanted to have a repeatable build of Tow-Boot that I can write to the SPI.

### Instructions

1. Run `nix-build -A friendlyElec-nanoPiR4S-SPI`
2. Burn the resulting `./result/spi.installer.img` to an SD card (`dd if=./result/spi.installer.img of=/dev/sdX bs=1M oflag=direct,sync status=progress`)
3. Boot from the SD card while attached to the serial port header on the NanoPI R4S and there should be presented to you the option to erase and flash the SPI flash.
