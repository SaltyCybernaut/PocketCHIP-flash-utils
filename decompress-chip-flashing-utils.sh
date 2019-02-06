#!/usr/bin/env bash

if [ -z "$1" ]; then
   echo "Usage: $0 /path/to/C.h.i.p.FlashCollection"
   exit 0
fi

jar -xfv $1/flash-collection.zip
unzip $1/CHIP-tools.zip

if [ $? != 0 ]; then
   echo -e "try installing dependencies with\nsudo apt install -y unzip openjdk-11-jdk-headless"
fi
