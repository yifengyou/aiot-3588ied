#!/bin/bash

set -xe

WORKDIR=`pwd`
TIMESTAMP=$(date +%Y%m%d)

# clean
rm -rf output
mkdir output

# download
cd ${WORKDIR}/template
rm -rf uboot.img rk3588_spl_loader_v1.21.114.bin
wget -c https://github.com/yifengyou/aiot-3588ied-uboot-mainline/releases/download/aiot-3588ied-uboot/rk3588_spl_loader_v1.21.114.bin
wget -c https://github.com/yifengyou/aiot-3588ied-uboot-mainline/releases/download/aiot-3588ied-uboot/uboot.img
wget -c https://github.com/yifengyou/aiot-3588ied-kernel/releases/download/aiot-3588ied-recovery/recovery.img

# pack
zip -r ${WORKDIR}/output/Recovery.zip ./*
cp -a ${WORKDIR}/output/Recovery.zip  ${WORKDIR}/output/Recovery_${TIMESTAMP}.zip

echo "All done!"
