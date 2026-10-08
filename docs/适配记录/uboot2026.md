# uboot v2026

## usb适配

```shell

=> usb start
starting USB...
USB EHCI 1.00
USB OHCI 1.0
USB EHCI 1.00
USB OHCI 1.0
USB XHCI 1.10
USB XHCI 1.10
Bus usb@fc800000: 2 USB Device(s) found
Bus usb@fc840000: 1 USB Device(s) found
Bus usb@fc880000: 1 USB Device(s) found
Bus usb@fc8c0000: 1 USB Device(s) found
Bus usb@fcd00000: 1 USB Device(s) found
Bus usb@fc400000: 1 USB Device(s) found
       scanning usb for storage devices... 0 Storage Device(s) found
=> usb tree
USB device tree:
  1  Hub (480 Mb/s, 0mA)
  |  u-boot EHCI Host Controller 
  |
  +-2  Hub (480 Mb/s, 100mA)
        USB 2.0 Hub 
     
  1  Hub (12 Mb/s, 0mA)
      U-Boot Root Hub 
   
  1  Hub (480 Mb/s, 0mA)
     u-boot EHCI Host Controller 
   
  1  Hub (12 Mb/s, 0mA)
      U-Boot Root Hub 
   
  1  Hub (5 Gb/s, 0mA)
     U-Boot XHCI Host Controller 
   
  1  Hub (5 Gb/s, 0mA)
     U-Boot XHCI Host Controller 
   
=> usb info
1: Hub,  USB Revision 2.0
 - u-boot EHCI Host Controller 
 - Class: Hub
 - PacketSize: 64  Configurations: 1
 - Vendor: 0x0000  Product 0x0000 Version 1.0
   Configuration: 1
   - Interfaces: 1 Self Powered 0mA
     Interface: 0
     - Alternate Setting 0, Endpoints: 1
     - Class Hub
     - Endpoint 1 In Interrupt MaxPacket 8 Interval 255ms

2: Hub,  USB Revision 2.0
 -  USB 2.0 Hub 
 - Class: Hub
 - PacketSize: 64  Configurations: 1
 - Vendor: 0x1a40  Product 0x0101 Version 1.17
   Configuration: 1
   - Interfaces: 1 Self Powered Remote Wakeup 100mA
     Interface: 0
     - Alternate Setting 0, Endpoints: 1
     - Class Hub
     - Endpoint 1 In Interrupt MaxPacket 1 Interval 12ms

1: Hub,  USB Revision 1.10
 -  U-Boot Root Hub 
 - Class: Hub
 - PacketSize: 8  Configurations: 1
 - Vendor: 0x0000  Product 0x0000 Version 0.0
   Configuration: 1
   - Interfaces: 1 Self Powered 0mA
     Interface: 0
     - Alternate Setting 0, Endpoints: 1
     - Class Hub
     - Endpoint 1 In Interrupt MaxPacket 2 Interval 255ms

1: Hub,  USB Revision 2.0
 - u-boot EHCI Host Controller 
 - Class: Hub
 - PacketSize: 64  Configurations: 1
 - Vendor: 0x0000  Product 0x0000 Version 1.0
   Configuration: 1
   - Interfaces: 1 Self Powered 0mA
     Interface: 0
     - Alternate Setting 0, Endpoints: 1
     - Class Hub
     - Endpoint 1 In Interrupt MaxPacket 8 Interval 255ms

1: Hub,  USB Revision 1.10
 -  U-Boot Root Hub 
 - Class: Hub
 - PacketSize: 8  Configurations: 1
 - Vendor: 0x0000  Product 0x0000 Version 0.0
   Configuration: 1
   - Interfaces: 1 Self Powered 0mA
     Interface: 0
     - Alternate Setting 0, Endpoints: 1
     - Class Hub
     - Endpoint 1 In Interrupt MaxPacket 2 Interval 255ms

1: Hub,  USB Revision 3.0
 - U-Boot XHCI Host Controller 
 - Class: Hub
 - PacketSize: 512  Configurations: 1
 - Vendor: 0x0000  Product 0x0000 Version 1.0
   Configuration: 1
   - Interfaces: 1 Self Powered 0mA
     Interface: 0
     - Alternate Setting 0, Endpoints: 1
     - Class Hub
     - Endpoint 1 In Interrupt MaxPacket 8 Interval 255ms

1: Hub,  USB Revision 3.0
 - U-Boot XHCI Host Controller 
 - Class: Hub
 - PacketSize: 512  Configurations: 1
 - Vendor: 0x0000  Product 0x0000 Version 1.0
   Configuration: 1
   - Interfaces: 1 Self Powered 0mA
     Interface: 0
     - Alternate Setting 0, Endpoints: 1
     - Class Hub
     - Endpoint 1 In Interrupt MaxPacket 8 Interval 255ms

=> 


```










## bootcmd_recovery


结论：分区64M，镜像64M，会出现该问题，将镜像改为60MB，问题解决。

```shell

printenv bootcmd_recovery
bootcmd_recovery=sf probe 0;sf read 0x40000000 0x0 0x2000000;blkmap create spidisk;blkmap map spidisk 0 0x10000 mem 0x40000000;part list blkmap 0;sysboot blkmap 0:2 any ${scriptaddr} /recovery.conf;

```


```shell

sysboot mmc 0:2 any ${scriptaddr} /recovery.conf
sysboot mmc 0:2 any 0x40000000 /recovery.conf
sysboot mmc 0:2 any 0x2000000 /recovery.conf

mmc dev 0
mmc read 0x40000000 0x2000 0x20000
blkmap create recov
blkmap map recov 0 0x20000 mem 0x40000000
part list blkmap 0
sysboot blkmap 0:1 any ${scriptaddr} /recovery.conf

```


```shell
=> part list mmc 0

Partition Map for mmc device 0  --   Partition Type: EFI

Part	Start LBA	End LBA		Name
	Attributes
	Type GUID
	Partition GUID
  1	0x00000040	0x0000183f	"uboot"
	attrs:	0x0000000000000000
	type:	e7580000-0000-4832-8000-3da300000f90
		(e7580000-0000-4832-8000-3da300000f90)
	guid:	d94a0000-0000-4f03-8000-071b00001ff7
  2	0x00002000	0x00021fff	"recovery"
	attrs:	0x0000000000000000
	type:	9e3a0000-0000-4024-8000-23bb00002b47
		(9e3a0000-0000-4024-8000-23bb00002b47)
	guid:	70060000-0000-4a15-8000-0de0000056ed
  3	0x00022000	0x00061fff	"boot"
	attrs:	0x0000000000000000
	type:	cf700000-0000-4802-8000-742700003896
		(cf700000-0000-4802-8000-742700003896)
	guid:	7a3f0000-0000-446a-8000-702f00006273
  4	0x00062000	0x0747bfde	"rootfs"
	attrs:	0x0000000000000000
	type:	62130000-0000-4738-8000-36cf000021e7
		(62130000-0000-4738-8000-36cf000021e7)
	guid:	614e0000-0000-4b53-8000-1d28000054a9
=> sysboot mmc 0:2 any ${scriptaddr} /recovery.conf
Retrieving file: /recovery.conf
1:	RK3588 Linux recovery
Retrieving file: /kernel-uImage.lzma
append: console=ttyS2,1500000n8 earlycon=uart8250,mmio32,0xfeb50000 rootwait rw
Retrieving file: /rk3588-aiot-3588ied.dtb
## Booting kernel from Legacy Image at 02000000 ...
   Image Name:   Recovery Kernel
   Image Type:   AArch64 Linux Kernel Image (lzma compressed)
   Data Size:    31085066 Bytes = 29.6 MiB
   Load Address: 40080000
   Entry Point:  40080000
   Verifying Checksum ... Bad Data CRC
ERROR -22: Invalid argument: can't get kernel image!
=> ext2ls mmc 0:2 /
            ./
            ../
   194790   rk3588-aiot-3588ied.dtb
 31085130   kernel-uImage.lzma
      173   recovery.conf

3 file(s), 2 dir(s)

=> ext4load mmc 0:2 ${loadaddr} /kernel-uImage.lzma
31085130 bytes read in 182 ms (162.9 MiB/s)
=> crc32 ${loadaddr} 31085130
crc32 for 00c00800 ... 31c8592f ==> 1b1dc994
=> 


```



```python


# python3 - <<'EOF'
import zlib, struct
d = open('recovery/kernel-uImage.lzma','rb').read()
hdr, body = d[:64], d[64:]
print("size       :", len(d))
print("hdr dcrc   : %08x" % struct.unpack('>I', hdr[24:28])[0])
print("body crc32 : %08x" % (zlib.crc32(body) & 0xffffffff))
EOF
size       : 31085130
hdr dcrc   : 2f236e7d
body crc32 : 2f236e7d



```


## 内核告警

```shell

[   14.578273] rkvdec fdc40000.video-codec: deferred probe timeout, ignoring dependency
[   14.580926] hantro-vpu fdc70000.video-codec: deferred probe timeout, ignoring dependency
[   14.582732] hantro-vpu fdc70000.video-codec: registered rockchip,rk3588-av1-vpu-dec as /dev/video4
[   14.605643] rkvdec fdc38000.video-codec: deferred probe timeout, ignoring dependency
[   14.608546] rkvdec fdc40000.video-codec: deferred probe timeout, ignoring dependency
[   14.610559] platform cpufreq-dt: deferred probe pending: (reason unknown)
[   14.611157] platform fdab0000.npu: deferred probe pending: platform: supplier 2-0042 not ready
[   14.611908] platform fdac0000.npu: deferred probe pending: platform: supplier 2-0042 not ready
[   14.612658] platform fdad0000.npu: deferred probe pending: platform: supplier 2-0042 not ready
[   14.613422] platform sound: deferred probe pending: asoc-simple-card: parse error
[   14.614074] platform regulator-vcc5v0-host: deferred probe pending: reg-fixed-voltage: can't get GPIO
[   14.614878] platform fd5d8000.syscon:usb2phy@8000: deferred probe pending: rockchip-usb2phy: failed to create phy
[   14.615771] platform fd5dc000.syscon:usb2phy@c000: deferred probe pending: rockchip-usb2phy: failed to create phy
[   14.616672] platform fd5d4000.syscon:usb2phy@4000: deferred probe pending: rockchip-usb2phy: failed to create phy
[   14.617565] platform fed90000.phy: deferred probe pending: platform: supplier fd5d4000.syscon:usb2phy@4000 not ready
[   14.618480] platform a40000000.pcie: deferred probe pending: rockchip-dw-pcie: failed to get reset gpio
[   14.619296] platform fdab9000.iommu: deferred probe pending: (reason unknown)
[   14.619922] platform fdaca000.iommu: deferred probe pending: (reason unknown)
[   14.620544] platform fdada000.iommu: deferred probe pending: (reason unknown)
[   14.621167] platform fdc38700.iommu: deferred probe pending: (reason unknown)
[   14.621788] platform fdc40700.iommu: deferred probe pending: (reason unknown)
[   14.622411] platform fc400000.usb: deferred probe pending: platform: wait for supplier /syscon@fd5d4000/usb2phy@4000/otg-port
[   14.623396] platform fc800000.usb: deferred probe pending: platform: wait for supplier /syscon@fd5d8000/usb2phy@8000/host-port
[   14.624386] platform fc880000.usb: deferred probe pending: platform: wait for supplier /syscon@fd5dc000/usb2phy@c000/host-port
[   14.625376] platform fdc38000.video-codec: deferred probe pending: (reason unknown)
[   14.626042] platform fc840000.usb: deferred probe pending: platform: wait for supplier /syscon@fd5d8000/usb2phy@8000/host-port
[   14.627035] platform fdc40000.video-codec: deferred probe pending: (reason unknown)
[   14.627708] rockchip-pm-domain fd8d8000.power-management:power-controller: sync_state() pending due to fc8c0000.usb
[   14.628617] rockchip-pm-domain fd8d8000.power-management:power-controller: sync_state() pending due to fc880000.usb
[   14.629524] rockchip-pm-domain fd8d8000.power-management:power-controller: sync_state() pending due to fc840000.usb
[   14.630434] rockchip-pm-domain fd8d8000.power-management:power-controller: sync_state() pending due to fc800000.usb
[   14.631342] rockchip-pm-domain fd8d8000.power-management:power-controller: sync_state() pending due to fb000000.gpu
[   14.632249] rockchip-pm-domain fd8d8000.power-management:power-controller: sync_state() pending due to fdab0000.npu
[   14.633159] rockchip-pm-domain fd8d8000.power-management:power-controller: sync_state() pending due to fdab9000.iommu
[   14.634082] rockchip-pm-domain fd8d8000.power-management:power-controller: sync_state() pending due to fdac0000.npu
[   14.634989] rockchip-pm-domain fd8d8000.power-management:power-controller: sync_state() pending due to fdaca000.iommu
[   14.635910] rockchip-pm-domain fd8d8000.power-management:power-controller: sync_state() pending due to fdad0000.npu
[   14.636820] rockchip-pm-domain fd8d8000.power-management:power-controller: sync_state() pending due to fdada000.iommu
[   14.637746] rockchip-pm-domain fd8d8000.power-management:power-controller: sync_state() pending due to fdb70000.rga
[   14.638656] rockchip-pm-domain fd8d8000.power-management:power-controller: sync_state() pending due to fdba4000.video-codec
[   14.639627] rockchip-pm-domain fd8d8000.power-management:power-controller: sync_state() pending due to fdba8000.video-codec
[   14.640595] rockchip-pm-domain fd8d8000.power-management:power-controller: sync_state() pending due to fdbac000.video-codec
[   14.641563] rockchip-pm-domain fd8d8000.power-management:power-controller: sync_state() pending due to fdc38000.video-codec
[   14.642530] rockchip-pm-domain fd8d8000.power-management:power-controller: sync_state() pending due to fdc38700.iommu
[   14.643456] rockchip-pm-domain fd8d8000.power-management:power-controller: sync_state() pending due to fdc40000.video-codec
[   14.644423] rockchip-pm-domain fd8d8000.power-management:power-controller: sync_state() pending due to fdc40700.iommu
[   14.645346] rockchip-pm-domain fd8d8000.power-management:power-controller: sync_state() pending due to fdca0000.iommu
[   14.646289] rockchip-pm-domain fd8d8000.power-management:power-controller: sync_state() pending due to fc400000.usb
[   14.647200] rockchip-pm-domain fd8d8000.power-management:power-controller: sync_state() pending due to fdee0000.hdmi_receiver
[   14.648183] rockchip-pm-domain fd8d8000.power-management:power-controller: sync_state() pending due to a40000000.pcie




```




## pcie网卡


0004:41:00.0 Ethernet controller [0200]: Motorcomm Microelectronics. YT6801 Gigabit Ethernet Controller [1f0a:6801] (rev 01)



继续，参考factory-image下的boot.dts和boot.dtb，帮我检查 rk3588-aiot-3588ied.dts的功能是否完备。








[root@AIoT-3588IED ~]# ip a
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN qlen 1000
link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
inet 127.0.0.1/8 scope host lo
valid_lft forever preferred_lft forever
inet6 ::1/128 scope host
valid_lft forever preferred_lft forever
2: eth0: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu 1500 qdisc mq master br0 state DOWN qlen 1000
link/ether fe:d6:91:00:2c:64 brd ff:ff:ff:ff:ff:ff
3: sit0@NONE: <NOARP> mtu 1480 qdisc noop state DOWN qlen 1000
link/sit 0.0.0.0 brd 0.0.0.0
4: ip6tnl0@NONE: <NOARP> mtu 1452 qdisc noop state DOWN qlen 1000
link/tunnel6 00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00 brd 00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00
5: br0: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu 1500 qdisc noqueue state DOWN qlen 1000
link/ether fe:d6:91:00:2c:64 brd ff:ff:ff:ff:ff:ff
inet 192.168.98.1/24 scope global br0
valid_lft forever preferred_lft forever
[root@AIoT-3588IED ~]# lspci -nn
0000:00:00.0 PCI bridge [0604]: Rockchip Electronics Co., Ltd RK3588 [1d87:3588] (rev 01)
0000:01:00.0 Non-Volatile memory controller [0108]: Intel Corporation NVMe Optane Memory Series [8086:2522]
0002:20:00.0 PCI bridge [0604]: Rockchip Electronics Co., Ltd RK3588 [1d87:3588] (rev 01)
0002:21:00.0 Network controller [0280]: Broadcom Inc. and subsidiaries BCM43752 802.11ax Dual Band Wireless LAN Controller [14e4:449d] (rev 02)
0004:40:00.0 PCI bridge [0604]: Rockchip Electronics Co., Ltd RK3588 [1d87:3588] (rev 01)
[root@AIoT-3588IED ~]#

但是下面的网卡还是没有被pcie扫描到，继续解决。之前可以的，现在咋不行了。

0004:41:00.0 Ethernet controller [0200]: Motorcomm Microelectronics. YT6801 Gigabit Ethernet Controller [1f0a:6801] (rev 01)







## uboot环境变量



U-Boot 2026.10-rc3-00107-g95de43d7a625-dirty (Oct 07 2026 - 01:49:16 +0800)

Model: AIoT 3588IED Compiled By yifengyou v2026.10.07-01:49:12
SoC:   RK3588J
DRAM:  8 GiB
PMIC:  RK806 (on=0x40, off=0x00)
Core:  848 devices, 38 uclasses, devicetree: separate
WDT:   Started watchdog@feaf0000 with servicing every 1000ms (60s timeout)
MMC:   mmc@fe2c0000: 1, mmc@fe2d0000: 2, mmc@fe2e0000: 0
Reading from MMC(0)... *** Warning - bad CRC, using default environment

** kdev: Auto-saving default environment to Flash... **
Saving Environment to MMC... Writing to MMC(0)... OK
** kdev: Default environment saved successfully. **

** kdev: Auto-saving default environment to Flash... **
Saving Environment to MMC... Writing to MMC(0)... OK
** kdev: Default environment saved successfully. **

In:    serial@feb50000
Out:   serial@feb50000
Err:   serial@feb50000
Model: AIoT 3588IED Compiled By yifengyou v2026.10.07-01:49:12
SoC:   RK3588J
Net:   eth0: ethernet@fe1c0000
No button labelled 'Recovery key'
Hit any key to stop autoboot: 0
=> run bootcmd_recovery










---