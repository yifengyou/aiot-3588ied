# ophub 6.1.y

## 开机crash

```shell


DDR cb12b99cc23 hcy 26/08/04-14:19.50,fwver: v1.21
ch0 ttot10
ch1 ttot10
ch2 ttot10
ch3 ttot10
ch0 ttot18
LPDDR4X, 2112MHz
channel[0] BW=16 Col=10 Bk=8 CS0 Row=16 CS1 Row=16 CS=2 Die BW=16 Size=2048MB
ch1 ttot18
channel[1] BW=16 Col=10 Bk=8 CS0 Row=16 CS1 Row=16 CS=2 Die BW=16 Size=2048MB
ch2 ttot18
channel[2] BW=16 Col=10 Bk=8 CS0 Row=16 CS1 Row=16 CS=2 Die BW=16 Size=2048MB
ch3 ttot18
channel[3] BW=16 Col=10 Bk=8 CS0 Row=16 CS1 Row=16 CS=2 Die BW=16 Size=2048MB
Manufacturer ID:0xff
DQS rds:h1,h2 
CH0 RX Vref:26.7%, TX Vref:24.8%,23.8%
DQ rds:h3 h1 h2 h2 l0 h7 l0 l0, l0 h3 h7 h2 h1 h7 h1 h3 

DQS rds:h2,h1 
CH1 RX Vref:26.3%, TX Vref:23.8%,23.8%
DQ rds:h3 h3 h1 h3 h5 h5 h4 h7, h5 h1 h3 h1 h1 h5 h3 h5 

DQS rds:l0,l0 
CH2 RX Vref:29.3%, TX Vref:21.8%,20.8%
DQ rds:h4 h7 h2 h4 h3 h5 h2 h3, h5 h1 h2 h7 l0 h1 h3 h1 

DQS rds:h1,h1 
CH3 RX Vref:28.5%, TX Vref:22.8%,21.8%
DQ rds:h1 h1 h4 l0 h3 h6 l0 h1, h2 h5 h1 l0 h1 h1 h2 h1 

stride=0x2, ddr_config=0x4
hash ch_mask0-1 0x20 0x40, bank_mask0-3 0xa00 0x1400 0x2800 0x0, rank_mask0 0x401000
change to F1: 528MHz
ch0 ttot10
ch1 ttot10
ch2 ttot10
ch3 ttot10
change to F2: 1068MHz
ch0 ttot14
ch1 ttot14
ch2 ttot14
ch3 ttot14
change to F3: 1560MHz
ch0 ttot16
ch1 ttot16
ch2 ttot16
ch3 ttot16
change to F0: 2112MHz
ch0 ttot18
ch1 ttot18
ch2 ttot18
ch3 ttot18
out

U-Boot SPL 2026.10-rc3 (Oct 11 2026 - 12:22:02 +0800)
Trying to boot from MMC1
## Checking hash(es) for config config-1 ... OK
## Checking hash(es) for Image atf-1 ... sha256+ OK
## Checking hash(es) for Image u-boot ... sha256+ OK
## Checking hash(es) for Image fdt-1 ... sha256+ OK
## Checking hash(es) for Image atf-2 ... sha256+ OK
## Checking hash(es) for Image atf-3 ... sha256+ OK
INFO:    Preloader serial: 2
NOTICE:  BL31: v2.3():v2.3-964-g8319968f5:derrick.huang, fwver: v1.54
NOTICE:  BL31: Built : 17:20:23, Dec 26 2025
INFO:    spec: 0xa
INFO:    code: 0x88
INFO:    customer demand: 0x0
INFO:    ext 32k is not valid
INFO:    ddr: stride-en 4CH
INFO:    GICv3 without legacy support detected.
INFO:    ARM GICv3 driver initialized in EL3
INFO:    valid_cpu_msk=0xff bcore0_rst = 0x0, bcore1_rst = 0x0
INFO:    l3 cache partition cfg-0
INFO:    system boots from cpu-hwid-0
INFO:    bypass memory repair
INFO:    idle_st=0x21fff, pd_st=0x11fff9, repair_st=0xfff70001
INFO:    dfs DDR fsp_params[0].freq_mhz= 2112MHz
INFO:    dfs DDR fsp_params[1].freq_mhz= 528MHz
INFO:    dfs DDR fsp_params[2].freq_mhz= 1068MHz
INFO:    dfs DDR fsp_params[3].freq_mhz= 1560MHz
INFO:    BL31: Initialising Exception Handling Framework
INFO:    BL31: Initializing runtime services
WARNING: No OPTEE provided by BL2 boot loader, Booting device without OPTEE initialization. SMC`s destined for OPTEE will return SMC_UNK
ERROR:   Error initializing runtime service opteed_fast
INFO:    BL31: Preparing for EL3 exit to normal world
INFO:    Entry point address = 0x800000
INFO:    SPSR = 0x3c9


U-Boot 2026.10-rc3 (Oct 11 2026 - 12:22:02 +0800)

Model: AIoT 3588IED Compiled By yifengyou v2026.10.11-12:21:55
SoC:   RK3588J
DRAM:  8 GiB
PMIC:  RK806 (on=0x40, off=0x00)
Core:  853 devices, 38 uclasses, devicetree: separate
SMDT WDT: probed watchdog@62
SMDT WDT: MCU check OK (reg 0x3a = 0x89)
SMDT WDT: start round 1/10
SMDT WDT: started, timeout=60000ms (round 1)
WDT:   Started watchdog@62 with servicing every 6000ms (60s timeout)
MMC:   mmc@fe2c0000: 1, mmc@fe2d0000: 2, mmc@fe2e0000: 0
Reading from MMC(0)... Loading Environment from MMC... OK
In:    serial@feb50000
Out:   serial@feb50000
Err:   serial@feb50000
Model: AIoT 3588IED Compiled By yifengyou v2026.10.11-12:21:55
SoC:   RK3588J
BDY G98: misc_init_r() entered
NCA9555: starting early init (bus=6 addr=0x20)
NCA9555: init round 1/10
NCA9555: I2C bus 6 found: i2c@fec80000
NCA9555: i2c_deblock failed or not available (ret=-2), continuing anyway
NCA9555: before init register dump:
  Input   : 0x1c 0x7f
  Output  : 0xff 0xff
  Polarity: 0x00 0x00
  Config  : 0xff 0xff  (1=input, 0=output)
NCA9555: polarity inversion cleared
NCA9555: Output Port 0 before: 0xff
NCA9555: USB power OFF (Output Port 0: 0xfe)
NCA9555: USB power ON  (Output Port 0: 0xff)
NCA9555: Output Port 1 before: 0xff
NCA9555: Output Port 1 after:  0xff  (PCIe reset HIGH)
NCA9555: Config Port 0 before: 0xff
NCA9555: Config Port 0 after:  0xfe  (GPIO 0 = output)
NCA9555: Config Port 1 before: 0xff
NCA9555: Config Port 1 after:  0x7f  (GPIO 15 = output)
NCA9555: after init register dump:
  Input   : 0x1d 0xff
  Output  : 0xff 0xff
  Polarity: 0x00 0x00
  Config  : 0xfe 0x7f  (1=input, 0=output)
NCA9555: early init complete (round 1)
BDY G98: NCA9555 init OK
Net:   
Error: ethernet@fe1c0000 No valid MAC address found.
No ethernet found.

No button labelled 'Recovery key'
Hit any key to stop autoboot: 0
EMMC: scanning
Device: mmc@fe2e0000
Manufacturer ID: ec
OEM: 0
Name: A31M8C
Bus Speed: 200000000
Mode: HS200 (200MHz)
Rd Block Len: 512
MMC version 5.1
High Capacity: Yes
Capacity: 58.2 GiB
Bus Width: 8-bit
Erase Group Size: 512 KiB
HC WP Group Size: 8 MiB
User Capacity: 58.2 GiB WRREL
Boot Capacity: 4 MiB ENH
RPMB Capacity: 4 MiB ENH
Boot area 0 is not write protected
Boot area 1 is not write protected
switch to partitions #0, OK
mmc0(part 0) is current device
Try mmc 0:1 /boot/extlinux/extlinux.conf
Try mmc 0:1 /extlinux/extlinux.conf
Try mmc 0:1 /extlinux.conf
Try mmc 0:2 /boot/extlinux/extlinux.conf
Try mmc 0:2 /extlinux/extlinux.conf
Try mmc 0:2 /extlinux.conf
Try mmc 0:3 /boot/extlinux/extlinux.conf
Try mmc 0:3 /extlinux/extlinux.conf
Try mmc 0:3 /extlinux.conf
Found extlinux.conf on mmc 0:3
Retrieving file: /extlinux.conf
Kdev U-Boot menu default 6.6
1:	6.6
2:	6.1
3:	linux-stable
Enter choice: 2
2:	6.1
Retrieving file: /6.1/Image-6.1.172-kdev
append: root=PARTUUID=614e0000-0000-4b53-8000-1d28000054a9 panic=9 rw console=ttyS2,1500000 console=tty1 cgroup_enable=cpuset cgroup_memory=1 cgroup_enable=memory net.ifnames=0 biosdevname=0 level=10 loglevel=10 selinux=0 crashkernel=384M-:128M systemd.mask=systemd-growfs@-.service rockchip.dmc_freq=528000 video=HDMI-A-1:1920x1080@60
Retrieving file: /6.1/rk3588-aiot-3588ied.dtb
## Flattened Device Tree blob at 12000000
   Booting using the fdt blob at 0x12000000
Working FDT set to 12000000
   Loading Device Tree to 00000000ecb91000, end 00000000ecbc2484 ... OK
Working FDT set to ecb91000

Starting kernel ...

[    0.000000] Booting Linux on physical CPU 0x0000000000 [0x412fd050]
[    0.000000] Linux version 6.1.172-kdev (builder@kdevbuilder) (aarch64-linux-gnu-gcc (Ubuntu 13.3.0-6ubuntu2~24.04.1) 13.3.0, GNU ld (GNU Binutils for Ubuntu) 2.42) #1 SMP PREEMPT_DYNAMIC Sat Oct 17 00:31:31 CST 2026
[    0.000000] Machine model: AIoT 3588IED
[    0.000000] efi: UEFI not found.
[    0.000000] Zone ranges:
[    0.000000]   DMA      [mem 0x0000000000200000-0x00000000ffffffff]
[    0.000000]   DMA32    empty
[    0.000000]   Normal   [mem 0x0000000100000000-0x00000002ffffffff]
[    0.000000] Movable zone start for each node
[    0.000000] Early memory node ranges
[    0.000000]   node   0: [mem 0x0000000000200000-0x00000000efffffff]
[    0.000000]   node   0: [mem 0x0000000100000000-0x00000001ffffffff]
[    0.000000]   node   0: [mem 0x00000002f0000000-0x00000002ffffffff]
[    0.000000] Initmem setup node 0 [mem 0x0000000000200000-0x00000002ffffffff]
[    0.000000] On node 0, zone DMA: 512 pages in unavailable ranges
[    0.000000] cma: Reserved 256 MiB at 0x00000000dca00000
[    0.000000] cma: Reserved 32 MiB at 0x0000000100000000
[    0.000000] psci: probing for conduit method from DT.
[    0.000000] psci: PSCIv1.1 detected in firmware.
[    0.000000] psci: Using standard PSCI v0.2 function IDs
[    0.000000] psci: MIGRATE_INFO_TYPE not supported.
[    0.000000] psci: SMC Calling Convention v1.2
[    0.000000] percpu: Embedded 29 pages/cpu s78376 r8192 d32216 u118784
[    0.000000] pcpu-alloc: s78376 r8192 d32216 u118784 alloc=29*4096
[    0.000000] pcpu-alloc: [0] 0 [0] 1 [0] 2 [0] 3 [0] 4 [0] 5 [0] 6 [0] 7 
[    0.000000] Detected VIPT I-cache on CPU0
[    0.000000] CPU features: detected: GIC system register CPU interface
[    0.000000] CPU features: detected: Virtualization Host Extensions
[    0.000000] CPU features: detected: Broken broadcast TLBI completion
[    0.000000] CPU features: detected: ARM errata 1165522, 1319367, or 1530923
[    0.000000] alternatives: applying boot alternatives
[    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: 2063880
[    0.000000] Kernel command line: root=PARTUUID=614e0000-0000-4b53-8000-1d28000054a9 panic=9 rw console=ttyS2,1500000 console=tty1 cgroup_enable=cpuset cgroup_memory=1 cgroup_enable=memory net.ifnames=0 biosdevname=0 level=10 loglevel=10 selinux=0 crashkernel=384M-:128M systemd.mask=systemd-growfs@-.service rockchip.dmc_freq=528000 video=HDMI-A-1:1920x1080@60
[    0.000000] Unknown kernel command line parameters "cgroup_enable=memory cgroup_memory=1 biosdevname=0 level=10", will be passed to user space.
[    0.000000] Dentry cache hash table entries: 1048576 (order: 11, 8388608 bytes, linear)
[    0.000000] Inode-cache hash table entries: 524288 (order: 10, 4194304 bytes, linear)
[    0.000000] mem auto-init: stack:off, heap alloc:off, heap free:off
[    0.000000] software IO TLB: area num 8.
[    0.000000] software IO TLB: mapped [mem 0x00000000d8a00000-0x00000000dca00000] (64MB)
[    0.000000] Memory: 7816132K/8386560K available (21504K kernel code, 4540K rwdata, 14604K rodata, 5824K init, 677K bss, 275516K reserved, 294912K cma-reserved)
[    0.000000] SLUB: HWalign=64, Order=0-3, MinObjects=0, CPUs=8, Nodes=1
[    0.000000] trace event string verifier disabled
[    0.000000] Dynamic Preempt: voluntary
[    0.000000] rcu: Preemptible hierarchical RCU implementation.
[    0.000000] 	Trampoline variant of Tasks RCU enabled.
[    0.000000] 	Tracing variant of Tasks RCU enabled.
[    0.000000] rcu: RCU calculated value of scheduler-enlistment delay is 30 jiffies.
[    0.000000] NR_IRQS: 64, nr_irqs: 64, preallocated irqs: 0
[    0.000000] GICv3: GIC: Using split EOI/Deactivate mode
[    0.000000] GICv3: 480 SPIs implemented
[    0.000000] GICv3: 0 Extended SPIs implemented
[    0.000000] Root IRQ handler: gic_handle_irq
[    0.000000] GICv3: GICv3 features: 16 PPIs
[    0.000000] GICv3: CPU0: found redistributor 0 region 0:0x00000000fe680000
[    0.000000] ITS [mem 0xfe640000-0xfe65ffff]
[    0.000000] ITS@0x00000000fe640000: allocated 8192 Devices @102130000 (indirect, esz 8, psz 64K, shr 0)
[    0.000000] ITS@0x00000000fe640000: allocated 32768 Interrupt Collections @102140000 (flat, esz 2, psz 64K, shr 0)
[    0.000000] ITS: using cache flushing for cmd queue
[    0.000000] ITS [mem 0xfe660000-0xfe67ffff]
[    0.000000] ITS@0x00000000fe660000: allocated 8192 Devices @102160000 (indirect, esz 8, psz 64K, shr 0)
[    0.000000] ITS@0x00000000fe660000: allocated 32768 Interrupt Collections @102170000 (flat, esz 2, psz 64K, shr 0)
[    0.000000] ITS: using cache flushing for cmd queue
[    0.000000] GICv3: using LPI property table @0x0000000102180000
[    0.000000] GIC: using cache flushing for LPI property table
[    0.000000] GICv3: CPU0: using allocated LPI pending table @0x0000000102190000
[    0.000000] rcu: srcu_init: Setting srcu_struct sizes based on contention.
[    0.000000] arch_timer: cp15 timer(s) running at 24.00MHz (phys).
[    0.000000] clocksource: arch_sys_counter: mask: 0xffffffffffffff max_cycles: 0x588fe9dc0, max_idle_ns: 440795202592 ns
[    0.000001] sched_clock: 56 bits at 24MHz, resolution 41ns, wraps every 4398046511097ns
[    0.002426] Console: colour dummy device 80x25
[    0.003162] printk: console [tty1] enabled
[    0.003221] Calibrating delay loop (skipped), value calculated using timer frequency.. 48.00 BogoMIPS (lpj=80000)
[    0.003251] pid_max: default: 32768 minimum: 301
[    0.003522] LSM: Security Framework initializing
[    0.003737] AppArmor: AppArmor initialized
[    0.003947] Mount-cache hash table entries: 16384 (order: 5, 131072 bytes, linear)
[    0.003994] Mountpoint-cache hash table entries: 16384 (order: 5, 131072 bytes, linear)
[    0.005655] Early cacheinfo failed, ret = -22
[    0.006537] cblist_init_generic: Setting adjustable number of callback queues.
[    0.006563] cblist_init_generic: Setting shift to 3 and lim to 1.
[    0.006682] cblist_init_generic: Setting adjustable number of callback queues.
[    0.006704] cblist_init_generic: Setting shift to 3 and lim to 1.
[    0.006960] rcu: Hierarchical SRCU implementation.
[    0.006979] rcu: 	Max phase no-delay instances is 1000.
[    0.008594] Platform MSI: msi-controller@fe640000 domain created
[    0.008633] Platform MSI: msi-controller@fe660000 domain created
[    0.009048] PCI/MSI: /interrupt-controller@fe600000/msi-controller@fe640000 domain created
[    0.009096] PCI/MSI: /interrupt-controller@fe600000/msi-controller@fe660000 domain created
[    0.009273] EFI services will not be available.
[    0.009821] smp: Bringing up secondary CPUs ...
[    0.010473] Detected VIPT I-cache on CPU1
[    0.010590] GICv3: CPU1: found redistributor 100 region 0:0x00000000fe6a0000
[    0.010615] GICv3: CPU1: using allocated LPI pending table @0x00000001021a0000
[    0.010663] CPU1: Booted secondary processor 0x0000000100 [0x412fd050]
[    0.011407] Detected VIPT I-cache on CPU2
[    0.011520] GICv3: CPU2: found redistributor 200 region 0:0x00000000fe6c0000
[    0.011545] GICv3: CPU2: using allocated LPI pending table @0x00000001021b0000
[    0.011590] CPU2: Booted secondary processor 0x0000000200 [0x412fd050]
[    0.012255] Detected VIPT I-cache on CPU3
[    0.012365] GICv3: CPU3: found redistributor 300 region 0:0x00000000fe6e0000
[    0.012389] GICv3: CPU3: using allocated LPI pending table @0x00000001021c0000
[    0.012430] CPU3: Booted secondary processor 0x0000000300 [0x412fd050]
[    0.013153] CPU features: detected: Spectre-v4
[    0.013159] CPU features: detected: Spectre-BHB
[    0.013163] CPU features: detected: SSBS not fully self-synchronizing
[    0.013166] Detected PIPT I-cache on CPU4
[    0.013230] GICv3: CPU4: found redistributor 400 region 0:0x00000000fe700000
[    0.013244] GICv3: CPU4: using allocated LPI pending table @0x00000001021d0000
[    0.013271] CPU4: Booted secondary processor 0x0000000400 [0x414fd0b0]
[    0.013948] Detected PIPT I-cache on CPU5
[    0.014023] GICv3: CPU5: found redistributor 500 region 0:0x00000000fe720000
[    0.014037] GICv3: CPU5: using allocated LPI pending table @0x00000001021e0000
[    0.014064] CPU5: Booted secondary processor 0x0000000500 [0x414fd0b0]
[    0.014700] Detected PIPT I-cache on CPU6
[    0.014774] GICv3: CPU6: found redistributor 600 region 0:0x00000000fe740000
[    0.014787] GICv3: CPU6: using allocated LPI pending table @0x00000001021f0000
[    0.014814] CPU6: Booted secondary processor 0x0000000600 [0x414fd0b0]
[    0.015499] Detected PIPT I-cache on CPU7
[    0.015575] GICv3: CPU7: found redistributor 700 region 0:0x00000000fe760000
[    0.015588] GICv3: CPU7: using allocated LPI pending table @0x0000000102200000
[    0.015615] CPU7: Booted secondary processor 0x0000000700 [0x414fd0b0]
[    0.015679] smp: Brought up 1 node, 8 CPUs
[    0.016009] SMP: Total of 8 processors activated.
[    0.016025] CPU features: detected: 32-bit EL0 Support
[    0.016038] CPU features: detected: Data cache clean to the PoU not required for I/D coherence
[    0.016057] CPU features: detected: Common not Private translations
[    0.016071] CPU features: detected: CRC32 instructions
[    0.016085] CPU features: detected: Data cache clean to Point of Persistence
[    0.016102] CPU features: detected: RCpc load-acquire (LDAPR)
[    0.016116] CPU features: detected: LSE atomic instructions
[    0.016129] CPU features: detected: Privileged Access Never
[    0.016142] CPU features: detected: RAS Extension Support
[    0.016158] CPU features: detected: Speculative Store Bypassing Safe (SSBS)
[    0.016262] CPU: All CPU(s) started at EL2
[    0.016276] alternatives: applying system-wide alternatives
[    0.024029] devtmpfs: initialized
[    0.038951] Registered cp15_barrier emulation handler
[    0.038966] Registered setend emulation handler
[    0.039042] clocksource: jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 6370867519511994 ns
[    0.039056] futex hash table entries: 2048 (order: 5, 131072 bytes, linear)
[    0.042118] prandom: seed boundary self test passed
[    0.043176] prandom: 100 self tests passed
[    0.043182] pinctrl core: initialized pinctrl subsystem
[    0.043434] DMI not present or invalid.
[    0.043854] NET: Registered PF_NETLINK/PF_ROUTE protocol family
[    0.044523] DMA: preallocated 1024 KiB GFP_KERNEL pool for atomic allocations
[    0.044822] DMA: preallocated 1024 KiB GFP_KERNEL|GFP_DMA pool for atomic allocations
[    0.045129] DMA: preallocated 1024 KiB GFP_KERNEL|GFP_DMA32 pool for atomic allocations
[    0.045189] audit: initializing netlink subsys (disabled)
[    0.045341] audit: type=2000 audit(0.039:1): state=initialized audit_enabled=0 res=1
[    0.046165] thermal_sys: Registered thermal governor 'fair_share'
[    0.046169] thermal_sys: Registered thermal governor 'bang_bang'
[    0.046178] thermal_sys: Registered thermal governor 'step_wise'
[    0.046183] thermal_sys: Registered thermal governor 'user_space'
[    0.046188] thermal_sys: Registered thermal governor 'power_allocator'
[    0.046309] cpuidle: using governor ladder
[    0.046454] hw-breakpoint: found 6 breakpoint and 4 watchpoint registers.
[    0.046579] ASID allocator initialised with 65536 entries
[    0.046645] Serial: AMBA PL011 UART driver
[    0.048414] sdei: SDEIv1.0 (0x0) detected in firmware.
[    0.090698] rockchip_hwspinlock fe5a0000.hwspinlock: hwlock user id 1, locks 64, maximum user 15
[    0.092626] /i2c@fec80000/usb-typec@22/connector: Fixed dependency cycle(s) with /usbdrd3_0/usb@fc000000
[    0.093142] /i2c@fec80000/usb-typec@22/connector: Fixed dependency cycle(s) with /phy@fed80000
[    0.093193] /phy@fed80000: Fixed dependency cycle(s) with /i2c@fec80000/usb-typec@22/connector
[    0.096541] rockchip-gpio fd8a0000.gpio: probed /pinctrl/gpio@fd8a0000
[    0.096856] rockchip-gpio fec20000.gpio: probed /pinctrl/gpio@fec20000
[    0.097097] rockchip-gpio fec30000.gpio: probed /pinctrl/gpio@fec30000
[    0.097363] rockchip-gpio fec40000.gpio: probed /pinctrl/gpio@fec40000
[    0.097628] rockchip-gpio fec50000.gpio: probed /pinctrl/gpio@fec50000
[    0.097671] rockchip-pinctrl pinctrl: probed pinctrl
[    0.098949] /vop@fdd90000: Fixed dependency cycle(s) with /hdmi@fdea0000
[    0.098982] /hdmi@fdea0000: Fixed dependency cycle(s) with /vop@fdd90000
[    0.107068] HugeTLB: registered 1.00 GiB page size, pre-allocated 0 pages
[    0.107079] HugeTLB: 0 KiB vmemmap can be freed for a 1.00 GiB page
[    0.107086] HugeTLB: registered 32.0 MiB page size, pre-allocated 0 pages
[    0.107092] HugeTLB: 0 KiB vmemmap can be freed for a 32.0 MiB page
[    0.107098] HugeTLB: registered 2.00 MiB page size, pre-allocated 0 pages
[    0.107104] HugeTLB: 0 KiB vmemmap can be freed for a 2.00 MiB page
[    0.107109] HugeTLB: registered 64.0 KiB page size, pre-allocated 0 pages
[    0.107115] HugeTLB: 0 KiB vmemmap can be freed for a 64.0 KiB page
[    0.107983] cryptd: max_cpu_qlen set to 1000
[    0.164584] raid6: neonx8   gen()  4315 MB/s
[    0.221330] raid6: neonx4   gen()  4283 MB/s
[    0.278067] raid6: neonx2   gen()  3619 MB/s
[    0.334808] raid6: neonx1   gen()  2862 MB/s
[    0.391548] raid6: int64x8  gen()  1907 MB/s
[    0.448283] raid6: int64x4  gen()  2007 MB/s
[    0.505027] raid6: int64x2  gen()  1676 MB/s
[    0.561763] raid6: int64x1  gen()  1381 MB/s
[    0.561768] raid6: using algorithm neonx8 gen() 4315 MB/s
[    0.618501] raid6: .... xor() 3264 MB/s, rmw enabled
[    0.618507] raid6: using neon recovery algorithm
[    0.618589] ACPI: Interpreter disabled.
[    0.620503] iommu: Default domain type: Translated 
[    0.620512] iommu: DMA domain TLB invalidation policy: strict mode 
[    0.620776] SCSI subsystem initialized
[    0.620913] libata version 3.00 loaded.
[    0.621004] usbcore: registered new interface driver usbfs
[    0.621030] usbcore: registered new interface driver hub
[    0.621046] usbcore: registered new device driver usb
[    0.621241] mc: Linux media interface: v0.10
[    0.621268] videodev: Linux video capture interface: v2.00
[    0.621301] pps_core: LinuxPPS API ver. 1 registered
[    0.621306] pps_core: Software ver. 5.3.6 - Copyright 2005-2007 Rodolfo Giometti <giometti@linux.it>
[    0.621317] PTP clock support registered
[    0.621337] EDAC MC: Ver: 3.0.0
[    0.621705] ARM FF-A: FFA_VERSION returned not supported
[    0.621798] arm-scmi firmware:scmi: Enabled polling mode TX channel - prot_id:16
[    0.621871] arm-scmi firmware:scmi: SCMI Notifications - Core Enabled.
[    0.621907] arm-scmi firmware:scmi: SCMI Protocol v2.0 'rockchip:' Firmware version 0x0
[    0.623258] Advanced Linux Sound Architecture Driver Initialized.
[    0.623769] vgaarb: loaded
[    0.625030] rockchip-cpuinfo cpuinfo: SoC		: 35881000
[    0.625039] rockchip-cpuinfo cpuinfo: Serial		: 5cee6dafefff2a5c
[    0.625444] clocksource: Switched to clocksource arch_sys_counter
[    0.625662] VFS: Disk quotas dquot_6.6.0
[    0.625699] VFS: Dquot-cache hash table entries: 512 (order 0, 4096 bytes)
[    0.626013] AppArmor: AppArmor Filesystem Enabled
[    0.626042] pnp: PnP ACPI: disabled
[    0.631180] NET: Registered PF_INET protocol family
[    0.631381] IP idents hash table entries: 131072 (order: 8, 1048576 bytes, linear)
[    0.635869] tcp_listen_portaddr_hash hash table entries: 4096 (order: 4, 65536 bytes, linear)
[    0.635945] Table-perturb hash table entries: 65536 (order: 6, 262144 bytes, linear)
[    0.635985] TCP established hash table entries: 65536 (order: 7, 524288 bytes, linear)
[    0.636488] TCP bind hash table entries: 65536 (order: 9, 2097152 bytes, linear)
[    0.638365] TCP: Hash tables configured (established 65536 bind 65536)
[    0.638514] MPTCP token hash table entries: 8192 (order: 6, 196608 bytes, linear)
[    0.638608] UDP hash table entries: 4096 (order: 5, 131072 bytes, linear)
[    0.638801] UDP-Lite hash table entries: 4096 (order: 5, 131072 bytes, linear)
[    0.639079] NET: Registered PF_UNIX/PF_LOCAL protocol family
[    0.639396] RPC: Registered named UNIX socket transport module.
[    0.639404] RPC: Registered udp transport module.
[    0.639409] RPC: Registered tcp transport module.
[    0.639414] RPC: Registered tcp NFSv4.1 backchannel transport module.
[    0.639761] NET: Registered PF_XDP protocol family
[    0.639892] PCI: CLS 0 bytes, default 64
[    0.640397] rockchip-thermal fec00000.tsadc: Missing rockchip,grf property
[    0.641353] rockchip-thermal fec00000.tsadc: tsadc is probed successfully!
[    0.642198] hw perfevents: enabled with armv8_pmuv3 PMU driver, 7 counters available
[    0.642887] kvm [1]: IPA Size Limit: 40 bits
[    0.642904] kvm [1]: GICv3: no GICV resource entry
[    0.642910] kvm [1]: disabling GICv2 emulation
[    0.642935] kvm [1]: GIC system register CPU interface enabled
[    0.643057] kvm [1]: vgic interrupt IRQ9
[    0.643206] kvm [1]: VHE mode initialized successfully
[    0.644069] Initialise system trusted keyrings
[    0.644203] workingset: timestamp_bits=46 max_order=21 bucket_order=0
[    0.646972] zbud: loaded
[    0.647893] squashfs: version 4.0 (2009/01/31) Phillip Lougher
[    0.648574] fuse: init (API version 7.38)
[    0.648859] SGI XFS with ACLs, security attributes, quota, no debug enabled
[    0.680819] NET: Registered PF_ALG protocol family
[    0.680848] xor: measuring software checksum speed
[    0.681461]    8regs           :  5392 MB/sec
[    0.682081]    32regs          :  5356 MB/sec
[    0.682535]    arm64_neon      :  7318 MB/sec
[    0.682541] xor: using function: arm64_neon (7318 MB/sec)
[    0.682549] Key type asymmetric registered
[    0.682555] Asymmetric key parser 'x509' registered
[    0.682587] Block layer SCSI generic (bsg) driver version 0.4 loaded (major 240)
[    0.682708] io scheduler mq-deadline registered
[    0.682714] io scheduler kyber registered
[    0.686055] rockchip-csi2-dphy-hw fedc0000.csi2-dphy0-hw: csi2 dphy hw probe successfully!
[    0.686166] rockchip-csi2-dphy-hw fedc8000.csi2-dphy1-hw: csi2 dphy hw probe successfully!
[    0.701926] dw-pcie fe190000.pcie: invalid resource
[    0.701938] dw-pcie fe190000.pcie: Failed to initialize host
[    0.701945] dw-pcie: probe of fe190000.pcie failed with error -22
[    0.702181] dw-pcie fe170000.pcie: invalid resource
[    0.702189] dw-pcie fe170000.pcie: Failed to initialize host
[    0.702195] dw-pcie: probe of fe170000.pcie failed with error -22
[    0.702796] rk-pcie fe190000.pcie: invalid prsnt-gpios property in node
[    0.702916] rk-pcie fe190000.pcie: no vpcie3v3 regulator found
[    0.703030] rk-pcie fe170000.pcie: invalid prsnt-gpios property in node
[    0.703185] rk-pcie fe170000.pcie: no vpcie3v3 regulator found
[    0.703693] rk-pcie fe190000.pcie: host bridge /pcie@fe190000 ranges:
[    0.703742] rk-pcie fe190000.pcie:       IO 0x00f4100000..0x00f41fffff -> 0x00f4100000
[    0.703780] rk-pcie fe190000.pcie:      MEM 0x00f4200000..0x00f4ffffff -> 0x00f4200000
[    0.703813] rk-pcie fe190000.pcie:      MEM 0x0a00000000..0x0a3fffffff -> 0x0a00000000
[    0.703871] rk-pcie fe170000.pcie: host bridge /pcie@fe170000 ranges:
[    0.703888] rk-pcie fe190000.pcie: iATU unroll: enabled
[    0.703917] rk-pcie fe190000.pcie: iATU regions: 8 ob, 8 ib, align 64K, limit 8G
[    0.703919] rk-pcie fe170000.pcie:       IO 0x00f2100000..0x00f21fffff -> 0x00f2100000
[    0.703968] rk-pcie fe170000.pcie:      MEM 0x00f2200000..0x00f2ffffff -> 0x00f2200000
[    0.703999] rk-pcie fe170000.pcie:      MEM 0x0980000000..0x09bfffffff -> 0x0980000000
[    0.704087] rk-pcie fe170000.pcie: iATU unroll: enabled
[    0.704106] rk-pcie fe170000.pcie: iATU regions: 8 ob, 8 ib, align 64K, limit 8G
[    0.717278] dma-pl330 fea10000.dma-controller: Loaded driver for PL330 DMAC-241330
[    0.717293] dma-pl330 fea10000.dma-controller: 	DBUFF-128x8bytes Num_Chans-8 Num_Peri-32 Num_Events-16
[    0.718053] dma-pl330 fea30000.dma-controller: Loaded driver for PL330 DMAC-241330
[    0.718064] dma-pl330 fea30000.dma-controller: 	DBUFF-128x8bytes Num_Chans-8 Num_Peri-32 Num_Events-16
[    0.718822] dma-pl330 fed10000.dma-controller: Loaded driver for PL330 DMAC-241330
[    0.718833] dma-pl330 fed10000.dma-controller: 	DBUFF-128x8bytes Num_Chans-8 Num_Peri-32 Num_Events-16
[    0.720365] rockchip-system-monitor rockchip-system-monitor: system monitor probe
[    0.720781] arm-scmi firmware:scmi: Failed. SCMI protocol 23 not active.
[    0.722331] Serial: 8250/16550 driver, 5 ports, IRQ sharing disabled
[    0.722863] feb50000.serial: ttyS2 at MMIO 0xfeb50000 (irq = 44, base_baud = 1500000) is a 16550A
[    0.880457] printk: console [ttyS2] enabled
[    0.881197] dw-apb-uart: probe of febc0000.serial failed with error -22
[    0.882363] Serial: AMBA driver
[    0.884911] rockchip-vop2 fdd90000.vop: Adding to iommu group 2
[    0.891590] [drm] all windows should be assigned, full plane mask: Cluster0 | Cluster1 | Esmart0 | Esmart1 | Cluster2 | Cluster3 | Esmart2 | Esmart3[0x3cf], current plane mask: [0x0]
[    0.893022] [drm] use default plane mask
[    0.893393] rockchip-vop2 fdd90000.vop: [drm:vop2_bind] vp0 assign plane mask: Cluster0 | Esmart0 | Cluster2 | Esmart2[0x145], primary plane phy id: Esmart0[2]
[    0.894651] rockchip-vop2 fdd90000.vop: [drm:vop2_bind] vp1 assign plane mask: Cluster1 | Esmart1 | Cluster3 | Esmart3[0x28a], primary plane phy id: Esmart1[3]
[    0.895904] rockchip-vop2 fdd90000.vop: [drm:vop2_bind] vp2 assign plane mask: [0x0], primary plane phy id: INVALID[-1]
[    0.896853] rockchip-vop2 fdd90000.vop: [drm:vop2_bind] vp3 assign plane mask: [0x0], primary plane phy id: INVALID[-1]
[    0.897915] [drm] failed to init overlay plane Cluster0-win1
[    0.898445] [drm] failed to init overlay plane Cluster1-win1
[    0.898981] [drm] failed to init overlay plane Cluster2-win1
[    0.899507] [drm] failed to init overlay plane Cluster3-win1
[    0.906292] rk-pcie fe170000.pcie: PCIe Linking... LTSSM is 0x3
[    0.910155] rockchip-vop2 fdd90000.vop: bin=0
[    0.910750] rockchip-vop2 fdd90000.vop: idc=35
[    0.911147] rockchip-vop2 fdd90000.vop: idc-volt-sel=1
[    0.911632] rockchip-vop2 fdd90000.vop: error -ENODEV: _opp_set_regulators: no regulator (vop) found
[    0.912456] rockchip-vop2 fdd90000.vop: failed to set opp config
[    0.912983] rockchip-vop2 fdd90000.vop: failed to init opp info
[    0.913502] rockchip-vop2 fdd90000.vop: Unsupported VOP aclk dvfs
[    0.914051] rockchip-drm display-subsystem: bound fdd90000.vop (ops 0xffff8000096715a8)
[    0.915231] dw_hdmi_qp-rockchip fdea0000.hdmi: registered ddc I2C bus driver
[    0.916369] rockchip-drm display-subsystem: bound fdea0000.hdmi (ops 0xffff80000968f3c8)
[    0.917780] [drm] Initialized rockchip 4.0.0 20140818 for display-subsystem on minor 0
[    0.918483] rockchip-drm display-subsystem: failed to parse loader memory
[    0.962121] rk-pcie fe190000.pcie: PCIe Link up, LTSSM is 0x30011
[    0.962681] rk-pcie fe190000.pcie: PCIe Gen.1 x1 link up
[    0.963645] rk-pcie fe190000.pcie: PCI host bridge to bus 0004:40
[    0.964203] pci_bus 0004:40: root bus resource [bus 40-4f]
[    0.964704] pci_bus 0004:40: root bus resource [io  0x0000-0xfffff] (bus address [0xf4100000-0xf41fffff])
[    0.965578] pci_bus 0004:40: root bus resource [mem 0xf4200000-0xf4ffffff]
[    0.966198] pci_bus 0004:40: root bus resource [mem 0xa00000000-0xa3fffffff pref]
[    0.966904] pci 0004:40:00.0: [1d87:3588] type 01 class 0x060400
[    0.967470] pci 0004:40:00.0: ROM [mem 0x00000000-0x0000ffff pref]
[    0.968094] pci 0004:40:00.0: supports D1 D2
[    0.968189] rockchip-drm display-subsystem: [drm] fb0: rockchipdrmfb frame buffer device
[    0.968482] pci 0004:40:00.0: PME# supported from D0 D1 D3hot
[    0.969751] rockchip-vop2 fdd90000.vop: [drm:vop2_crtc_atomic_enable] Update mode to 1920x1080p60, type: 11(if:HDMI1, flag:0x0) for vp0 dclk: 148500000
[    0.971109] rockchip-vop2 fdd90000.vop: [drm:vop2_crtc_atomic_enable] dclk_out0 div: 0 dclk_core0 div: 2
[    0.972386] rockchip-drm display-subsystem: [drm] run display error_event monitor
[    0.972583] rockchip-vop2 fdd90000.vop: [drm:vop2_crtc_atomic_enable] set dclk_vop0 to 148500000, get 148500000
[    0.973965] dw_hdmi_qp-rockchip fdea0000.hdmi: final tmdsclk = 148500000
[    0.978025] dw_hdmi_qp-rockchip fdea0000.hdmi: don't use dsc mode
[    0.978562] dw_hdmi_qp-rockchip fdea0000.hdmi: dw hdmi qp use tmds mode
[    0.979548] pci 0004:40:00.0: Primary bus is hard wired to 0
[    0.979569] rockchip-vop2 fdd90000.vop: [drm] vp0 post enable for intf:1000
[    0.980687] pci 0004:40:00.0: bridge configuration invalid ([bus 01-ff]), reconfiguring
[    0.981607] pci 0004:41:00.0: [1f0a:6801] type 00 class 0x020000
[    0.982127] rk-pcie fe170000.pcie: PCIe Link up, LTSSM is 0x30011
[    0.982271] pci 0004:41:00.0: BAR 0 [mem 0x00000000-0x00003fff 64bit]
[    0.982705] rk-pcie fe170000.pcie: PCIe Gen.1 x1 link up
[    0.982816] pci 0004:41:00.0: BAR 4: initial BAR value 0x00000000 invalid
[    0.983477] rk-pcie fe170000.pcie: PCI host bridge to bus 0002:20
[    0.983765] pci 0004:41:00.0: BAR 4 [io  size 0x0100]
[    0.983784] pci_bus 0002:20: root bus resource [bus 20-2f]
[    0.983796] pci_bus 0002:20: root bus resource [io  0x100000-0x1fffff] (bus address [0xf2100000-0xf21fffff])
[    0.984854] pci 0004:41:00.0: supports D1
[    0.984928] pci_bus 0002:20: root bus resource [mem 0xf2200000-0xf2ffffff]
[    0.984947] pci 0004:41:00.0: PME# supported from D0 D1 D3hot D3cold
[    0.984958] pci_bus 0002:20: root bus resource [mem 0x980000000-0x9bfffffff pref]
[    0.985164] dw-hdmi-qp-hdcp dw-hdmi-qp-hdcp.1.auto: dw_hdcp_qp_hdcp_probe success
[    0.985466] pci 0002:20:00.0: [1d87:3588] type 01 class 0x060400
[    0.990153] pci 0002:20:00.0: ROM [mem 0x00000000-0x0000ffff pref]
[    0.990968] pci 0002:20:00.0: supports D1 D2
[    0.991363] pci 0002:20:00.0: PME# supported from D0 D1 D3hot
[    0.992566] brd: module loaded
[    0.995530] pci_bus 0004:41: busn_res: [bus 41-4f] end is updated to 41
[    0.996125] pci 0004:40:00.0: bridge window [mem 0xf4200000-0xf42fffff]: assigned
[    0.996789] pci 0004:40:00.0: ROM [mem 0xf4300000-0xf430ffff pref]: assigned
[    0.997408] pci 0004:40:00.0: bridge window [io  0x1000-0x1fff]: assigned
[    0.998028] pci 0004:41:00.0: BAR 0 [mem 0xf4200000-0xf4203fff 64bit]: assigned
[    0.998715] pci 0004:41:00.0: BAR 4 [io  0x1000-0x10ff]: assigned
[    0.999268] pci 0004:40:00.0: PCI bridge to [bus 41]
[    0.999706] pci 0004:40:00.0:   bridge window [io  0x1000-0x1fff]
[    1.000243] pci 0004:40:00.0:   bridge window [mem 0xf4200000-0xf42fffff]
[    1.006540] pci 0002:20:00.0: Primary bus is hard wired to 0
[    1.007066] pci 0002:20:00.0: bridge configuration invalid ([bus 01-ff]), reconfiguring
[    1.007167] pcieport 0004:40:00.0: PME: Signaling with IRQ 64
[    1.008007] pci 0002:21:00.0: [14e4:449d] type 00 class 0x028000
[    1.008950] pci 0002:21:00.0: BAR 0 [mem 0x00000000-0x0000ffff 64bit]
[    1.009592] pci 0002:21:00.0: BAR 2 [mem 0x00000000-0x003fffff 64bit]
[    1.010467] loop: module loaded
[    1.010791] pci 0002:21:00.0: supports D1 D2
[    1.010972] zram: Added device: zram0
[    1.011184] pci 0002:21:00.0: PME# supported from D0 D1 D2 D3hot D3cold
[    1.014847] rockchip-spi feb20000.spi: no high_speed pinctrl state
[    1.015748] /spi@feb20000/pmic@0: Fixed dependency cycle(s) with /spi@feb20000/pmic@0/regulators/DCDC_REG7
[    1.017158] rk806 spi2.0: chip id: RK806,ver:0x2, 0x1
[    1.017716] rk806 spi2.0: ON: 0x40 OFF:0x0
[    1.018184] rk806 spi2.0: shutown_by_pwrctrln missing!
[    1.018638] rk806 spi2.0: shutdown-sequence missing!
[    1.019083] rk806 spi2.0: vb-shutdown-sequence missing!
[    1.019542] rk806 spi2.0: dvs-suspend-control-by missing!
[    1.025521] pci_bus 0002:21: busn_res: [bus 21-2f] end is updated to 21
[    1.026146] pci 0002:20:00.0: bridge window [mem 0xf2200000-0xf27fffff]: assigned
[    1.026823] pci 0002:20:00.0: ROM [mem 0xf2800000-0xf280ffff pref]: assigned
[    1.027463] pci 0002:21:00.0: BAR 2 [mem 0xf2400000-0xf27fffff 64bit]: assigned
[    1.027493] avdd_0v75_s0: Bringing 750000uV into 837500-837500uV
[    1.028167] pci 0002:21:00.0: BAR 0 [mem 0xf2200000-0xf220ffff 64bit]: assigned
[    1.029368] pci 0002:20:00.0: PCI bridge to [bus 21]
[    1.029823] pci 0002:20:00.0:   bridge window [mem 0xf2200000-0xf27fffff]
[    1.032368] rk806 spi2.0: no power-off pinctrl state
[    1.032808] rk806 spi2.0: no sleep-setting state
[    1.033214] rk806 spi2.0: no reset-setting pinctrl state
[    1.033417] pcieport 0002:20:00.0: PME: Signaling with IRQ 78
[    1.033680] rk806 spi2.0: no dvs-setting pinctrl state
[    1.034117] rockchip-spi feb20000.spi: probed, poll=0, rsd=0, cs-inactive=0, ready=0
[    1.038019] rk_gmac-dwmac fe1c0000.ethernet: supply phy not found, using dummy regulator
[    1.038804] rk_gmac-dwmac fe1c0000.ethernet: clock input or output? (output).
[    1.039432] rk_gmac-dwmac fe1c0000.ethernet: TX delay(0x43).
[    1.039930] rk_gmac-dwmac fe1c0000.ethernet: Can not read property: rx_delay.
[    1.040555] rk_gmac-dwmac fe1c0000.ethernet: set rx_delay to 0xffffffff
[    1.041138] rk_gmac-dwmac fe1c0000.ethernet: integrated PHY? (no).
[    1.041916] rk_gmac-dwmac fe1c0000.ethernet: init for RGMII_RXID
[    1.042608] rk_gmac-dwmac fe1c0000.ethernet: User ID: 0x30, Synopsys ID: 0x51
[    1.043237] rk_gmac-dwmac fe1c0000.ethernet: 	DWMAC4/5
[    1.043690] rk_gmac-dwmac fe1c0000.ethernet: DMA HW capability register supported
[    1.044346] rk_gmac-dwmac fe1c0000.ethernet: RX Checksum Offload Engine supported
[    1.045002] rk_gmac-dwmac fe1c0000.ethernet: TX Checksum insertion supported
[    1.045625] rk_gmac-dwmac fe1c0000.ethernet: Wake-Up On Lan supported
[    1.046190] rk_gmac-dwmac fe1c0000.ethernet: TSO supported
[    1.046672] rk_gmac-dwmac fe1c0000.ethernet: Enable RX Mitigation via HW Watchdog Timer
[    1.047372] rk_gmac-dwmac fe1c0000.ethernet: Enabled L3L4 Flow TC (entries=2)
[    1.047998] rk_gmac-dwmac fe1c0000.ethernet: Enabled RFS Flow TC (entries=10)
[    1.048622] rk_gmac-dwmac fe1c0000.ethernet: TSO feature enabled
[    1.049152] rk_gmac-dwmac fe1c0000.ethernet: Using 32/32 bits DMA host/device width
[    1.191331] /i2c@fec80000/usb-typec@22/connector: Fixed dependency cycle(s) with /usbdrd3_0/usb@fc000000
[    1.192241] /usbdrd3_0/usb@fc000000: Fixed dependency cycle(s) with /i2c@fec80000/usb-typec@22/connector
[    1.193532] rockchip-usbdp-phy fed80000.phy: Requested PHY is disabled
[    1.199321] rockchip-usbdp-phy fed90000.phy: Requested PHY is disabled
[    1.205619] rockchip-usbdp-phy fed90000.phy: Requested PHY is disabled
[    1.206199] phy phy-fd5d4000.syscon:usb2-phy@4000.3: illegal mode
[    1.206736] xhci-hcd xhci-hcd.6.auto: xHCI Host Controller
[    1.207075] ehci-platform fc800000.usb: EHCI Host Controller
[    1.207082] ohci-platform fc840000.usb: Generic Platform OHCI controller
[    1.207199] ohci-platform fc840000.usb: new USB bus registered, assigned bus number 1
[    1.207253] ohci-platform fc840000.usb: irq 85, io mem 0xfc840000
[    1.207311] xhci-hcd xhci-hcd.6.auto: new USB bus registered, assigned bus number 2
[    1.207343] ehci-platform fc880000.usb: EHCI Host Controller
[    1.207360] ohci-platform fc8c0000.usb: Generic Platform OHCI controller
[    1.207395] xhci-hcd xhci-hcd.6.auto: hcc params 0x0220fe64 hci version 0x110 quirks 0x0004008002010010
[    1.207419] xhci-hcd xhci-hcd.6.auto: irq 82, io mem 0xfc400000
[    1.207519] xhci-hcd xhci-hcd.6.auto: xHCI Host Controller
[    1.207557] ehci-platform fc880000.usb: new USB bus registered, assigned bus number 3
[    1.207565] ohci-platform fc8c0000.usb: new USB bus registered, assigned bus number 4
[    1.207579] xhci-hcd xhci-hcd.6.auto: new USB bus registered, assigned bus number 5
[    1.207585] xhci-hcd xhci-hcd.6.auto: Host supports USB 3.0 SuperSpeed
[    1.207646] usb usb2: New USB device found, idVendor=1d6b, idProduct=0002, bcdDevice= 6.01
[    1.207651] usb usb2: New USB device strings: Mfr=3, Product=2, SerialNumber=1
[    1.207656] usb usb2: Product: xHCI Host Controller
[    1.207659] usb usb2: Manufacturer: Linux 6.1.172-kdev xhci-hcd
[    1.207662] usb usb2: SerialNumber: xhci-hcd.6.auto
[    1.207680] ehci-platform fc880000.usb: irq 84, io mem 0xfc880000
[    1.207704] ohci-platform fc8c0000.usb: irq 86, io mem 0xfc8c0000
[    1.207854] hub 2-0:1.0: USB hub found
[    1.219828] hub 2-0:1.0: 1 port detected
[    1.220312] usb usb5: We don't know the algorithms for LPM for this host, disabling LPM.
[    1.221056] usb usb5: New USB device found, idVendor=1d6b, idProduct=0003, bcdDevice= 6.01
[    1.221782] usb usb5: New USB device strings: Mfr=3, Product=2, SerialNumber=1
[    1.222122] ehci-platform fc880000.usb: USB 2.0 started, EHCI 1.00
[    1.222420] usb usb5: Product: xHCI Host Controller
[    1.223396] usb usb5: Manufacturer: Linux 6.1.172-kdev xhci-hcd
[    1.223915] usb usb5: SerialNumber: xhci-hcd.6.auto
[    1.224507] hub 5-0:1.0: USB hub found
[    1.224848] hub 5-0:1.0: 1 port detected
[    1.225351] usbcore: registered new interface driver cdc_wdm
[    1.225388] ehci-platform fc800000.usb: new USB bus registered, assigned bus number 6
[    1.225637] usb usb3: New USB device found, idVendor=1d6b, idProduct=0002, bcdDevice= 6.01
[    1.225643] usb usb3: New USB device strings: Mfr=3, Product=2, SerialNumber=1
[    1.225648] usb usb3: Product: EHCI Host Controller
[    1.225651] usb usb3: Manufacturer: Linux 6.1.172-kdev ehci_hcd
[    1.225655] usb usb3: SerialNumber: fc880000.usb
[    1.225858] hub 3-0:1.0: USB hub found
[    1.225882] hub 3-0:1.0: 1 port detected
[    1.225995] usbcore: registered new interface driver uas
[    1.226041] usbcore: registered new interface driver usb-storage
[    1.226071] usbcore: registered new interface driver usbserial_generic
[    1.226079] usbserial: USB Serial support registered for generic
[    1.226091] usbcore: registered new interface driver ch341
[    1.226098] usbserial: USB Serial support registered for ch341-uart
[    1.226110] usbcore: registered new interface driver cp210x
[    1.226123] usbserial: USB Serial support registered for cp210x
[    1.226140] usbcore: registered new interface driver ftdi_sio
[    1.226147] usbserial: USB Serial support registered for FTDI USB Serial Device
[    1.226183] usbcore: registered new interface driver pl2303
[    1.226190] usbserial: USB Serial support registered for pl2303
[    1.226605] ehci-platform fc800000.usb: irq 83, io mem 0xfc800000
[    1.227141] SPI driver rmi4_spi has no spi_device_id for syna,rmi4-spi
[    1.227488] i2c_dev: i2c /dev entries driver
[    1.239690] pca953x 6-0020: supply vcc not found, using dummy regulator
[    1.240314] pca953x 6-0020: using no AI
[    1.242114] ehci-platform fc800000.usb: USB 2.0 started, EHCI 1.00
[    1.242733] usb usb6: New USB device found, idVendor=1d6b, idProduct=0002, bcdDevice= 6.01
[    1.243056] OF: graph: no port node found in /i2c@fec80000/usb-typec@22
[    1.243460] usb usb6: New USB device strings: Mfr=3, Product=2, SerialNumber=1
[    1.244672] usb usb6: Product: EHCI Host Controller
[    1.245101] usb usb6: Manufacturer: Linux 6.1.172-kdev ehci_hcd
[    1.246043] usb usb6: SerialNumber: fc800000.usb
[    1.246634] hub 6-0:1.0: USB hub found
[    1.246982] hub 6-0:1.0: 1 port detected
[    1.257986] rtc-hym8563 6-0051: rtc information is valid
[    1.258447] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.261037] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.262999] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.266772] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.269526] usb usb1: New USB device found, idVendor=1d6b, idProduct=0001, bcdDevice= 6.01
[    1.270256] usb usb1: New USB device strings: Mfr=3, Product=2, SerialNumber=1
[    1.270363] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.270890] usb usb1: Product: Generic Platform OHCI controller
[    1.270894] usb usb1: Manufacturer: Linux 6.1.172-kdev ohci_hcd
[    1.271722] rtc-hym8563 6-0051: registered as rtc0
[    1.271895] usb usb1: SerialNumber: fc840000.usb
[    1.272012] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.272617] hub 1-0:1.0: USB hub found
[    1.274078] hub 1-0:1.0: 1 port detected
[    1.274528] rtc-hym8563 6-0051: setting system clock to 2026-10-16T16:34:31 UTC (1792168471)
[    1.274666] usb usb4: New USB device found, idVendor=1d6b, idProduct=0001, bcdDevice= 6.01
[    1.274976] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.276095] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.276508] usb usb4: New USB device strings: Mfr=3, Product=2, SerialNumber=1
[    1.277625] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.277636] usb usb4: Product: Generic Platform OHCI controller
[    1.278452] arm-scmi firmware:scmi: Failed. SCMI protocol 21 not active.
[    1.278649] usb usb4: Manufacturer: Linux 6.1.172-kdev ohci_hcd
[    1.278657] usb usb4: SerialNumber: fc8c0000.usb
[    1.278750] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.279864] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.280559] hub 4-0:1.0: USB hub found
[    1.281522] hub 4-0:1.0: 1 port detected
[    1.281655] device-mapper: ioctl: 4.47.0-ioctl (2022-07-28) initialised: dm-devel@redhat.com
[    1.281774] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.282901] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.284210] cpu cpu0: bin=2
[    1.284639] cpu cpu0: idc=11
[    1.284707] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.286477] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.286740] cpu cpu0: pvtm=1399
[    1.287342] cpu cpu0: pvtm-volt-sel=2
[    1.288052] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.288346] cpu cpu4: bin=2
[    1.288970] cpu cpu4: idc=9
[    1.289237] cpu cpu4: Failed to get reg
[    1.289603] cpu cpu4: failed to set opp config
[    1.289643] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.289996] cpu cpu4: failed to init opp info
[    1.289998] Failed to initialize dvfs info cpu4
[    1.291106] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.291262] arm-scmi firmware:scmi: Failed. SCMI protocol 19 not active.
[    1.292366] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.293392] sdhci: Secure Digital Host Controller Interface driver
[    1.293938] sdhci: Copyright(c) Pierre Ossman
[    1.293961] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.294626] Synopsys Designware Multimedia Card Interface Driver
[    1.295836] dwmmc_rockchip fe2d0000.mmc: No normal pinctrl state
[    1.295995] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.296324] sdhci-pltfm: SDHCI platform and OF driver helper
[    1.296366] dwmmc_rockchip fe2d0000.mmc: No idle pinctrl state
[    1.296459] dwmmc_rockchip fe2d0000.mmc: IDMAC supports 32-bit address mode.
[    1.297985] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.298100] mmc0: CQHCI version 5.10
[    1.298504] dwmmc_rockchip fe2d0000.mmc: Using internal DMA controller.
[    1.299885] dwmmc_rockchip fe2d0000.mmc: Version ID is 270a
[    1.300390] dwmmc_rockchip fe2d0000.mmc: DW MMC controller at irq 94,32 bit host data width,256 deep fifo
[    1.300516] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.301278] mmc_host mmc2: card is non-removable.
[    1.302138] dwmmc_rockchip fe2d0000.mmc: drop HS400 support since no 8-bit bus
[    1.303386] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.305209] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.306905] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.309061] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.310752] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.311431] ledtrig-cpu: registered to indicate activity on CPUs
[    1.312378] arm-scmi firmware:scmi: Failed. SCMI protocol 17 not active.
[    1.312501] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.312993] arm-scmi firmware:scmi: Failed. SCMI protocol 18 not active.
[    1.314110] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.314188] SMCCC: SOC_ID: ARCH_SOC_ID not implemented, skipping ....
[    1.315443] mmc_host mmc2: Bus speed (slot 0) = 400000Hz (slot req 400000Hz, actual 400000HZ div = 0)
[    1.315769] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.315976] hid: raw HID events driver (C) Jiri Kosina
[    1.316027] usbcore: registered new interface driver usbhid
[    1.316029] usbhid: USB HID core driver
[    1.319239] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.319768] Driver 'optee' was unable to register with bus_type 'arm_ffa' because the bus was not initialized.
[    1.320835] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.322501] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.322886] rockchip-i2s-tdm fe470000.i2s: Register PCM for TRCM mode
[    1.323947] NET: Registered PF_LLC protocol family
[    1.324162] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.326028] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.327688] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.329763] mmc0: SDHCI controller on fe2e0000.mmc [fe2e0000.mmc] using ADMA
[    1.330279] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.332007] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.333780] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.335473] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.337595] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.339257] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.340920] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.342771] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.344592] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.346319] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.347979] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.350393] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.352054] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.353752] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.355413] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.357084] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.358744] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.360885] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.362548] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.364235] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.365911] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.367570] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.369245] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.370904] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.372580] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.374243] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.375925] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.376049] Initializing XFRM netlink socket
[    1.377103] NET: Registered PF_INET6 protocol family
[    1.377583] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.379257] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.381022] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.382735] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.383546] Segment Routing with IPv6
[    1.383875] RPL Segment Routing with IPv6
[    1.384252] In-situ OAM (IOAM) with IPv6
[    1.384543] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.384682] NET: Registered PF_PACKET protocol family
[    1.385539] NET: Registered PF_KEY protocol family
[    1.386254] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.386440] [BT_RFKILL]: Enter rfkill_rk_init
[    1.387134] [WLAN_RFKILL]: Enter rfkill_wlan_init
[    1.387847] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.387870] [WLAN_RFKILL]: Enter rfkill_wlan_probe
[    1.388759] [WLAN_RFKILL]: can't find rockchip,grf property
[    1.389256] [WLAN_RFKILL]: wlan_platdata_parse_dt: wifi_chip_type = ap6275p
[    1.389576] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.389866] [WLAN_RFKILL]: wlan_platdata_parse_dt: enable wifi power control.
[    1.389869] [WLAN_RFKILL]: wlan_platdata_parse_dt: wifi power controled by gpio.
[    1.391110] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.391631] [WLAN_RFKILL]: wlan_platdata_parse_dt: The ref_wifi_clk not found !
[    1.392745] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.392748] [WLAN_RFKILL]: rfkill_wlan_probe: init gpio
[    1.392751] [WLAN_RFKILL]: rfkill_set_wifi_bt_power: 1
[    1.392755] [WLAN_RFKILL]: Exit rfkill_wlan_probe
[    1.393932] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.394647] [BT_RFKILL]: can't get dts bt_port prop
[    1.395078] [BT_RFKILL]: bluetooth_platdata_parse_dt: get property: uart_rts_gpios = 148.
[    1.396294] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.396315] [BT_RFKILL]: bt shut off power
[    1.396320] [BT_RFKILL]: bt_default device registered.
[    1.397661] input: bt-powerkey as /devices/platform/wireless-bluetooth/input/input0
[    1.397957] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.399441] registered taskstats version 1
[    1.399826] Loading compiled-in X.509 certificates
[    1.400000] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.401837] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.403392] zswap: loaded using pool zstd/zbud
[    1.403519] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.404423] Key type .fscrypt registered
[    1.404775] Key type fscrypt-provisioning registered
[    1.405469] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.405775] Btrfs loaded, crc32c=crc32c-generic, zoned=yes, fsverity=no
[    1.406627] AppArmor: AppArmor sha1 policy hashing enabled
[    1.407131] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.408827] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.410510] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.412172] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.413857] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.415550] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.417632] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.419295] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.420957] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.422568] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.424225] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.425901] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.427586] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.429271] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.430894] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.431888] mmc_host mmc2: Bus speed (slot 0) = 50000000Hz (slot req 52000000Hz, actual 50000000HZ div = 0)
[    1.432616] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.433256] mmc_host mmc2: Bus speed (slot 0) = 150000000Hz (slot req 150000000Hz, actual 150000000HZ div = 0)
[    1.434440] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.436159] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.437966] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.439686] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.441399] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.443193] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.444824] rga3 fdb60000.rga: Adding to iommu group 1
[    1.444988] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.445986] rga3 fdb60000.rga: probe successfully, irq = 49, hw_version:3.0.76831
[    1.447165] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.447563] rga2 fdb80000.rga: probe successfully, irq = 98, hw_version:3.2.63318
[    1.448470] rga: IOMMU binding successfully, default mapping core[0x1]
[    1.449048] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.450128] rga: Module initialized. v1.3.13
[    1.450504] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.452305] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.454360] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.456173] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.458031] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.459821] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.461702] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.463591] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.465489] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.467377] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.469181] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.471073] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.472865] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.474761] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.476482] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.477613] dw-pcie fe150000.pcie: invalid resource
[    1.478061] dw-pcie fe150000.pcie: Failed to initialize host
[    1.478279] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.478591] dw-pcie: probe of fe150000.pcie failed with error -22
[    1.480347] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.481314] mali fb000000.gpu: Kernel DDK version g29p1-11eac0
[    1.481324] dwmmc_rockchip fe2d0000.mmc: Successfully tuned phase to 135
[    1.481587] input: adc-keys-0 as /devices/platform/adc-keys-0/input/input1
[    1.481912] mali fb000000.gpu: GPU metrics tracepoint support enabled
[    1.482132] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.482930] mmc2: new HS200 MMC card at address 0001
[    1.483399] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.483795] dwmmc_rockchip fe2c0000.mmc: No normal pinctrl state
[    1.483980] mali fb000000.gpu: bin=2
[    1.484188] mali fb000000.gpu: idc=16
[    1.484427] mmcblk2: mmc2:0001 A3V014 233 GiB 
[    1.484529] dwmmc_rockchip fe2c0000.mmc: No idle pinctrl state
[    1.484570] debugfs: Directory 'fb000000.gpu-mali' with parent 'vdd_gpu_s0' already present!
[    1.485054] dwmmc_rockchip fe2c0000.mmc: IDMAC supports 32-bit address mode.
[    1.485278] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.485589] usb 3-1: new high-speed USB device number 2 using ehci-platform
[    1.485873] dwmmc_rockchip fe2c0000.mmc: Using internal DMA controller.
[    1.486771] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.486996] dwmmc_rockchip fe2c0000.mmc: Version ID is 270a
[    1.487129] mali fb000000.gpu: pvtm=841
[    1.487551] dwmmc_rockchip fe2c0000.mmc: DW MMC controller at irq 103,32 bit host data width,256 deep fifo
[    1.487887] mali fb000000.gpu: pvtm-volt-sel=2
[    1.488803] rk-pcie fe150000.pcie: invalid prsnt-gpios property in node
[    1.489099] debugfs: Directory 'fb000000.gpu-mali' with parent 'vdd_gpu_s0' already present!
[    1.489321] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.490336]  mmcblk2: p1 p2 p3
[    1.490606] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.491731] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.492324] mali fb000000.gpu: avs=0
[    1.492726] mmcblk2boot0: mmc2:0001 A3V014 4.00 MiB 
[    1.493769] mmcblk2boot1: mmc2:0001 A3V014 4.00 MiB 
[    1.494042] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.494532] W : [File] : drivers/gpu/arm/valhall/platform/rk/mali_kbase_config_rk.c; [Line] : 143; [Func] : kbase_platform_rk_init(); power-off-delay-ms not available.
[    1.495165] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.495872] mmcblk2rpmb: mmc2:0001 A3V014 16.0 MiB, chardev (235:0)
[    1.496377] mali fb000000.gpu: Register LUT 000a0800 initialized for GPU arch 0x000a0806
[    1.497478] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.497973] mali fb000000.gpu: r0p0 status 5 not found in HW issues table;
[    1.498967] mmc_host mmc1: Bus speed (slot 0) = 400000Hz (slot req 400000Hz, actual 400000HZ div = 0)
[    1.500455] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.501035] mali fb000000.gpu: falling back to closest match: r0p0 status 0
[    1.502212] usb 6-1: new high-speed USB device number 2 using ehci-platform
[    1.502216] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.502935] mali fb000000.gpu: Execution proceeding normally with fallback match
[    1.503393] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.503424] mali fb000000.gpu: GPU identified as 0x7 arch 10.8.6 r0p0 status 0
[    1.504607] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.504787] mali fb000000.gpu: CSF_GPU_RESET_TIMEOUT is capped from 20666ms to 4500ms
[    1.506321] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.506931] mali fb000000.gpu: CSF_GPU_SUSPEND_TIMEOUT is capped from 10333ms to 4500ms
[    1.508110] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.508579] mali fb000000.gpu: KBASE_PRFCNT_ACTIVE_TIMEOUT is capped from 40000ms to 4500ms
[    1.509758] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.509784] mali fb000000.gpu: KBASE_AS_INACTIVE_TIMEOUT is capped from 40000ms to 4500ms
[    1.510356] rk-pcie fe150000.pcie: can't get current limit.
[    1.510537] mali fb000000.gpu: CSF_FIRMWARE_STOP_TIMEOUT is capped from 40000ms to 4500ms
[    1.510982] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.511081] rk-pcie fe150000.pcie: host bridge /pcie@fe150000 ranges:
[    1.511094] mali fb000000.gpu: No priority control manager is configured
[    1.511102] mali fb000000.gpu: Large page support was disabled at compile-time!
[    1.511366] mali fb000000.gpu: No memory group manager is configured
[    1.511378] mali fb000000.gpu: Protected memory allocator not available
[    1.512129] mali fb000000.gpu: EM: OPP:600000 is inefficient
[    1.512274] rk-pcie fe150000.pcie:       IO 0x00f0100000..0x00f01fffff -> 0x00f0100000
[    1.512965] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.512979] mali fb000000.gpu: EM: OPP:400000 is inefficient
[    1.513457] rk-pcie fe150000.pcie:      MEM 0x00f0200000..0x00f0ffffff -> 0x00f0200000
[    1.513466] mali fb000000.gpu: EM: OPP:300000 is inefficient
[    1.514038] rk-pcie fe150000.pcie:      MEM 0x0900000000..0x093fffffff -> 0x0900000000
[    1.514096] rk-pcie fe150000.pcie: iATU unroll: enabled
[    1.514141] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.514801] mali fb000000.gpu: EM: created perf domain
[    1.515250] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.515263] rk-pcie fe150000.pcie: iATU regions: 8 ob, 8 ib, align 64K, limit 8G
[    1.516082] mali fb000000.gpu: l=15000 h=85000 hyst=5000 l_limit=0 h_limit=800000000 h_table=0
[    1.516372] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.518025] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.521154] mali fb000000.gpu: * MALI kbase_mmap_min_addr compiled to CONFIG_LSM_MMAP_MIN_ADDR, no runtime update possible! *
[    1.522712] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.522868] mali fb000000.gpu: Probed as mali0
[    1.524616] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.528716] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.530393] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.531988] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.533658] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.535315] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.536990] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.538598] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.540236] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.541913] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.543538] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.543893] input: rockchip-es8388 Headphones as /devices/platform/sound/sound/card0/input2
[    1.545194] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.546512] input: gpio-keys as /devices/platform/gpio-keys/input/input3
[    1.546936] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.547915] cfg80211: Loading compiled-in X.509 certificates for regulatory database
[    1.548785] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.550444] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.550459] cfg80211: Loaded X.509 cert 'sforshee: 00b28ddf47aef9cea7'
[    1.551631] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.552083] cfg80211: Loaded X.509 cert 'wens: 61c038651aabdcf94bd0ac7ff06c7248db18c600'
[    1.552919] platform regulatory.0: Direct firmware load for regulatory.db failed with error -2
[    1.553308] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.553676] cfg80211: failed to load regulatory.db
[    1.553722] clk: Disabling unused clocks
[    1.555330] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.555592] ALSA device list:
[    1.556088]   #0: rockchip-es8388
[    1.556887] /dev/root: Can't open blockdev
[    1.557011] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.557259] VFS: Cannot open root device "PARTUUID=614e0000-0000-4b53-8000-1d28000054a9" or unknown-block(0,0): error -6
[    1.558439] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.558689] Please append a correct "root=" boot option; here are the available partitions:
[    1.558694] 0100            4096 ram0 
[    1.560225] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.560333]  (driver?)
[    1.560337] 0101            4096 ram1 
[    1.561351]  (driver?)
[    1.561448] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.561682] 0102            4096 ram2 
[    1.562376]  (driver?)
[    1.562859] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.562914] 0103            4096 ram3 
[    1.562917]  (driver?)
[    1.562947] b300       244277248 mmcblk2 
[    1.563957]  driver: mmcblk
[    1.564119] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.564310]   b301          378880 mmcblk2p1 358031f2-1533-45af-8e3d-628ef519549a
[    1.565039] 
[    1.565424] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.565697]   b302        28932096 mmcblk2p2 b1006e32-2acc-3f4a-bbe6-f6fa8023d78b
[    1.565700] 
[    1.565702]   b303       214916096 mmcblk2p3 70faa3b1-4491-c942-91b8-252c1c03c4c9
[    1.565705] 
[    1.565708] b320            4096 mmcblk2boot0 
[    1.565711]  (driver?)
[    1.566886] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.566975] b340            4096 mmcblk2boot1 
[    1.566977]  (driver?)
[    1.568158] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.568299] Kernel panic - not syncing: VFS: Unable to mount root fs on unknown-block(0,0)
[    1.568303] CPU: 4 PID: 1 Comm: swapper/0 Not tainted 6.1.172-kdev #1
[    1.568309] Hardware name: AIoT 3588IED (DT)
[    1.568311] Call trace:
[    1.569481] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.570656] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.571766] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.572951] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.573804]  dump_backtrace+0xd8/0x130
[    1.574123] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.574616]  show_stack+0x18/0x30
[    1.574915]  dump_stack_lvl+0x64/0x80
[    1.575244]  dump_stack+0x18/0x34
[    1.575299] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.576430]  panic+0x180/0x350
[    1.576704]  mount_block_root+0x188/0x238
[    1.577052] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.577531]  mount_root+0x180/0x1a0
[    1.577842]  prepare_namespace+0x12c/0x16c
[    1.578206]  kernel_init_freeable+0x284/0x2b0
[    1.578229] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.579062]  kernel_init+0x24/0x134
[    1.579376]  ret_from_fork+0x10/0x20
[    1.579422] rtc-hym8563 6-0051: hym8563_irq: irq stat 0x0
[    1.580165] SMP: stopping secondary CPUs
[    1.580512] CPU2: stopping
[    1.580517] CPU0: stopping
[    1.580520] CPU: 2 PID: 25 Comm: kworker/2:0 Not tainted 6.1.172-kdev #1
[    1.580529] Hardware name: AIoT 3588IED (DT)
[    1.580533] Workqueue: events set_brightness_delayed
[    1.580549] Call trace:
[    1.580552]  dump_backtrace+0xd8/0x130
[    1.580566] CPU1: stopping
[    1.580566]  show_stack+0x18/0x30
[    1.580570] CPU5: stopping
[    1.580570] CPU3: stopping
[    1.580577]  dump_stack_lvl+0x64/0x80
[    1.580582] CPU7: stopping
[    1.580586] CPU6: stopping
[    1.580588]  dump_stack+0x18/0x34
[    1.580598]  local_cpu_stop+0x94/0xa0
[    1.580607]  ipi_handler+0x2c8/0x2e0
[    1.580617]  handle_percpu_devid_irq+0x88/0x230
[    1.580626]  handle_irq_desc+0x40/0x60
[    1.580636]  generic_handle_domain_irq+0x1c/0x30
[    1.580646]  gic_handle_irq+0x128/0x260
[    1.580657]  call_on_irq_stack+0x30/0x48
[    1.580666]  do_interrupt_handler+0x80/0x84
[    1.580675]  el1_interrupt+0x48/0xe4
[    1.580685]  el1h_64_irq_handler+0x18/0x2c
[    1.580695]  el1h_64_irq+0x74/0x78
[    1.580702]  rk3x_i2c_fill_transmit_buf+0x4c/0xe4
[    1.580713]  rk3x_i2c_xfer_common.isra.0+0x1c0/0x800
[    1.580722]  rk3x_i2c_xfer+0x18/0x24
[    1.580731]  __i2c_transfer+0x1c4/0x7d4
[    1.580742]  i2c_transfer+0x98/0xfc
[    1.580752]  i2c_transfer_buffer_flags+0x60/0xa0
[    1.580762]  regmap_i2c_write+0x20/0x60
[    1.580775]  _regmap_raw_write_impl+0x5d0/0x860
[    1.580784]  _regmap_bus_raw_write+0x60/0x80
[    1.580793]  _regmap_write+0x58/0x160
[    1.580801]  _regmap_update_bits+0x104/0x120
[    1.580811]  regmap_update_bits_base+0x64/0xa0
[    1.580820]  pca953x_gpio_set_value+0x74/0x9c
[    1.580830]  gpiod_set_raw_value_commit+0x48/0x18c
[    1.580839]  gpiod_set_value_nocheck+0x30/0x70
[    1.580847]  gpiod_set_value_cansleep+0x2c/0x94
[    1.580855]  gpio_led_set_blocking+0x5c/0x90
[    1.580865]  set_brightness_delayed+0x98/0xe0
[    1.580873]  process_one_work+0x1d4/0x460
[    1.580883]  worker_thread+0x254/0x43c
[    1.580890]  kthread+0x104/0x10c
[    1.580898]  ret_from_fork+0x10/0x20
[    1.580907] CPU: 3 PID: 0 Comm: swapper/3 Not tainted 6.1.172-kdev #1
[    1.580916] Hardware name: AIoT 3588IED (DT)
[    1.580919] Call trace:
[    1.580922]  dump_backtrace+0xd8/0x130
[    1.580936]  show_stack+0x18/0x30
[    1.580946]  dump_stack_lvl+0x64/0x80
[    1.580956]  dump_stack+0x18/0x34
[    1.580965]  local_cpu_stop+0x94/0xa0
[    1.580975]  ipi_handler+0x2c8/0x2e0
[    1.580984]  handle_percpu_devid_irq+0x88/0x230
[    1.580993]  handle_irq_desc+0x40/0x60
[    1.581002]  generic_handle_domain_irq+0x1c/0x30
[    1.581012]  gic_handle_irq+0x128/0x260
[    1.581023]  call_on_irq_stack+0x30/0x48
[    1.581031]  do_interrupt_handler+0x80/0x84
[    1.581041]  el1_interrupt+0x48/0xe4
[    1.581051]  el1h_64_irq_handler+0x18/0x2c
[    1.581061]  el1h_64_irq+0x74/0x78
[    1.581067]  cpuidle_enter_state+0xbc/0x500
[    1.581076]  cpuidle_enter+0x40/0x60
[    1.581082]  do_idle+0x174/0x220
[    1.581093]  cpu_startup_entry+0x38/0x40
[    1.581103]  secondary_start_kernel+0x138/0x19c
[    1.581113]  __secondary_switched+0xb0/0xb4
[    1.581121] CPU: 5 PID: 0 Comm: swapper/5 Not tainted 6.1.172-kdev #1
[    1.581127] Hardware name: AIoT 3588IED (DT)
[    1.581129] Call trace:
[    1.581130]  dump_backtrace+0xd8/0x130
[    1.581141]  show_stack+0x18/0x30
[    1.581149]  dump_stack_lvl+0x64/0x80
[    1.581156]  dump_stack+0x18/0x34
[    1.581161]  local_cpu_stop+0x94/0xa0
[    1.581168]  ipi_handler+0x2c8/0x2e0
[    1.581174]  handle_percpu_devid_irq+0x88/0x230
[    1.581179]  handle_irq_desc+0x40/0x60
[    1.581186]  generic_handle_domain_irq+0x1c/0x30
[    1.581192]  gic_handle_irq+0x128/0x260
[    1.581200]  call_on_irq_stack+0x30/0x48
[    1.581205]  do_interrupt_handler+0x80/0x84
[    1.581211]  el1_interrupt+0x48/0xe4
[    1.581217]  el1h_64_irq_handler+0x18/0x2c
[    1.581224]  el1h_64_irq+0x74/0x78
[    1.581227]  cpuidle_enter_state+0xbc/0x500
[    1.581231]  cpuidle_enter+0x40/0x60
[    1.581235]  do_idle+0x174/0x220
[    1.581242]  cpu_startup_entry+0x34/0x40
[    1.581249]  secondary_start_kernel+0x138/0x19c
[    1.581256]  __secondary_switched+0xb0/0xb4
[    1.581261] CPU: 6 PID: 0 Comm: swapper/6 Not tainted 6.1.172-kdev #1
[    1.581267] Hardware name: AIoT 3588IED (DT)
[    1.581269] Call trace:
[    1.581270]  dump_backtrace+0xd8/0x130
[    1.581281]  show_stack+0x18/0x30
[    1.581289]  dump_stack_lvl+0x64/0x80
[    1.581296]  dump_stack+0x18/0x34
[    1.581301]  local_cpu_stop+0x94/0xa0
[    1.581308]  ipi_handler+0x2c8/0x2e0
[    1.581313]  handle_percpu_devid_irq+0x88/0x230
[    1.581319]  handle_irq_desc+0x40/0x60
[    1.581325]  generic_handle_domain_irq+0x1c/0x30
[    1.581332]  gic_handle_irq+0x128/0x260
[    1.581339]  call_on_irq_stack+0x30/0x48
[    1.581344]  do_interrupt_handler+0x80/0x84
[    1.581350]  el1_interrupt+0x48/0xe4
[    1.581356]  el1h_64_irq_handler+0x18/0x2c
[    1.581363]  el1h_64_irq+0x74/0x78
[    1.581367]  cpuidle_enter_state+0xbc/0x500
[    1.581371]  cpuidle_enter+0x40/0x60
[    1.581374]  do_idle+0x174/0x220
[    1.581381]  cpu_startup_entry+0x34/0x40
[    1.581388]  secondary_start_kernel+0x138/0x19c
[    1.581395]  __secondary_switched+0xb0/0xb4
[    1.581400] CPU: 1 PID: 0 Comm: swapper/1 Not tainted 6.1.172-kdev #1
[    1.581409] Hardware name: AIoT 3588IED (DT)
[    1.581413] Call trace:
[    1.581415]  dump_backtrace+0xd8/0x130
[    1.581429]  show_stack+0x18/0x30
[    1.581440]  dump_stack_lvl+0x64/0x80
[    1.581450]  dump_stack+0x18/0x34
[    1.581459]  local_cpu_stop+0x94/0xa0
[    1.581468]  ipi_handler+0x2c8/0x2e0
[    1.581477]  handle_percpu_devid_irq+0x88/0x230
[    1.581485]  handle_irq_desc+0x40/0x60
[    1.581495]  generic_handle_domain_irq+0x1c/0x30
[    1.581505]  gic_handle_irq+0x128/0x260
[    1.581515]  call_on_irq_stack+0x30/0x48
[    1.581524]  do_interrupt_handler+0x80/0x84
[    1.581533]  el1_interrupt+0x48/0xe4
[    1.581543]  el1h_64_irq_handler+0x18/0x2c
[    1.581553]  el1h_64_irq+0x74/0x78
[    1.581560]  cpuidle_enter_state+0xbc/0x500
[    1.581567]  cpuidle_enter+0x40/0x60
[    1.581573]  do_idle+0x174/0x220
[    1.581583]  cpu_startup_entry+0x38/0x40
[    1.581593]  secondary_start_kernel+0x138/0x19c
[    1.581603]  __secondary_switched+0xb0/0xb4
[    1.581611] CPU: 7 PID: 0 Comm: swapper/7 Not tainted 6.1.172-kdev #1
[    1.581617] Hardware name: AIoT 3588IED (DT)
[    1.581619] Call trace:
[    1.581620]  dump_backtrace+0xd8/0x130
[    1.581631]  show_stack+0x18/0x30
[    1.581639]  dump_stack_lvl+0x64/0x80
[    1.581645]  dump_stack+0x18/0x34
[    1.581651]  local_cpu_stop+0x94/0xa0
[    1.581657]  ipi_handler+0x2c8/0x2e0
[    1.581663]  handle_percpu_devid_irq+0x88/0x230
[    1.581668]  handle_irq_desc+0x40/0x60
[    1.581675]  generic_handle_domain_irq+0x1c/0x30
[    1.581681]  gic_handle_irq+0x128/0x260
[    1.581688]  call_on_irq_stack+0x30/0x48
[    1.581694]  do_interrupt_handler+0x80/0x84
[    1.581700]  el1_interrupt+0x48/0xe4
[    1.581706]  el1h_64_irq_handler+0x18/0x2c
[    1.581713]  el1h_64_irq+0x74/0x78
[    1.581716]  cpuidle_enter_state+0xbc/0x500
[    1.581720]  cpuidle_enter+0x40/0x60
[    1.581724]  do_idle+0x174/0x220
[    1.581731]  cpu_startup_entry+0x38/0x40
[    1.581738]  secondary_start_kernel+0x138/0x19c
[    1.581744]  __secondary_switched+0xb0/0xb4
[    1.581749] CPU: 0 PID: 125 Comm: irq/91-hym8563 Not tainted 6.1.172-kdev #1
[    1.581759] Hardware name: AIoT 3588IED (DT)
[    1.581763] Call trace:
[    1.581765]  dump_backtrace+0xd8/0x130
[    1.581779]  show_stack+0x18/0x30
[    1.581790]  dump_stack_lvl+0x64/0x80
[    1.581800]  dump_stack+0x18/0x34
[    1.581809]  local_cpu_stop+0x94/0xa0
[    1.581819]  ipi_handler+0x2c8/0x2e0
[    1.581828]  handle_percpu_devid_irq+0x88/0x230
[    1.581836]  handle_irq_desc+0x40/0x60
[    1.581846]  generic_handle_domain_irq+0x1c/0x30
[    1.581856]  gic_handle_irq+0x128/0x260
[    1.581866]  call_on_irq_stack+0x30/0x48
[    1.581875]  do_interrupt_handler+0x80/0x84
[    1.581884]  el1_interrupt+0x48/0xe4
[    1.581893]  el1h_64_irq_handler+0x18/0x2c
[    1.581904]  el1h_64_irq+0x74/0x78
[    1.581910]  _raw_spin_unlock_irq+0x10/0x60
[    1.581919]  __rt_mutex_slowlock_locked.constprop.0+0xe0/0x250
[    1.581928]  rt_mutex_lock+0x84/0xa0
[    1.581936]  i2c_adapter_lock_bus+0x14/0x20
[    1.581947]  i2c_smbus_xfer+0xa4/0x130
[    1.581958]  i2c_smbus_read_byte_data+0x40/0x80
[    1.581969]  hym8563_irq+0x30/0xf4
[    1.581977]  irq_thread_fn+0x2c/0xb0
[    1.581987]  irq_thread+0x160/0x250
[    1.581997]  kthread+0x104/0x10c
[    1.582004]  ret_from_fork+0x10/0x20
[    1.582015] CRU REGS:
[    1.649475] LPLL         0x58040: 00000110 00002082 00000000 00000000 00000002 000007e0 00004000 00000000
[    1.650319] B0PLL        0x50000: 00000110 00000082 00000000 00000000 00000002 000007e0 00009c00 00000000
[    1.651161] B1PLL        0x52020: 00000110 00000082 00000000 00000000 00000002 000007e0 00009c00 00000000
[    1.652003] GPLL         0x001c0: 000000c6 00000042 00000000 00000000 00000000 00000000 00009400 00000000
[    1.652844] CPLL         0x001a0: 000000fa 00000042 00000000 00000000 00000000 00000000 00009c00 00000000
[    1.653685] V0PLL        0x00160: 000000c6 00002042 00000000 00000000 00000000 00000000 00004000 00000000
[    1.654525] AUPLL        0x00180: 00000106 00000082 ffff24dd 00000000 00000000 00000000 00009c00 00000000
[    1.655366] PPLL         0x08200: 00000226 00000083 00000000 00000000 00000000 00000000 0000b400 00000000
[    1.656212] DSUCRU_SEL   0x58300: 0000b0c0 00001083 00000843 00000063 00000665 0000403f 00002040 0000e040
[    1.657052] DSUCRU_GATE  0x58800: 00000000 00000000 00000063 00000000 00000000 00000000 00000000 00000000
[    1.657892] BIG0CRU_SEL  0x50300: 00000080 00005f80 00000001 00000000 00000000 00000000 00000000 00000000
[    1.658734] BIG0CRU_GATE 0x50800: 00003400 00000001 00000000 00000000 00000000 00000000 00000000 00000000
[    1.659576] BIG1CRU_SEL  0x52300: 00000080 00005f80 00000001 00000000 00000000 00000000 00000000 00000000
[    1.660416] BIG1CRU_GATE 0x52800: 00003400 00000001 00000000 00000000 00000000 00000000 00000000 00000000
[    1.661258] CRU_SEL      0x00300: 00000bbd 00000169 00000925 000000a1 00000881 00000881 00000820 00000020
[    1.662099] CRU_SEL      0x00320: 00000881 00000881 00000820 00000020 00000421 00000000 000030ff 00000000
[    1.662940] CRU_SEL      0x00340: 00000421 00000000 000030ff 00000000 00000000 00000000 00000000 0000bb9d
[    1.663781] CRU_SEL      0x00360: 00000000 00000000 00000000 0000bb9d 000000bb 00000200 00000000 00000000
[    1.664620] CRU_SEL      0x00380: 000000bb 00000200 00000000 00000000 00000000 00000000 00000000 00000000
[    1.665461] CRU_SEL      0x003a0: 00000000 00000000 00000000 00000000 00000210 00010020 00000085 03355460
[    1.666301] CRU_SEL      0x003c0: 00000210 00010020 00000085 03355460 00000013 03355460 0000000f 03355460
[    1.667140] CRU_SEL      0x003e0: 00000013 03355460 0000000f 03355460 0000000f 03355460 00000006 03355460
[    1.667979] CRU_SEL      0x00400: 0000000f 03355460 00000006 03355460 00000092 00000000 00000023 000002cb
[    1.668819] CRU_SEL      0x00420: 00000092 00000000 00000023 000002cb 000045cb 0000030b 001403de 00000006
[    1.669660] CRU_SEL      0x00440: 000045cb 0000030b 001403de 00000006 001403de 00000006 001403de 00000006
[    1.670499] CRU_SEL      0x00460: 001403de 00000006 001403de 00000006 001403de 00000006 001403de 00000006
[    1.671339] CRU_SEL      0x00480: 001403de 00000006 001403de 00000006 001403de 00000006 001403de 00000006
[    1.672179] CRU_SEL      0x004a0: 001403de 00000006 001403de 00000006 001403de 00000006 001403de 0000a002
[    1.673020] CRU_SEL      0x004c0: 001403de 00000006 001403de 0000a002 0000020a 00000041 000003ff 0000003f
[    1.673861] CRU_SEL      0x004e0: 0000020a 00000041 000003ff 0000003f 00000000 0000003f 00000000 0000c021
[    1.674700] CRU_SEL      0x00500: 00000000 0000003f 00000000 0000c021 00000000 00000000 00000000 00000000
[    1.675540] CRU_SEL      0x00520: 00000000 00000000 00000000 00000000 00000000 00007c84 00001010 00000000
[    1.676379] CRU_SEL      0x00540: 00000000 00007c84 00001010 00000000 00000000 0000bf90 00002005 00000000
[    1.677220] CRU_SEL      0x00560: 00000000 0000bf90 00002005 00000000 00000288 0000070e 00009d9d 00008b9d
[    1.678061] CRU_SEL      0x00580: 00000288 0000070e 00009d9d 00008b9d 0000049d 00000000 00000000 00000000
[    1.678902] CRU_SEL      0x005a0: 0000049d 00000000 00000000 00000000 00000000 00008100 00001801 00000001
[    1.679743] CRU_SEL      0x005c0: 00000000 00008100 00001801 00000001 00000000 00000300 000000e0 00000000
[    1.680584] CRU_GATE     0x00800: 00000900 00000140 00008150 00004000 00000008 00003e78 00000000 0000ff02
[    1.681425] CRU_GATE     0x00820: 00000008 00003e78 00000000 0000ff02 0000c01f 000000ff 0000dfe0 00003fdf
[    1.682264] CRU_GATE     0x00840: 0000c01f 000000ff 0000dfe0 00003fdf 0000fff4 0000fffe 0000deff 00002920
[    1.683105] CRU_GATE     0x00860: 0000fff4 0000fffe 0000deff 00002920 0000bfff 000001ea 00003600 00000000
[    1.683946] CRU_GATE     0x00880: 0000bfff 000001ea 00003600 00000000 0000ea07 000000a0 00000263 0000ea07
[    1.684787] CRU_GATE     0x008a0: 0000ea07 000000a0 00000263 0000ea07 000000a0 00000263 000001ff 00000005
[    1.685628] CRU_GATE     0x008c0: 000000a0 00000263 000001ff 00000005 00000005 0000dfd7 0000016a 00000e00
[    1.686467] CRU_GATE     0x008e0: 00000005 0000dfd7 0000016a 00000e00 00004408 0000a529 00000c14 000007c0
[    1.687308] CRU_GATE     0x00900: 00004408 0000a529 00000c14 000007c0 00000000 00001ff7 000083e0 00000002
[    1.688148] CRU_GATE     0x00920: 00000000 00001ff7 000083e0 00000002 000003ff 000001ff 00000000 00000000
[    1.688987] PMUCRU_SEL   0x30300: 000000b7 00000400 00000420 00000080 001403de 00000006 03355460 00000007
[    1.689829] PMUCRU_SEL   0x30320: 001403de 00000006 03355460 00000007 03355460 0000000b 00000000 00000000
[    1.690669] PMUCRU_SEL   0x30340: 03355460 0000000b 00000000 00000000 00000000 00000000 00000000 00000000
[    1.691510] PMUCRU_GATE  0x30800: 00000009 00004fc0 0000fffe 00000001 00000800 00000040 00000000 00000000
[    1.692353] PMU:
[    1.692516] pwr       0x014c: 0000fffe 00000415 00000000 00000000
[    1.693054] status    0x0180: 0415fffe 00000000 00000000 00000000
[    1.693591] req       0x010c: 00008100 0000000a 00000000 000a9ffe
[    1.694128] idle      0x0120: 000a9ffe 00000000 0000ffff 0000ffff
[    1.694665] ack       0x0118: 000a9ffe 00000000 000a9ffe 00000000
[    1.695202] mem_pwr   0x01a0: 00000000 00000000 00000000 00000000
[    1.695739] chain_st  0x01f0: ea0001ff 000003fb 15fffe00 00000004
[    1.696276] mem_st    0x01f8: 15fffe00 00000004 00000203 00000001
[    1.696812] repair_st 0x0290: fef50003 000381ff 00000000 00000000
[    1.697352] rockchip-thermal fec00000.tsadc: channal 0: temperature(35 C)
[    1.697949] THERMAL REGS:
[    1.698185] 00000000: 00000100 00000001 00000007 0000007f 00000000 0000007f 00000000 0000007f
[    1.698935] 00000020: 00000000 00000000 00000000 00000128 00000128 00000128 00000128 00000128
[    1.699684] 00000040: 00000128 00000128 00000000 00000000 00000000 00000000 00000000 00000000
[    1.700431] 00000060: 00000000 00000000 00000000 0000013e 00000180 00000180 00000180 00000180
[    1.701177] 00000080: 00000180 00000180
[    1.701514] Kernel Offset: disabled
[    1.701822] CPU features: 0x0e0000,000700a4,6601720b
[    1.702258] Memory Limit: none
[    1.702531] Rebooting in 9 seconds..
[   10.995641] rk3x-i2c fec80000.i2c: restart timeout, ipd: 0x00, state: 3

```