#!/bin/bash

echo "Move Custom Files"
mv -f ./custom/files ./

echo "Patch For NCM"
mv -f ./custom/patch/ncm.* ./package/network/utils/comgt/files/

echo "Remove Config Folder"
rm -r ./files/etc/config

echo "Copy Build Config"
mkdir bin
cp .config ./bin/build.config

exit 0
