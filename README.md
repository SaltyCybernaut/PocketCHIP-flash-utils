# PocketCHIP-flash-utils
Bootstrap the process of locally flashing your pocketchip/chip hardware.

## Instructions

    mkdir pocketchip; cd pocketchip
    git clone https://github.com/SaltyCybernaut/PocketCHIP-flash-utils.git
Then download 'CHIP-tools.zip' and 'flash-collection.zip' from the Chip Collection on [Archive.org](https://archive.org/details/C.h.i.p.FlashCollection)

    wget --show-progress https://archive.org/download/C.h.i.p.FlashCollection/CHIP-tools.zip
    wget --show-progress https://archive.org/download/C.h.i.p.FlashCollection/flash-collection.zip
or use the [torrent](https://archive.org/download/C.h.i.p.FlashCollection/C.h.i.p.FlashCollection_archive.torrent)
### Ubuntu 18.04
Install necessary dependencies

    sudo apt install --yes android-tools-fastboot sunxi-tools u-boot-tools openjdk-11-jdk-headless unzip
Decompress the necessary tools

    ./PocketCHIP-flash-utils/decompress-chip-flashing-utils.sh ./
Flash you PocketCHIP!

    ./PocketCHIP-flash-utils/flash-pocketchip.sh
or edit 'flash-pocketchip.sh' to select what you want to flash onto your chip (pocketchip, desktop, server, stable, testing)

    vim ./PocketCHIP-flash-utils/flash-pocketchip.sh
    ./PocketCHIP-flash-utils/flash-pocketchip.sh

## Please Contribute!
I welcome your feedback or your instructions for other distros!
