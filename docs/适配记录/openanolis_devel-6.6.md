# openanolis devel-6.6

## 重启奔溃

```shell
root@armbian:~# lsblk
NAME         MAJ:MIN RM   SIZE RO TYPE MOUNTPOINTS
sda            8:0    1  58.6G  0 disk 
├─sda1         8:1    1  58.6G  0 part 
└─sda2         8:2    1    32M  0 part 
sdb            8:16   1  29.3G  0 disk 
├─sdb1         8:17   1  29.3G  0 part 
└─sdb2         8:18   1    32M  0 part 
sdc            8:32   1 114.6G  0 disk 
mmcblk2      179:0    0   233G  0 disk 
├─mmcblk2p1  179:1    0   370M  0 part 
├─mmcblk2p2  179:2    0  27.6G  0 part 
└─mmcblk2p3  179:3    0   205G  0 part 
mmcblk2boot0 179:32   0     4M  1 disk 
mmcblk2boot1 179:64   0     4M  1 disk 
mmcblk0      179:96   0  58.2G  0 disk 
├─mmcblk0p1  179:97   0     4M  0 part 
├─mmcblk0p2  179:98   0   128M  0 part 
├─mmcblk0p3  179:99   0   256M  0 part /boot
└─mmcblk0p4  179:100  0  57.9G  0 part /var/log.hdd
                                       /
mmcblk0boot0 179:128  0     4M  1 disk 
mmcblk0boot1 179:160  0     4M  1 disk 
zram0        254:0    0   3.9G  0 disk [SWAP]
zram1        254:1    0    50M  0 disk /var/log
nvme0n1      259:0    0  13.4G  0 disk 
root@armbian:~# reboot -f
Rebooting.
[  538.259238] SError Interrupt on CPU5, code 0x00000000be000011 -- SError
[  538.259243] CPU: 5 PID: 126 Comm: kworker/5:4 Tainted: G   M               6.6.102-kdev #20
[  538.259249] Hardware name: AIoT 3588IED (DT)
[  538.259252] Workqueue: pm pm_runtime_work
[  538.259263] pstate: 20400009 (nzCv daif +PAN -UAO -TCO -DIT -SSBS BTYPE=--)
[  538.259269] pc : rk_iommu_is_stall_active+0x2c/0x58
[  538.259280] lr : rk_iommu_enable_stall+0x18/0x144
[  538.259287] sp : ffff800083f43c00
[  538.259288] x29: ffff800083f43c00 x28: 0000000000000000 x27: 0000000000000000
[  538.259295] x26: 0000000000000000 x25: 0000000000000008 x24: 00000000000f4240
[  538.259301] x23: 0000000000000000 x22: ffff000101121124 x21: 0000000000000008
[  538.259306] x20: ffff800080d06c9c x19: ffff0001023ce980 x18: fffffffffffd53f8
[  538.259312] x17: ffff00010b352450 x16: ffff8000818efc78 x15: 0000000000000018
[  538.259317] x14: 0000000000000000 x13: 00000000000000b7 x12: 0000000000000000
[  538.259322] x11: 00000000000000c0 x10: 0000000000000d70 x9 : ffff800083f43d20
[  538.259327] x8 : ffff0001045949d0 x7 : fefefefefefefeff x6 : 000000030ee38f25
[  538.259333] x5 : 00000000000000c0 x4 : ffff0001023ce980 x3 : 0000000000000000
[  538.259338] x2 : 0000000000000000 x1 : 0000000000000000 x0 : 0000000000000001
[  538.259344] Kernel panic - not syncing: Asynchronous SError Interrupt
[  538.259347] CPU: 5 PID: 126 Comm: kworker/5:4 Tainted: G   M               6.6.102-kdev #20
[  538.259351] Hardware name: AIoT 3588IED (DT)
[  538.259353] Workqueue: pm pm_runtime_work
[  538.259359] Call trace:
[  538.259362]  dump_backtrace+0x94/0x114
[  538.259368]  show_stack+0x18/0x4c
[  538.259371]  dump_stack_lvl+0x78/0xc4
[  538.259380]  dump_stack+0x18/0x24
[  538.259387]  panic+0x358/0x3c0
[  538.259394]  nmi_panic+0x8c/0x90
[  538.259399]  arm64_serror_panic+0x78/0x88
[  538.259404]  do_serror+0x0/0x50
[  538.259408]  do_serror+0x30/0x50
[  538.259411]  el1h_64_error_handler+0x34/0x4c
[  538.259417]  el1h_64_error+0x78/0x7c
[  538.259421]  rk_iommu_is_stall_active+0x2c/0x58
[  538.259428]  rk_iommu_disable+0x2c/0x1a0
[  538.259435]  rk_iommu_suspend+0x30/0x48
[  538.259442]  pm_generic_runtime_suspend+0x2c/0x44
[  538.259447]  __rpm_callback+0x48/0x1d8
[  538.259452]  rpm_callback+0x6c/0x78
[  538.259457]  rpm_suspend+0x114/0x664
[  538.259462]  pm_runtime_work+0xc4/0xc8
[  538.259467]  process_one_work+0x14c/0x3e8
[  538.259476]  worker_thread+0x1ac/0x364
[  538.259483]  kthread+0x110/0x114
[  538.259489]  ret_from_fork+0x10/0x20
[  538.259587] Kernel Offset: disabled
[  538.259588] CPU features: 0x1c00,000000e0,01408828,4001720b
[  538.259592] Memory Limit: none


```


















