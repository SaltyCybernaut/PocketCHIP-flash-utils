#!/usr/bin/env bash
export FEL='sudo sunxi-fel'
export FASTBOOT='sudo fastboot'
export SNIB=false

#export TYPE=stable-buildroot-b34
#export TYPE=stable-gui-b149
export TYPE=stable-pocketchip-b126
#export TYPE=stable-server-b149
#export TYPE=testing-buildroot-b23
#export TYPE=testing-gui-b543
#export TYPE=testing-pocketchip-b667
#export TYPE=testing-server-b543


cd CHIP-tools/
./chip-update-firmware.sh -L ../flash-collection/$TYPE
cd ..

if [ $? != 0 ]; then
   echo -e "try installing dependencies with\nsudo apt install -y android-tools-fastboot sunxi-tools u-boot-tools"
fi
