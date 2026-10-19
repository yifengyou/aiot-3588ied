#!/bin/bash

set -xe

WORKDIR=$(pwd)
BOARD_NAME="AIoT-3588IED"
KERNEL_RELEASE="6.12.113-kdev"
DTB_NAME="rk3588-aiot-3588ied.dtb"
BUILD_TAG="${BOARD_NAME}_${KERNEL_RELEASE}_${set_rootfs}"
SPL_LOADER="rk3588_spl_loader_v1.21.114.bin"
UBOOT_URL="https://github.com/yifengyou/rockchip-uboot-mainline/releases/download/aiot-3588ied-uboot"
KERNEL_URL="https://github.com/yifengyou/rockchip-ophub-linux-6.12.y/releases/download/aiot-3588ied_ophub-6.12.y"
RECOVERY_URL="https://github.com/yifengyou/rockchip-ophub-linux-6.18.y/releases/download/aiot-3588ied-recovery"
ROOTFS_BASE_URL="https://github.com/yifengyou/kdev/releases/download"

ROOT_PARTUUID="614e0000-0000-4b53-8000-1d28000054a9"


#==========================================================================#
#                        init build env                                    #
#==========================================================================#
export DEBIAN_FRONTEND=noninteractive
export TZ=Asia/Shanghai

apt-get update
apt-get install -qq -y ca-certificates
apt-get install -qq -y --no-install-recommends \
  acl aptly aria2 axel bc binfmt-support binutils-aarch64-linux-gnu bison \
  bsdextrautils btrfs-progs build-essential busybox ca-certificates ccache \
  clang coreutils cpio crossbuild-essential-arm64 cryptsetup curl \
  debian-archive-keyring debian-keyring debootstrap device-tree-compiler \
  dialog dirmngr distcc dosfstools dwarves e2fsprogs expect f2fs-tools \
  fakeroot fdisk file flex gawk gcc-aarch64-linux-gnu gcc-arm-linux-gnueabi \
  gdisk git gnupg gzip htop imagemagick jq kmod lib32ncurses-dev \
  lib32stdc++6 libbison-dev libc6-dev-armhf-cross libc6-i386 libcrypto++-dev \
  libelf-dev libfdt-dev libfile-fcntllock-perl libfl-dev libfuse-dev \
  libgcc-12-dev-arm64-cross libgmp3-dev liblz4-tool libmpc-dev libncurses-dev \
  libncurses5 libncurses5-dev libncursesw5-dev libpython2.7-dev \
  libpython3-dev libssl-dev libusb-1.0-0-dev linux-base lld llvm locales \
  lsb-release lz4 lzma lzop make mtools ncurses-base ncurses-term \
  nfs-kernel-server ntpdate openssl p7zip p7zip-full parallel parted patch \
  patchutils pbzip2 pigz pixz pkg-config pv python2 python2-dev python3 \
  python3-dev python3-distutils python3-pip python3-setuptools \
  python-is-python3 qemu-user-static rar rdfind rename rsync sed \
  squashfs-tools swig tar tree u-boot-tools udev unzip util-linux uuid \
  uuid-dev uuid-runtime vim wget whiptail xfsprogs xsltproc xxd xz-utils \
  zip zlib1g-dev zstd binwalk ripgrep sudo
localedef -i zh_CN -f UTF-8 zh_CN.UTF-8 || true
mkdir -p ${WORKDIR}/rockdev
mkdir -p ${WORKDIR}/release
mkdir -p /dev

#==========================================================================#
# Task: Build Root Filesystem (rootfs) using Armbian Build System          #
#==========================================================================#
mkdir -p ${WORKDIR}/rootfs
cd ${WORKDIR}/rootfs/

if [ -z "${set_vendor}" ] || [ -z "${set_rootfs}" ]; then
  echo "skip rootfs build"
else
  echo "ROOTFS:${set_rootfs}"
  ROOTFS_URL="${ROOTFS_BASE_URL}/${set_vendor}-rootfs/${set_rootfs}"
  echo "ROOTFS_URL:${ROOTFS_URL}"

  aria2c --check-certificate=false \
    --max-connection-per-server=16 \
    --split=16 \
    --human-readable=true \
    --summary-interval=5 \
    -o ${set_rootfs} \
    "${ROOTFS_URL}"

  ls -alh
  rar x ${set_rootfs}
  ls -alh
  mv rootfs.img ${WORKDIR}/rockdev/rootfs.img
  ls -alh ${WORKDIR}/rockdev
fi

ls -alh ${WORKDIR}/rockdev/rootfs.img

#==========================================================================#
#                        build uboot                                       #
#==========================================================================#
cd ${WORKDIR}

mkdir -p ophub_${KERNEL_RELEASE}
cd ophub_${KERNEL_RELEASE}

wget -c ${UBOOT_URL}/uboot.img
ls -alh uboot.img
mv uboot.img ${WORKDIR}/rockdev/uboot.img
ls -alh ${WORKDIR}/rockdev/uboot.img
md5sum ${WORKDIR}/rockdev/uboot.img

wget -c ${UBOOT_URL}/${SPL_LOADER}
ls -alh ${SPL_LOADER}
mv ${SPL_LOADER} ${WORKDIR}/rockdev/${SPL_LOADER}
ls -alh ${WORKDIR}/rockdev/${SPL_LOADER}
md5sum ${WORKDIR}/rockdev/${SPL_LOADER}

#==========================================================================#
#                        build recovery                                    #
#==========================================================================#
cd ${WORKDIR}

mkdir -p ophub_${KERNEL_RELEASE}
cd ophub_${KERNEL_RELEASE}

wget -c ${RECOVERY_URL}/recovery.img
ls -alh recovery.img
mv recovery.img ${WORKDIR}/rockdev/recovery.img
ls -alh ${WORKDIR}/rockdev/recovery.img
md5sum ${WORKDIR}/rockdev/recovery.img

#==========================================================================#
#                        build kernel                                      #
#==========================================================================#
cd ${WORKDIR}

mkdir -p ophub_${KERNEL_RELEASE}
cd ophub_${KERNEL_RELEASE}

wget -c ${KERNEL_URL}/Image-${KERNEL_RELEASE}
ls -alh Image-${KERNEL_RELEASE}
md5sum Image-${KERNEL_RELEASE}

wget -c ${KERNEL_URL}/config-${KERNEL_RELEASE}
ls -alh config-${KERNEL_RELEASE}
md5sum config-${KERNEL_RELEASE}

wget -c ${KERNEL_URL}/System.map-${KERNEL_RELEASE}
ls -alh System.map-${KERNEL_RELEASE}
md5sum System.map-${KERNEL_RELEASE}

wget -c ${KERNEL_URL}/${DTB_NAME}
ls -alh ${DTB_NAME}
md5sum ${DTB_NAME}

wget -c ${KERNEL_URL}/kos-${KERNEL_RELEASE}.tar.gz
ls -alh kos-${KERNEL_RELEASE}.tar.gz
md5sum kos-${KERNEL_RELEASE}.tar.gz
tar -xf kos-${KERNEL_RELEASE}.tar.gz
du -sh kos

wget -c ${KERNEL_URL}/kernel-devel-${KERNEL_RELEASE}.tar.gz
ls -alh kernel-devel-${KERNEL_RELEASE}.tar.gz
md5sum kernel-devel-${KERNEL_RELEASE}.tar.gz
tar -xf kernel-devel-${KERNEL_RELEASE}.tar.gz
du -sh kernel-devel

wget -c ${KERNEL_URL}/kernel-headers-${KERNEL_RELEASE}.tar.gz
ls -alh kernel-headers-${KERNEL_RELEASE}.tar.gz
md5sum kernel-headers-${KERNEL_RELEASE}.tar.gz
tar -xf kernel-headers-${KERNEL_RELEASE}.tar.gz
du -sh kernel-headers

# ============================================================
# 更新rootfs
# ============================================================
mount "${WORKDIR}/rockdev/rootfs.img" /mnt
# update rootfs with kernel modules
if [ -d kos/lib/modules ]; then
  REQ=$(du -sk kos/lib/modules | awk '{print $1}')
  AVAIL=$(df -k /mnt | tail -1 | awk '{print $4}')
  if [ "$AVAIL" -ge "$REQ" ]; then
    rm -rf /mnt/lib/modules/*
    mkdir -p /mnt/lib/modules
    # current in ${WORKDIR}/ophub_${KERNEL_RELEASE}
    cp -a kos/lib/modules/* /mnt/lib/modules
    sync
  else
    echo "Warning: Insufficient space on /mnt (Need: ${REQ}KB, Have: ${AVAIL}KB), skip add modules"
  fi
  sync
fi

# update rootfs with firmware in /firmware
if [ -d ${WORKDIR}/firmware ]; then
  REQ=$(du -sk ${WORKDIR}/firmware | awk '{print $1}')
  AVAIL=$(df -k /mnt | tail -1 | awk '{print $4}')
  if [ "$AVAIL" -ge "$REQ" ]; then
    mkdir -p /mnt/firmware
    cp -a ${WORKDIR}/firmware/* /mnt/firmware/
    ls -alh /mnt/firmware/
    sync
  else
    echo "Warning: Insufficient space on /mnt (Need: ${REQ}KB, Have: ${AVAIL}KB), skip add firmware"
  fi
  sync
fi

# update kernel-devel (without /lib/modules/xxx/build soft link creatation)
# /usr/src/kernels/<version>/ 或 /lib/modules/<version>/build/
if [ -d kernel-devel ]; then
  REQ=$(du -sk kernel-devel | awk '{print $1}')
  AVAIL=$(df -k /mnt | tail -1 | awk '{print $4}')
  if [ "$AVAIL" -ge "$REQ" ]; then
    mkdir -p /mnt/usr/src/kernels/
    # current in ${WORKDIR}/ophub_${KERNEL_RELEASE}
    cp -a kernel-devel/* /mnt/usr/src/kernels/
    ls -alh /mnt/usr/src/kernels/
    sync
  else
    echo "Warning: Insufficient space on /mnt (Need: ${REQ}KB, Have: ${AVAIL}KB), skip add kernel devel"
  fi
  sync
fi

if [ -d kernel-headers ]; then
  REQ=$(du -sk kernel-headers | awk '{print $1}')
  AVAIL=$(df -k /mnt | tail -1 | awk '{print $4}')
  if [ "$AVAIL" -ge "$REQ" ]; then
    mkdir -p /mnt/usr/include/
    # current in ${WORKDIR}/ophub_${KERNEL_RELEASE}
    cp -a kernel-headers/* /mnt/usr/include/
    ls -alh /mnt/usr/include/
    sync
  else
    echo "Warning: Insufficient space on /mnt (Need: ${REQ}KB, Have: ${AVAIL}KB), skip add kernel devel"
  fi
  sync
fi
# lazy umount
umount -l /mnt

# ============================================================
# 生成boot.img
# ============================================================
dd if=/dev/zero of=boot.img bs=1M count=256
mkfs.ext2 -U 7A3F0000-0000-446A-8000-702F00006273 -L kdevboot boot.img
mount boot.img /mnt

mkdir -p /mnt/dtb
cp -a ${DTB_NAME} /mnt/dtb/
cp -f Image-${KERNEL_RELEASE} /mnt/vmlinuz-${KERNEL_RELEASE}
cp -f config-${KERNEL_RELEASE} /mnt/config-${KERNEL_RELEASE}
cp -f System.map-${KERNEL_RELEASE} /mnt/System.map-${KERNEL_RELEASE}
touch /mnt/initrd.img-${KERNEL_RELEASE}

cat >/mnt/extlinux.conf <<EOF
## /extlinux/extlinux.conf
##
## IMPORTANT WARNING
##
## The configuration of this file is generated automatically.
## Do not edit this file manually, use: u-boot-update

default l0
menu title Kdev U-Boot menu
prompt 1
timeout 30

label normal
	menu label Linux kernel ${KERNEL_RELEASE}-kdev
	linux vmlinuz-${KERNEL_RELEASE}
	fdt /dtb/${DTB_NAME}
	append root=PARTUUID=${ROOT_PARTUUID} panic=9 rw console=ttyS2,1500000 console=tty1 cgroup_enable=cpuset cgroup_memory=1 cgroup_enable=memory net.ifnames=0 biosdevname=0 level=10 loglevel=10 selinux=0 crashkernel=384M-:128M systemd.mask=systemd-growfs@-.service rockchip.dmc_freq=528000 video=HDMI-A-1:1920x1080@60

label single
	menu label Linux kernel ${KERNEL_RELEASE}-kdev (rescue target)
	linux vmlinuz-${KERNEL_RELEASE}
	fdt /dtb/${DTB_NAME}
	append root=PARTUUID=${ROOT_PARTUUID} panic=9 rw console=ttyS2,1500000 console=tty1 cgroup_enable=cpuset cgroup_memory=1 cgroup_enable=memory net.ifnames=0 biosdevname=0 level=10 loglevel=10 selinux=0 crashkernel=384M-:128M single

EOF

cat >/mnt/armbian_first_run.txt <<EOF
root_password=admin
username=admin
user_password=admin
shell=bash

EOF

find /mnt
sync
umount /mnt
sync

ls -alh boot.img
md5sum boot.img

cp -a boot.img ${WORKDIR}/rockdev/boot.img
ls -alh ${WORKDIR}/rockdev/boot.img
md5sum ${WORKDIR}/rockdev/boot.img

#==========================================================================#
#                        pack rkdevtool                                    #
#==========================================================================#

cd ${WORKDIR}

mkdir -p ${WORKDIR}/release
mkdir -p ${WORKDIR}/rockdev_img_tmp
cp -a ${WORKDIR}/RKDevTool-v3.37-AIoT-3588IED \
  ${WORKDIR}/rockdev_img_tmp/RKDevTool
mkdir -p ${WORKDIR}/rockdev_img_tmp/RKDevTool/Image/

cp -a ${WORKDIR}/rockdev/${SPL_LOADER} ${WORKDIR}/rockdev_img_tmp/RKDevTool/Image/
cp -a ${WORKDIR}/rockdev/*.img ${WORKDIR}/rockdev_img_tmp/RKDevTool/Image/

cd ${WORKDIR}/rockdev_img_tmp/
rar a ${WORKDIR}/release/${BUILD_TAG} RKDevTool
cd ${WORKDIR}/release/
sha256sum ${BUILD_TAG}

ls -alh ${WORKDIR}/release/

echo "Build completed successfully!"
exit 0
