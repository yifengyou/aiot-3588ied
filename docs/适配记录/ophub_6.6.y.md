# ophub 6.6.y

## 启动崩溃问题

```shell


Retrieving file: /6.6/Image-6.6.89-kdev
append: root=PARTUUID=614e0000-0000-4b53-8000-1d28000054a9 panic=9 rw console=ttyS2,1500000 console=tty1 cgroup_enable=cpuset cgroup_memory=1 cgroup_enable=memory net.ifnames=0 biosdevname=0 level=10 loglevel=10 selinux=0 crashkernel=384M-:128M systemd.mask=systemd-growfs@-.service rockchip.dmc_freq=528000 video=HDMI-A-1:1920x1080@60
Retrieving file: /6.6/rk3588-aiot-3588ied.dtb
## Flattened Device Tree blob at 12000000
   Booting using the fdt blob at 0x12000000
Working FDT set to 12000000
   Loading Device Tree to 00000000ecb92000, end 00000000ecbc2716 ... OK
Working FDT set to ecb92000

Starting kernel ...

[    0.000000] Booting Linux on physical CPU 0x0000000000 [0x412fd050]
[    0.000000] Linux version 6.6.89-kdev (builder@kdevbuilder) (aarch64-linux-gnu-gcc (Ubuntu 13.3.0-6ubuntu2~24.04.1) 13.3.0, GNU ld (GNU Binutils for Ubuntu) 2.42) #1 SMP PREEMPT_DYNAMIC Fri Oct 16 23:11:51 CST 2026
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
[    0.000000] cma: Reserved 256 MiB at 0x00000000dca00000 on node -1
[    0.000000] cma: Reserved 32 MiB at 0x0000000100000000 on node -1
[    0.000000] psci: probing for conduit method from DT.
[    0.000000] psci: PSCIv1.1 detected in firmware.
[    0.000000] psci: Using standard PSCI v0.2 function IDs
[    0.000000] psci: MIGRATE_INFO_TYPE not supported.
[    0.000000] psci: SMC Calling Convention v1.2
[    0.000000] percpu: Embedded 29 pages/cpu s81640 r8192 d28952 u118784
[    0.000000] pcpu-alloc: s81640 r8192 d28952 u118784 alloc=29*4096
[    0.000000] pcpu-alloc: [0] 0 [0] 1 [0] 2 [0] 3 [0] 4 [0] 5 [0] 6 [0] 7 
[    0.000000] Detected VIPT I-cache on CPU0
[    0.000000] CPU features: detected: GIC system register CPU interface
[    0.000000] CPU features: detected: Virtualization Host Extensions
[    0.000000] CPU features: detected: Qualcomm erratum 1009, or ARM erratum 1286807, 2441009
[    0.000000] CPU features: detected: ARM errata 1165522, 1319367, or 1530923
[    0.000000] alternatives: applying boot alternatives
[    0.000000] Kernel command line: root=PARTUUID=614e0000-0000-4b53-8000-1d28000054a9 panic=9 rw console=ttyS2,1500000 console=tty1 cgroup_enable=cpuset cgroup_memory=1 cgroup_enable=memory net.ifnames=0 biosdevname=0 level=10 loglevel=10 selinux=0 crashkernel=384M-:128M systemd.mask=systemd-growfs@-.service rockchip.dmc_freq=528000 video=HDMI-A-1:1920x1080@60
[    0.000000] Unknown kernel command line parameters "cgroup_enable=memory cgroup_memory=1 biosdevname=0 level=10 crashkernel=384M-:128M", will be passed to user space.
[    0.000000] Dentry cache hash table entries: 1048576 (order: 11, 8388608 bytes, linear)
[    0.000000] Inode-cache hash table entries: 524288 (order: 10, 4194304 bytes, linear)
[    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: 2063880
[    0.000000] mem auto-init: stack:off, heap alloc:off, heap free:off
[    0.000000] software IO TLB: area num 8.
[    0.000000] software IO TLB: mapped [mem 0x00000000d8a00000-0x00000000dca00000] (64MB)
[    0.000000] Memory: 7814248K/8386560K available (21952K kernel code, 4344K rwdata, 15516K rodata, 6528K init, 691K bss, 277400K reserved, 294912K cma-reserved)
[    0.000000] SLUB: HWalign=64, Order=0-3, MinObjects=0, CPUs=8, Nodes=1
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
[    0.000000] GIC: enabling workaround for ITS: Rockchip erratum RK3588001
[    0.000000] ITS@0x00000000fe640000: allocated 8192 Devices @102150000 (indirect, esz 8, psz 64K, shr 0)
[    0.000000] ITS@0x00000000fe640000: allocated 32768 Interrupt Collections @102160000 (flat, esz 2, psz 64K, shr 0)
[    0.000000] ITS: using cache flushing for cmd queue
[    0.000000] ITS [mem 0xfe660000-0xfe67ffff]
[    0.000000] GIC: enabling workaround for ITS: Rockchip erratum RK3588001
[    0.000000] ITS@0x00000000fe660000: allocated 8192 Devices @102180000 (indirect, esz 8, psz 64K, shr 0)
[    0.000000] ITS@0x00000000fe660000: allocated 32768 Interrupt Collections @102190000 (flat, esz 2, psz 64K, shr 0)
[    0.000000] ITS: using cache flushing for cmd queue
[    0.000000] GICv3: using LPI property table @0x00000001021a0000
[    0.000000] GIC: using cache flushing for LPI property table
[    0.000000] GICv3: CPU0: using allocated LPI pending table @0x00000001021b0000
[    0.000000] rcu: srcu_init: Setting srcu_struct sizes based on contention.
[    0.000000] arch_timer: cp15 timer(s) running at 24.00MHz (phys).
[    0.000000] clocksource: arch_sys_counter: mask: 0xffffffffffffff max_cycles: 0x588fe9dc0, max_idle_ns: 440795202592 ns
[    0.000000] sched_clock: 56 bits at 24MHz, resolution 41ns, wraps every 4398046511097ns
[    0.002473] Console: colour dummy device 80x25
[    0.002488] printk: console [tty1] enabled
[    0.003366] Calibrating delay loop (skipped), value calculated using timer frequency.. 48.00 BogoMIPS (lpj=80000)
[    0.003399] pid_max: default: 32768 minimum: 301
[    0.006617] LSM: initializing lsm=capability,apparmor,integrity
[    0.008289] AppArmor: AppArmor initialized
[    0.009502] Mount-cache hash table entries: 16384 (order: 5, 131072 bytes, linear)
[    0.009552] Mountpoint-cache hash table entries: 16384 (order: 5, 131072 bytes, linear)
[    0.015244] RCU Tasks: Setting shift to 3 and lim to 1 rcu_task_cb_adjust=1 rcu_task_cpu_ids=8.
[    0.015375] RCU Tasks Trace: Setting shift to 3 and lim to 1 rcu_task_cb_adjust=1 rcu_task_cpu_ids=8.
[    0.015684] rcu: Hierarchical SRCU implementation.
[    0.015705] rcu: 	Max phase no-delay instances is 1000.
[    0.017289] Platform MSI: msi-controller@fe640000 domain created
[    0.017329] Platform MSI: msi-controller@fe660000 domain created
[    0.017719] PCI/MSI: /interrupt-controller@fe600000/msi-controller@fe640000 domain created
[    0.017768] PCI/MSI: /interrupt-controller@fe600000/msi-controller@fe660000 domain created
[    0.017939] EFI services will not be available.
[    0.018480] smp: Bringing up secondary CPUs ...
[    0.019168] Detected VIPT I-cache on CPU1
[    0.019255] GICv3: CPU1: found redistributor 100 region 0:0x00000000fe6a0000
[    0.019270] GICv3: CPU1: using allocated LPI pending table @0x00000001021c0000
[    0.019317] CPU1: Booted secondary processor 0x0000000100 [0x412fd050]
[    0.020140] Detected VIPT I-cache on CPU2
[    0.020224] GICv3: CPU2: found redistributor 200 region 0:0x00000000fe6c0000
[    0.020239] GICv3: CPU2: using allocated LPI pending table @0x00000001021d0000
[    0.020285] CPU2: Booted secondary processor 0x0000000200 [0x412fd050]
[    0.021070] Detected VIPT I-cache on CPU3
[    0.021151] GICv3: CPU3: found redistributor 300 region 0:0x00000000fe6e0000
[    0.021165] GICv3: CPU3: using allocated LPI pending table @0x00000001021e0000
[    0.021207] CPU3: Booted secondary processor 0x0000000300 [0x412fd050]
[    0.021907] CPU features: detected: Spectre-v4
[    0.021914] CPU features: detected: Spectre-BHB
[    0.021919] CPU features: detected: SSBS not fully self-synchronizing
[    0.021921] Detected PIPT I-cache on CPU4
[    0.021970] GICv3: CPU4: found redistributor 400 region 0:0x00000000fe700000
[    0.021979] GICv3: CPU4: using allocated LPI pending table @0x00000001021f0000
[    0.022007] CPU4: Booted secondary processor 0x0000000400 [0x414fd0b0]
[    0.022714] Detected PIPT I-cache on CPU5
[    0.022770] GICv3: CPU5: found redistributor 500 region 0:0x00000000fe720000
[    0.022780] GICv3: CPU5: using allocated LPI pending table @0x0000000102200000
[    0.022809] CPU5: Booted secondary processor 0x0000000500 [0x414fd0b0]
[    0.023482] Detected PIPT I-cache on CPU6
[    0.023538] GICv3: CPU6: found redistributor 600 region 0:0x00000000fe740000
[    0.023547] GICv3: CPU6: using allocated LPI pending table @0x0000000102210000
[    0.023576] CPU6: Booted secondary processor 0x0000000600 [0x414fd0b0]
[    0.024280] Detected PIPT I-cache on CPU7
[    0.024338] GICv3: CPU7: found redistributor 700 region 0:0x00000000fe760000
[    0.024348] GICv3: CPU7: using allocated LPI pending table @0x0000000102220000
[    0.024375] CPU7: Booted secondary processor 0x0000000700 [0x414fd0b0]
[    0.024442] smp: Brought up 1 node, 8 CPUs
[    0.024803] SMP: Total of 8 processors activated.
[    0.024819] CPU features: detected: 32-bit EL0 Support
[    0.024835] CPU features: detected: Data cache clean to the PoU not required for I/D coherence
[    0.024855] CPU features: detected: Common not Private translations
[    0.024871] CPU features: detected: CRC32 instructions
[    0.024885] CPU features: detected: Data cache clean to Point of Persistence
[    0.024905] CPU features: detected: RCpc load-acquire (LDAPR)
[    0.024920] CPU features: detected: LSE atomic instructions
[    0.024936] CPU features: detected: Privileged Access Never
[    0.024950] CPU features: detected: RAS Extension Support
[    0.024967] CPU features: detected: Speculative Store Bypassing Safe (SSBS)
[    0.025077] CPU: All CPU(s) started at EL2
[    0.025093] alternatives: applying system-wide alternatives
[    0.032044] devtmpfs: initialized
[    0.046049] clocksource: jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 6370867519511994 ns
[    0.046069] futex hash table entries: 2048 (order: 5, 131072 bytes, linear)
[    0.049209] prandom: seed boundary self test passed
[    0.049803] prandom: 100 self tests passed
[    0.049809] pinctrl core: initialized pinctrl subsystem
[    0.050102] DMI not present or invalid.
[    0.051021] NET: Registered PF_NETLINK/PF_ROUTE protocol family
[    0.051748] DMA: preallocated 1024 KiB GFP_KERNEL pool for atomic allocations
[    0.052072] DMA: preallocated 1024 KiB GFP_KERNEL|GFP_DMA pool for atomic allocations
[    0.052404] DMA: preallocated 1024 KiB GFP_KERNEL|GFP_DMA32 pool for atomic allocations
[    0.052472] audit: initializing netlink subsys (disabled)
[    0.052632] audit: type=2000 audit(0.046:1): state=initialized audit_enabled=0 res=1
[    0.053499] thermal_sys: Registered thermal governor 'fair_share'
[    0.053503] thermal_sys: Registered thermal governor 'bang_bang'
[    0.053514] thermal_sys: Registered thermal governor 'step_wise'
[    0.053520] thermal_sys: Registered thermal governor 'user_space'
[    0.053526] thermal_sys: Registered thermal governor 'power_allocator'
[    0.053658] cpuidle: using governor ladder
[    0.053818] hw-breakpoint: found 6 breakpoint and 4 watchpoint registers.
[    0.053944] ASID allocator initialised with 65536 entries
[    0.054308] Serial: AMBA PL011 UART driver
[    0.094049] rockchip_hwspinlock fe5a0000.hwspinlock: hwlock user id 1, locks 64
[    0.095964] /i2c@fec80000/usb-typec@22/connector: Fixed dependency cycle(s) with /usbdrd3_0/usb@fc000000
[    0.096520] /i2c@fec80000/usb-typec@22/connector: Fixed dependency cycle(s) with /phy@fed80000
[    0.096562] /phy@fed80000: Fixed dependency cycle(s) with /i2c@fec80000/usb-typec@22/connector
[    0.099604] gpio gpiochip0: Static allocation of GPIO base is deprecated, use dynamic allocation.
[    0.099909] rockchip-gpio fd8a0000.gpio: probed /pinctrl/gpio@fd8a0000
[    0.100112] gpio gpiochip1: Static allocation of GPIO base is deprecated, use dynamic allocation.
[    0.100259] rockchip-gpio fec20000.gpio: probed /pinctrl/gpio@fec20000
[    0.100396] gpio gpiochip2: Static allocation of GPIO base is deprecated, use dynamic allocation.
[    0.100532] rockchip-gpio fec30000.gpio: probed /pinctrl/gpio@fec30000
[    0.100681] gpio gpiochip3: Static allocation of GPIO base is deprecated, use dynamic allocation.
[    0.100810] rockchip-gpio fec40000.gpio: probed /pinctrl/gpio@fec40000
[    0.100953] gpio gpiochip4: Static allocation of GPIO base is deprecated, use dynamic allocation.
[    0.101080] rockchip-gpio fec50000.gpio: probed /pinctrl/gpio@fec50000
[    0.101122] rockchip-pinctrl pinctrl: probed pinctrl
[    0.102443] /vop@fdd90000: Fixed dependency cycle(s) with /hdmi@fdea0000
[    0.102480] /hdmi@fdea0000: Fixed dependency cycle(s) with /vop@fdd90000
[    0.106128] Modules: 20464 pages in range for non-PLT usage
[    0.106132] Modules: 511984 pages in range for PLT usage
[    0.106944] HugeTLB: registered 1.00 GiB page size, pre-allocated 0 pages
[    0.106960] HugeTLB: 0 KiB vmemmap can be freed for a 1.00 GiB page
[    0.106968] HugeTLB: registered 32.0 MiB page size, pre-allocated 0 pages
[    0.106975] HugeTLB: 0 KiB vmemmap can be freed for a 32.0 MiB page
[    0.106981] HugeTLB: registered 2.00 MiB page size, pre-allocated 0 pages
[    0.106988] HugeTLB: 0 KiB vmemmap can be freed for a 2.00 MiB page
[    0.106994] HugeTLB: registered 64.0 KiB page size, pre-allocated 0 pages
[    0.107000] HugeTLB: 0 KiB vmemmap can be freed for a 64.0 KiB page
[    0.108536] cryptd: max_cpu_qlen set to 1000
[    0.166366] raid6: neonx8   gen()  4320 MB/s
[    0.223120] raid6: neonx4   gen()  4293 MB/s
[    0.279872] raid6: neonx2   gen()  3625 MB/s
[    0.336620] raid6: neonx1   gen()  2870 MB/s
[    0.393380] raid6: int64x8  gen()  1916 MB/s
[    0.450125] raid6: int64x4  gen()  2008 MB/s
[    0.506881] raid6: int64x2  gen()  1675 MB/s
[    0.563624] raid6: int64x1  gen()  1382 MB/s
[    0.563629] raid6: using algorithm neonx8 gen() 4320 MB/s
[    0.620368] raid6: .... xor() 3275 MB/s, rmw enabled
[    0.620375] raid6: using neon recovery algorithm
[    0.620482] ACPI: Interpreter disabled.
[    0.621266] iommu: Default domain type: Translated
[    0.621274] iommu: DMA domain TLB invalidation policy: strict mode
[    0.621823] SCSI subsystem initialized
[    0.622064] libata version 3.00 loaded.
[    0.622246] usbcore: registered new interface driver usbfs
[    0.622265] usbcore: registered new interface driver hub
[    0.622293] usbcore: registered new device driver usb
[    0.622498] mc: Linux media interface: v0.10
[    0.622521] videodev: Linux video capture interface: v2.00
[    0.622565] pps_core: LinuxPPS API ver. 1 registered
[    0.622571] pps_core: Software ver. 5.3.6 - Copyright 2005-2007 Rodolfo Giometti <giometti@linux.it>
[    0.622583] PTP clock support registered
[    0.622604] EDAC MC: Ver: 3.0.0
[    0.622995] ARM FF-A: FFA_VERSION returned not supported
[    0.623025] scmi_core: SCMI protocol bus registered
[    0.623898] Advanced Linux Sound Architecture Driver Initialized.
[    0.624567] vgaarb: loaded
[    0.625745] rockchip-cpuinfo cpuinfo: SoC		: 35881000
[    0.625754] rockchip-cpuinfo cpuinfo: Serial		: 5cee6dafefff2a5c
[    0.626115] clocksource: Switched to clocksource arch_sys_counter
[    0.626466] VFS: Disk quotas dquot_6.6.0
[    0.626487] VFS: Dquot-cache hash table entries: 512 (order 0, 4096 bytes)
[    0.626962] AppArmor: AppArmor Filesystem Enabled
[    0.626995] pnp: PnP ACPI: disabled
[    0.632743] NET: Registered PF_INET protocol family
[    0.632943] IP idents hash table entries: 131072 (order: 8, 1048576 bytes, linear)
[    0.638056] tcp_listen_portaddr_hash hash table entries: 4096 (order: 4, 65536 bytes, linear)
[    0.638133] Table-perturb hash table entries: 65536 (order: 6, 262144 bytes, linear)
[    0.638163] TCP established hash table entries: 65536 (order: 7, 524288 bytes, linear)
[    0.638662] TCP bind hash table entries: 65536 (order: 9, 2097152 bytes, linear)
[    0.640555] TCP: Hash tables configured (established 65536 bind 65536)
[    0.640857] MPTCP token hash table entries: 8192 (order: 5, 196608 bytes, linear)
[    0.640999] UDP hash table entries: 4096 (order: 5, 131072 bytes, linear)
[    0.641185] UDP-Lite hash table entries: 4096 (order: 5, 131072 bytes, linear)
[    0.641651] NET: Registered PF_UNIX/PF_LOCAL protocol family
[    0.642077] RPC: Registered named UNIX socket transport module.
[    0.642085] RPC: Registered udp transport module.
[    0.642091] RPC: Registered tcp transport module.
[    0.642096] RPC: Registered tcp-with-tls transport module.
[    0.642102] RPC: Registered tcp NFSv4.1 backchannel transport module.
[    0.642614] NET: Registered PF_XDP protocol family
[    0.642686] PCI: CLS 0 bytes, default 64
[    0.643128] rockchip-thermal fec00000.tsadc: Missing rockchip,grf property
[    0.644098] rockchip-thermal fec00000.tsadc: tsadc is probed successfully!
[    0.644567] kvm [1]: IPA Size Limit: 40 bits
[    0.644589] kvm [1]: GICv3: no GICV resource entry
[    0.644596] kvm [1]: disabling GICv2 emulation
[    0.644622] kvm [1]: GIC system register CPU interface enabled
[    0.644642] kvm [1]: vgic interrupt IRQ9
[    0.644670] kvm [1]: VHE mode initialized successfully
[    0.645474] Initialise system trusted keyrings
[    0.645621] workingset: timestamp_bits=46 max_order=21 bucket_order=0
[    0.645646] zbud: loaded
[    0.647676] squashfs: version 4.0 (2009/01/31) Phillip Lougher
[    0.649498] fuse: init (API version 7.39)
[    0.650066] SGI XFS with ACLs, security attributes, quota, no debug enabled
[    0.674706] NET: Registered PF_ALG protocol family
[    0.674731] xor: measuring software checksum speed
[    0.675344]    8regs           :  5397 MB/sec
[    0.675965]    32regs          :  5346 MB/sec
[    0.676422]    arm64_neon      :  7280 MB/sec
[    0.676428] xor: using function: arm64_neon (7280 MB/sec)
[    0.676438] Key type asymmetric registered
[    0.676444] Asymmetric key parser 'x509' registered
[    0.676475] Block layer SCSI generic (bsg) driver version 0.4 loaded (major 240)
[    0.676619] io scheduler mq-deadline registered
[    0.676626] io scheduler kyber registered
[    0.676755] io scheduler bfq registered
[    0.679144] rockchip-csi2-dphy-hw fedc0000.csi2-dphy0-hw: csi2 dphy hw probe successfully!
[    0.679245] rockchip-csi2-dphy-hw fedc8000.csi2-dphy1-hw: csi2 dphy hw probe successfully!
[    0.689674] dw-pcie fe190000.pcie: invalid resource
[    0.689687] dw-pcie fe190000.pcie: Failed to initialize host
[    0.689694] dw-pcie: probe of fe190000.pcie failed with error -22
[    0.689897] dw-pcie fe170000.pcie: invalid resource
[    0.689906] dw-pcie fe170000.pcie: Failed to initialize host
[    0.689912] dw-pcie: probe of fe170000.pcie failed with error -22
[    0.690421] rk-pcie fe190000.pcie: invalid prsnt-gpios property in node
[    0.690526] rk-pcie fe190000.pcie: no vpcie3v3 regulator found
[    0.690694] rk-pcie fe170000.pcie: invalid prsnt-gpios property in node
[    0.690840] rk-pcie fe170000.pcie: no vpcie3v3 regulator found
[    0.691433] rk-pcie fe190000.pcie: host bridge /pcie@fe190000 ranges:
[    0.691483] rk-pcie fe190000.pcie:       IO 0x00f4100000..0x00f41fffff -> 0x00f4100000
[    0.691522] rk-pcie fe190000.pcie:      MEM 0x00f4200000..0x00f4ffffff -> 0x00f4200000
[    0.691553] rk-pcie fe190000.pcie:      MEM 0x0a00000000..0x0a3fffffff -> 0x0a00000000
[    0.691625] rk-pcie fe190000.pcie: iATU: unroll T, 8 ob, 8 ib, align 64K, limit 8G
[    0.691679] rk-pcie fe170000.pcie: host bridge /pcie@fe170000 ranges:
[    0.691739] rk-pcie fe170000.pcie:       IO 0x00f2100000..0x00f21fffff -> 0x00f2100000
[    0.691784] rk-pcie fe170000.pcie:      MEM 0x00f2200000..0x00f2ffffff -> 0x00f2200000
[    0.691819] rk-pcie fe170000.pcie:      MEM 0x0980000000..0x09bfffffff -> 0x0980000000
[    0.691898] rk-pcie fe170000.pcie: iATU: unroll T, 8 ob, 8 ib, align 64K, limit 8G
[    0.698625] dma-pl330 fea10000.dma-controller: Loaded driver for PL330 DMAC-241330
[    0.698641] dma-pl330 fea10000.dma-controller: 	DBUFF-128x8bytes Num_Chans-8 Num_Peri-32 Num_Events-16
[    0.699504] dma-pl330 fea30000.dma-controller: Loaded driver for PL330 DMAC-241330
[    0.699515] dma-pl330 fea30000.dma-controller: 	DBUFF-128x8bytes Num_Chans-8 Num_Peri-32 Num_Events-16
[    0.700368] dma-pl330 fed10000.dma-controller: Loaded driver for PL330 DMAC-241330
[    0.700379] dma-pl330 fed10000.dma-controller: 	DBUFF-128x8bytes Num_Chans-8 Num_Peri-32 Num_Events-16
[    0.701353] rockchip-pvtm fda40000.pvtm: pvtm@0 probed
[    0.701408] rockchip-pvtm fda50000.pvtm: pvtm@1 probed
[    0.701460] rockchip-pvtm fda60000.pvtm: pvtm@2 probed
[    0.701502] rockchip-pvtm fdaf0000.pvtm: pvtm@3 probed
[    0.701548] rockchip-pvtm fdb30000.pvtm: pvtm@4 probed
[    0.701748] rockchip-system-monitor rockchip-system-monitor: system monitor probe
[    0.703431] Serial: 8250/16550 driver, 5 ports, IRQ sharing disabled
[    0.704004] feb50000.serial: ttyS2 at MMIO 0xfeb50000 (irq = 38, base_baud = 1500000) is a 16550A
[    0.704103] printk: console [ttyS2] enabled
[    0.865566] dw-apb-uart: probe of febc0000.serial failed with error -22
[    0.866630] Serial: AMBA driver
[    0.868881] rockchip-vop2 fdd90000.vop: Adding to iommu group 2
[    0.874451] [drm] all windows should be assigned, full plane mask: Cluster0 | Cluster1 | Esmart0 | Esmart1 | Cluster2 | Cluster3 | Esmart2 | Esmart3[0x3cf], current plane mask: [0x0]
[    0.875879] [drm] use default plane mask
[    0.876259] rockchip-vop2 fdd90000.vop: [drm:vop2_bind] vp0 assign plane mask: Cluster0 | Esmart0 | Cluster2 | Esmart2[0x145], primary plane phy id: Esmart0[2]
[    0.877518] rockchip-vop2 fdd90000.vop: [drm:vop2_bind] vp1 assign plane mask: Cluster1 | Esmart1 | Cluster3 | Esmart3[0x28a], primary plane phy id: Esmart1[3]
[    0.878769] rockchip-vop2 fdd90000.vop: [drm:vop2_bind] vp2 assign plane mask: [0x0], primary plane phy id: INVALID[-1]
[    0.879721] rockchip-vop2 fdd90000.vop: [drm:vop2_bind] vp3 assign plane mask: [0x0], primary plane phy id: INVALID[-1]
[    0.880691] OF: /display-subsystem: could not get #clock-cells for /phy@fed60000
[    0.881347] OF: /display-subsystem: could not get #clock-cells for /phy@fed60000
[    0.882098] [drm] failed to init overlay plane Cluster0-win1
[    0.882621] [drm] failed to init overlay plane Cluster1-win1
[    0.883151] [drm] failed to init overlay plane Cluster2-win1
[    0.883676] [drm] failed to init overlay plane Cluster3-win1
[    0.893902] rk-pcie fe170000.pcie: PCIe Linking... LTSSM is 0x2
[    0.895897] rockchip-vop2 fdd90000.vop: bin=0
[    0.896503] rockchip-vop2 fdd90000.vop: leakage=35
[    0.896939] rockchip-vop2 fdd90000.vop: leakage-volt-sel=1
[    0.897456] rockchip-vop2 fdd90000.vop: error -ENODEV: _opp_set_regulators: no regulator (vop) found
[    0.898273] rockchip-vop2 fdd90000.vop: failed to set opp config
[    0.898801] rockchip-vop2 fdd90000.vop: failed to init opp info
[    0.899320] rockchip-vop2 fdd90000.vop: Unsupported VOP aclk dvfs
[    0.899890] rockchip-drm display-subsystem: bound fdd90000.vop (ops 0xffff8000816ebe90)
[    0.901122] dwhdmi-rockchip fdea0000.hdmi: registered ddc I2C bus driver
[    0.902274] rockchip-drm display-subsystem: bound fdea0000.hdmi (ops 0xffff8000817002c0)
[    0.903706] [drm] Initialized rockchip 4.0.0 20140818 for display-subsystem on minor 0
[    0.904409] rockchip-drm display-subsystem: failed to parse loader memory
[    0.949470] rk-pcie fe190000.pcie: PCIe Link up, LTSSM is 0x30011
[    0.950043] rk-pcie fe190000.pcie: PCIe Gen.1 x1 link up
[    0.951072] rk-pcie fe190000.pcie: PCI host bridge to bus 0004:40
[    0.951085] pci_bus 0004:40: root bus resource [bus 40-4f]
[    0.951099] pci_bus 0004:40: root bus resource [io  0x0000-0xfffff] (bus address [0xf4100000-0xf41fffff])
[    0.951108] pci_bus 0004:40: root bus resource [mem 0xf4200000-0xf4ffffff]
[    0.951116] pci_bus 0004:40: root bus resource [mem 0xa00000000-0xa3fffffff pref]
[    0.951159] pci 0004:40:00.0: [1d87:3588] type 01 class 0x060400
[    0.951189] pci 0004:40:00.0: reg 0x38: [mem 0x00000000-0x0000ffff pref]
[    0.951266] pci 0004:40:00.0: supports D1 D2
[    0.951273] pci 0004:40:00.0: PME# supported from D0 D1 D3hot
[    0.952114] Unable to handle kernel NULL pointer dereference at virtual address 00000000000002f8
[    0.952120] Mem abort info:
[    0.952121]   ESR = 0x0000000096000044
[    0.952124]   EC = 0x25: DABT (current EL), IL = 32 bits
[    0.952127]   SET = 0, FnV = 0
[    0.952129]   EA = 0, S1PTW = 0
[    0.952131]   FSC = 0x04: level 0 translation fault
[    0.952134] Data abort info:
[    0.952135]   ISV = 0, ISS = 0x00000044, ISS2 = 0x00000000
[    0.952138]   CM = 0, WnR = 1, TnD = 0, TagAccess = 0
[    0.952140]   GCS = 0, Overlay = 0, DirtyBit = 0, Xs = 0
[    0.952143] [00000000000002f8] user address but active_mm is swapper
[    0.952147] Internal error: Oops: 0000000096000044 [#1] SMP
[    0.952152] Modules linked in:
[    0.952156] CPU: 5 PID: 1 Comm: swapper/0 Not tainted 6.6.89-kdev #1
[    0.952162] Hardware name: AIoT 3588IED (DT)
[    0.952164] pstate: 60400009 (nZCv daif +PAN -UAO -TCO -DIT -SSBS BTYPE=--)
[    0.952170] pc : dw_hdmi_rockchip_encoder_mode_set+0x44/0x80
[    0.952182] lr : crtc_set_mode+0x1c8/0x1cc
[    0.952188] sp : ffff80008306b2c0
[    0.952190] x29: ffff80008306b2c0 x28: ffff0001033e8a80 x27: ffff00010436c018
[    0.952198] x26: ffff00010436c090 x25: ffff800081700b08 x24: ffff00010436c000
[    0.952204] x23: ffff000102d35800 x22: 0000000000000001 x21: ffff000103368800
[    0.952210] x20: ffff00010436c018 x19: ffff000102d36080 x18: 3830317830323931
[    0.952216] x17: 006800c701620465 x16: 0441043c04650438 x15: 00000000000003f0
[    0.952222] x14: ffff80008306b200 x13: ffff80008306b204 x12: 0000000000000000
[    0.952228] x11: 0000000000024414 x10: 0000000000000804 x9 : ffff0001042a8d08
[    0.952235] x8 : ffff800082ff4000 x7 : 00000000000039de x6 : 0000000000fe502a
[    0.952241] x5 : 0000000000000000 x4 : 0000000000000000 x3 : 0000000000000001
[    0.952247] x2 : ffff0001042a0140 x1 : 000000000016a8c8 x0 : 0000000000000000
[    0.952253] Call trace:
[    0.952255]  dw_hdmi_rockchip_encoder_mode_set+0x44/0x80
[    0.952261]  crtc_set_mode+0x1c8/0x1cc
[    0.952265]  drm_atomic_helper_commit_modeset_disables+0x3c/0x4c
[    0.952271]  rockchip_drm_atomic_helper_commit_tail_rpm+0x58/0x33c
[    0.952279]  commit_tail+0xa0/0x188
[    0.952284]  drm_atomic_helper_commit+0x17c/0x194
[    0.952289]  drm_atomic_commit+0xac/0xe8
[    0.952295]  drm_client_modeset_commit_atomic+0x1fc/0x268
[    0.952302]  drm_client_modeset_commit_locked+0x5c/0x18c
[    0.952309]  drm_client_modeset_commit+0x2c/0x54
[    0.952315]  __drm_fb_helper_restore_fbdev_mode_unlocked+0xa0/0xe0
[    0.952322]  drm_fb_helper_set_par+0x30/0x4c
[    0.952327]  fbcon_init+0x1fc/0x4f8
[    0.952334]  visual_init+0xb4/0x104
[    0.952343]  do_bind_con_driver.isra.0+0x184/0x384
[    0.952347]  do_take_over_console+0x19c/0x1ec
[    0.952352]  do_fbcon_takeover+0x6c/0xe4
[    0.952358]  fbcon_fb_registered+0x1e0/0x1e8
[    0.952363]  register_framebuffer+0x18c/0x1f8
[    0.952371]  __drm_fb_helper_initial_config_and_unlock+0x2dc/0x48c
[    0.952376]  drm_fb_helper_initial_config+0x44/0x54
[    0.952381]  rockchip_drm_fbdev_init+0x80/0x128
[    0.952389]  rockchip_drm_bind+0x60c/0x964
[    0.952395]  try_to_bring_up_aggregate_device+0x214/0x2d8
[    0.952404]  component_master_add_with_match+0xc0/0x100
[    0.952412]  rockchip_drm_platform_probe+0x2d8/0x3a0
[    0.952419]  platform_probe+0x68/0xc4
[    0.952424]  really_probe+0x188/0x3c4
[    0.952432]  __driver_probe_device+0x7c/0x16c
[    0.952439]  driver_probe_device+0x3c/0x110
[    0.952446]  __driver_attach+0xf0/0x1f8
[    0.952454]  bus_for_each_dev+0x78/0xd8
[    0.952460]  driver_attach+0x24/0x30
[    0.952467]  bus_add_driver+0x110/0x234
[    0.952473]  driver_register+0x5c/0x124
[    0.952481]  __platform_driver_register+0x28/0x34
[    0.952485]  rockchip_drm_init+0xe0/0x134
[    0.952494]  do_one_initcall+0x44/0x2f0
[    0.952500]  kernel_init_freeable+0x1ec/0x408
[    0.952508]  kernel_init+0x24/0x1e4
[    0.952514]  ret_from_fork+0x10/0x20
[    0.952520] 
[    0.952520] PC: 0xffff800080bfad2c:
[    0.952522] ab2c  54fffdc1 39404823 6b15007f 54fffd61 52801281 d2800260 910180c6 910a4696
[    0.952536] ab4c  9b210042 52820143 8b0200c2 a9400440 a90006c0 a9410440 a90106c0 a9420440
[    0.952548] ab6c  a90206c0 a9430440 a90306c0 a9440440 a90406c0 a9450440 a90506c0 a9460440
[    0.952559] ab8c  a90606c0 a9470440 a90706c0 6b03011f 540000a0 128202e0 0b000108 7100091f
[    0.952571] abac  540006e8 394a5680 321c0000 53047ea2 390a5680 1ad70929 b0007801 f9400280
[    0.952582] abcc  1b057c42 9131c021 11001c42 13037c42 1b097c42 b9028e82 94031418 91080260
[    0.952593] abec  52800021 3907aa61 52804022 52800021 7808f002 91082260 79051277 79051678
[    0.952605] ac0c  79051a61 79052675 a9400ec2 a9000c02 a9410ec2 a9010c02 a9420ec2 a9020c02
[    0.952616] ac2c  a9430ec2 a9030c02 a9440ec2 a9040c02 a9450ec2 a9050c02 a9460ec2 a9060c02
[    0.952627] ac4c  a9470ec2 a9070c02 a9425bf5 a94363f7 17fffef6 52820141 52800143 6b01011f
[    0.952638] ac6c  54ffe2c0 128202e1 0b010101 71000c3f 528000a5 1a853063 17ffff10 394a5680
[    0.952650] ac8c  121b7800 12001c00 17ffffc9 a9025bf5 12003c55 a90363f7 17ffff89 f9400280
[    0.952661] acac  b0007801 91316021 940312e3 17fffedf f9400280 b0007801 91320021 940312de
[    0.952672] accc  f9400280 b0007801 91326021 940312da a9425bf5 a94363f7 17fffed4 d503233f
[    0.952683] acec  a9be7bfd 910003fd a90153f3 aa0203f4 f9402802 b4000242 f942e441 b4000201
[    0.952694] ad0c  39446c03 d100a013 360000e3 3907a83f 394a0260 370001c0 f9409a60 b9421e61
[    0.952705] ad2c* b902f801 b9401e81 52807d02 f9406260 1b027c21 93407c21 97fa6e0e a94153f3
[    0.952717] ad4c  a8c27bfd d50323bf d65f03c0 f942e442 aa1303e0 97fffe9f 17fffff0 d503233f
[    0.952728] ad6c  d102c3ff d5384103 a9087bfd 910203fd a90953f3 aa0003f3 2a0203f4 f90053f5
[    0.952739] ad8c  d2800f02 aa0103f5 52800001 f9423c60 f9003fe0 d2800000 910003e0 9424bbd6
[    0.952750] adac  910242a1 910003e0 97fde72c f9405a61 32009fe0 f9404021 ea00003f 54000801
[    0.952761] adcc  3950a664 52884801 3950a265 72a001e1 3950aa62 390a027f b9028664 1b057c80
[    0.952772] adec  b9028a65 390a4262 1b017c00 34000500 5284f7e0 72a00120 6b00029f 54000088
[    0.952784] ae0c  b94003e1 6b00003f 5400042d 3950b260 52800021 390a0661 36000220 f940a660
[    0.952795] ae2c  52840501 6b01001f 54000508 528404a1 6b01001f 54000148 12840181 0b010002
[    0.952806] ae4c  7100545f 54000488 d28402a1 f2a00501 9ac22421 36000401 d503201f d5384100
[    0.952817] ae6c  f9403fe2 f9423c01 eb010042 d2800001 540006c1 a9487bfd a94953f3 f94053f5
[    0.952828] ae8c  9102c3ff d50323bf d65f03c0 d503201f 390a067f 17fffff2 f9400261 b00117c0
[    0.952839] aeac  910b0000 b0007802 91062000 9132c042 97f4c17e 390a067f 17ffffe9 910003e0
[    0.952851] aecc  97fef833 17ffffbf 52840561 6b01001f 54fffc60 97ffefae 0b000400 52807d02
[    0.952862] aeec  12001c00 3950c667 9ba57c84 1b027e94 3950ca66 d2994002 b201f3e3 f2a77342
[    0.952873] af0c  f2955563 9ba07e94 9ba67ce1 9b027c84 8b140e94 9b027c21 d343fe82 8b020280
[    0.952884] 
[    0.952884] LR: 0xffff800080b96a94:
[    0.952886] 6894  3607fea2 91006021 97ffb1ae f94006a3 11000694 9100e273 b942d861 6b14003f
[    0.952898] 68b4  54fffe4c a94153f3 f94013f5 a8c37bfd d50323bf d65f03c0 d503233f a9b97bfd
[    0.952909] 68d4  910003fd a90153f3 a9025bf5 aa0103f5 a90363f7 aa0003f7 a9046bf9 f9400424
[    0.952920] 68f4  b942d880 7100001f 5400048d b0007ad8 91340318 d2800013 52800014 f94012a1
[    0.952931] 6914  8b130020 f8736836 b40002f6 f9400c00 f9400401 36880281 39402000 36000240
[    0.952942] 6934  f940dad9 aa1803e3 52800082 d2800000 d2800001 f9401b25 b4000165 b4000057
[    0.952954] 6954  f94006e1 f94012c5 b94062c4 97ff96cf f9401b21 aa1603e0 d63f0020 f94006a4
[    0.952965] 6974  d503201f 11000694 b942d880 9100e273 6b14001f 54fffc4c b9402aa2 7100005f
[    0.952976] 6994  5400066d b0007ad9 d2800014 91348320 52800016 a90573fb f90037e0 f9401aa1
[    0.952987] 69b4  8b140023 f8746820 b4000480 f9400c7c f9400b93 b4000433 f9400780 f9403a79
[    0.952998] 69d4  f942e418 9102431a 9100631b f9400700 37880040 36980320 d2800001 b4000057
[    0.953009] 69f4  f94006e1 52800082 f9401e65 d2800000 f94037e3 b9401a64 97ff96a4 b40000f9
[    0.953020] 6a14  f9401b23 b4000323 aa1c03e2 aa1803e1 aa1303e0 d63f0060 f8458e60 aa1b03e2
[    0.953031] 6a34  aa1a03e1 eb13001f d101a000 9a9f1000 97ff1b9b b9402aa2 110006d6 9100a294
[    0.953042] 6a54  6b16005f 54fffacc a94573fb a94153f3 a9425bf5 a94363f7 a9446bf9 a8c77bfd
[    0.953054] 6a74  d50323bf d65f03c0 f9401723 b4fffd63 aa1b03e2 aa1a03e1 aa1303e0 d63f0060
[    0.953065] 6a94* 17ffffe6 d503233f a9bc7bfd 910003fd a9025bf5 aa0103f6 b942d804 7100009f
[    0.953076] 6ab4  5400036d a90363f7 b0007ad8 aa0003f7 91350318 a90153f3 d2800013 52800014
[    0.953087] 6ad4  d503201f f94012c2 d2817701 8b130043 f8736855 f9401060 f10002bf fa401804
[    0.953098] 6af4  540000a0 91004000 942710c0 34000200 b942dae4 11000694 9100e273 6b14009f
[    0.953109] 6b14  54fffe2c a94153f3 a94363f7 f9402ac0 b4000060 91004000 97d5824d a9425bf5
[    0.953120] 6b34  a8c47bfd d50323bf d65f03c0 f94006e0 aa1803e1 f94012a3 b94062a2 9404a33c
[    0.953131] 6b54  17ffffec d503233f a9bd7bfd 910003fd a90153f3 aa0103f3 a9025bf5 aa0003f5
[    0.953143] 6b74  f9400425 b942d8a4 7100009f 540001ad f9401022 52800700 9b200884 f9400043
[    0.953153] 6b94  b40000a3 f9400c43 f9400463 f26f087f 54000a81 9100e042 eb04005f 54ffff01
[    0.953165] 6bb4  b942c0a5 710000bf 54000b8d f9400e62 52800400 52800004 d2800006 d2800007
[    0.953176] 6bd4  d2800014 9b2008a5 d503201f f9400043 b4000083 a9411847 11000484 aa0303f4
[    0.953187] 6bf4  91008042 eb0200bf 54ffff21 7100049f 54000941 f94004c0 b4000600 f94004e1
[    0.953198] 6c14  eb01001f 540005a1 f9426a96 f94026c0 b4000980 f9400cc0 b5000680 f94048e0
[    0.953209] 6c34  b4000080 9100c000 97d57b53 360002e0 f94022c2 aa1303e1 aa1403e0 d63f0040
[    0.953220] 6c54  2a0003f3 34000160 b4000055 f94006b5 b0007ac3 f9400e85 aa1503e1 b9405a84
[    0.953231] 6c74  9139e063 52800082 d2800000 97ff9607 a9425bf5 2a1303e0 a94153f3 a8c37bfd
[    0.953242] 
[    0.953242] SP: 0xffff80008306b2c0:
[    0.953244] b0c0  60400009 00000000 0436c000 ffff0001 81700b08 ffff8000 0436c090 ffff0001
[    0.953255] b0e0  00024414 07d80780 08980804 04380000 8306b100 ffff8000 80031bcc ffff8000
[    0.953267] b100  8306b130 ffff8000 815545f4 ffff8000 8306b170 ffff8000 96000044 00000000
[    0.953278] b120  000002f8 00000000 80bfad2c ffff8000 8306b160 ffff8000 81555ad0 ffff8000
[    0.953290] b140  02d36080 ffff0001 0436c018 ffff0001 8306b2c0 ffff8000 08980804 04380000
[    0.953301] b160  8306b2a0 ffff8000 800112f8 ffff8000 00000000 00000000 0016a8c8 00000000
[    0.953312] b180  042a0140 ffff0001 00000001 00000000 00000000 00000000 00000000 00000000
[    0.953323] b1a0  00fe502a 00000000 000039de 00000000 82ff4000 ffff8000 042a8d08 ffff0001
[    0.953334] b1c0  00000804 00000000 00024414 00000000 00000000 00000000 8306b204 ffff8000
[    0.953346] b1e0  8306b200 ffff8000 000003f0 00000000 04650438 0441043c 01620465 006800c7
[    0.953357] b200  30323931 38303178 02d36080 ffff0001 0436c018 ffff0001 03368800 ffff0001
[    0.953368] b220  00000001 00000000 02d35800 ffff0001 0436c000 ffff0001 81700b08 ffff8000
[    0.953379] b240  0436c090 ffff0001 0436c018 ffff0001 033e8a80 ffff0001 8306b2c0 ffff8000
[    0.953390] b260  80b96a94 ffff8000 8306b2c0 ffff8000 80bfad2c ffff8000 60400009 00000000
[    0.953401] b280  033e0b40 ffff0001 0436c000 ffff0001 80b5d684 ffff8000 52989800 d0d5da69
[    0.953412] b2a0  8306b2c0 ffff8000 80bfad2c ffff8000 8306b2e0 ffff8000 00000000 00000000
[    0.953423] b2c0* 8306b2e0 ffff8000 80b96a94 ffff8000 02d360a8 ffff0001 00000028 00000000
[    0.953434] b2e0  8306b350 ffff8000 80b979e8 ffff8000 03368800 ffff0001 02d35800 ffff0001
[    0.953445] b300  00000000 00000000 02d35800 ffff0001 00000000 00000000 02d7ec80 ffff0001
[    0.953456] b320  0302b480 ffff0001 00000000 00000000 00000038 00000000 033dd810 ffff0001
[    0.953467] b340  00000000 00000000 81aefd20 ffff8000 8306b390 ffff8000 80bbc8b8 ffff8000
[    0.953479] b360  03368800 ffff0001 00000000 00000000 81aefee0 ffff8000 02d35800 ffff0001
[    0.953489] b380  00000000 00000000 52989800 d0d5da69 8306b3f0 ffff8000 80b996e4 ffff8000
[    0.953500] b3a0  00000000 00000000 03368800 ffff0001 3862cbbe 00000000 816ea9e0 ffff8000
[    0.953511] b3c0  00000000 00000000 02d35800 ffff0001 0302b480 ffff0001 00000000 00000000
[    0.953522] b3e0  00000038 00000000 02d35800 ffff0001 8306b420 ffff8000 80b9a6a8 ffff8000
[    0.953533] b400  03368800 ffff0001 00000000 00000000 02d35800 ffff0001 00000000 00000000
[    0.953544] b420  8306b4b0 ffff8000 80b590c8 ffff8000 03368800 ffff0001 02d35800 ffff0001
[    0.953555] b440  02d35ac8 ffff0001 00000001 00000000 00000001 00000000 030dd500 ffff0001
[    0.953566] b460  033dd7e0 ffff0001 80b7bf94 ffff8000 00000000 00000000 02a77010 ffff0001
[    0.953577] b480  00000000 00000000 80b7bf94 ffff8000 00000000 00000000 02a77010 ffff0001
[    0.953588] b4a0  00000000 00000000 52989800 d0d5da69 8306b520 ffff8000 80b5fe30 ffff8000
[    0.953600] 
[    0.953600] X2: 0xffff0001042a0140:
[    0.953602] ff40  00000000 00000000 00000000 00000000 012763d3 45372a51 00000000 00000000
[    0.953613] ff60  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.953624] ff80  00000000 00000000 00000000 00000000 00000000 00000000 050e922b 72c82a50
[    0.953635] ffa0  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.953645] ffc0  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.953656] ffe0  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.953666] 0000  03118e00 ffff0001 033cd660 ffff0001 80ccba84 ffff8000 81b1a6e0 ffff8000
[    0.953678] 0020  0000ed70 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.953689] 0040  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.953700] 0060  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.953710] 0080  40176786 00000000 02fcec10 ffff0001 02d35800 ffff0001 00000001 00000000
[    0.953722] 00a0  042a0080 ffff0001 816fc4d8 ffff8000 00000002 00000000 042a0080 ffff0001
[    0.953733] 00c0  816fc3f0 ffff8000 00000003 00000000 042a0080 ffff0001 816fc308 ffff8000
[    0.953744] 00e0  080b0800 0000ff00 816fc108 ffff8000 03118480 ffff0001 080b0201 0000ff00
[    0.953755] 0100  816fbf60 ffff8000 03118680 ffff0001 00000000 00000000 00000000 00000000
[    0.953766] 0120  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.953777] 0140* 02d35800 ffff0001 fef7faf0 ffff0002 02d35ae0 ffff0001 02d35ae0 ffff0001
[    0.953789] 0160  02d89b70 ffff0001 02395700 ffff0001 00000000 00000000 042a0178 ffff0001
[    0.953800] 0180  042a0178 ffff0001 8306b4d8 ffff8000 042a9f80 ffff0001 02d359b8 ffff0001
[    0.953811] 01a0  00000049 cccccccc 042a02f8 ffff0001 00000000 00000000 00000000 00000000
[    0.953822] 01c0  042a8d08 ffff0001 00000000 00000000 00000000 00000000 00000000 00000001
[    0.953833] 01e0  00024414 07d80780 08980804 04380000 0441043c 00000465 00000005 00024414
[    0.953844] 0200  07800780 07d80898 08980804 04380000 04650438 0441043c 01620465 006800c7
[    0.953855] 0220  00000000 00000000 00000000 00000000 30323931 38303178 00000030 00000000
[    0.953866] 0240  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.953876] 0260  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.953887] 0280  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.953897] 02a0  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.953908] 02c0  00000000 00000000 00000000 00000000 00000000 00000000 816eb468 ffff8000
[    0.953918] 02e0  00000400 00000000 02d6c000 ffff0001 816eb528 ffff8000 00000016 00000000
[    0.953930] 0300  02d8b700 ffff0001 02d8b180 ffff0001 02d8bd00 ffff0001 033d4c80 ffff0001
[    0.953941] 0320  033d4f80 ffff0001 033d4900 ffff0001 033d4d80 ffff0001 033d4d00 ffff0001
[    0.953953] 
[    0.953953] X8: 0xffff800082ff4000:
[    0.953955] 3e00  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.953966] 3e20  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.953976] 3e40  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.953987] 3e60  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.953998] 3e80  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.954008] 3ea0  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.954019] 3ec0  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.954030] 3ee0  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.954041] 3f00  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.954051] 3f20  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.954062] 3f40  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.954072] 3f60  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.954083] 3f80  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.954094] 3fa0  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.954105] 3fc0  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.954115] 3fe0  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.954126] 4000* 00000000 00000000 00000001 00000000 030db920 ffff0001 02510000 ffff0001
[    0.954137] 4020  00000001 00000000 00000001 00000000 00000000 00000000 00000000 00000000
[    0.954148] 4040  041c89c0 ffff0001 02510f00 ffff0001 041c8480 ffff0001 0000000b 00000000
[    0.954159] 4060  82db8df0 ffff8000 82dba498 ffff8000 82db94a0 ffff8000 82db95d0 ffff8000
[    0.954170] 4080  82db9cf0 ffff8000 82db9ec0 ffff8000 82db9ff0 ffff8000 82dba368 ffff8000
[    0.954181] 40a0  82dba638 ffff8000 82dba568 ffff8000 82dba1d0 ffff8000 00000000 00000000
[    0.954192] 40c0  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.954203] 40e0  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.954214] 4100  02ac4b00 ffff0001 00000000 00000000 00000000 00000000 00000000 00000000
[    0.954224] 4120  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.954235] 4140  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.954246] 4160  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.954256] 4180  00000000 00000000 00000000 00000000 00000000 00000000 81c19ff8 ffff8000
[    0.954267] 41a0  00000000 00000000 81c1a068 ffff8000 00000000 00000000 00000000 00000000
[    0.954278] 41c0  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.954288] 41e0  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.954300] 
[    0.954300] X9: 0xffff0001042a8d08:
[    0.954301] 8b08  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.954312] 8b28  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.954322] 8b48  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.954333] 8b68  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.954343] 8b88  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.954354] 8ba8  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.954365] 8bc8  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.954375] 8be8  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.954386] 8c08  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.954396] 8c28  00000000 00000000 00000000 00000000 07000707 00000000 816f07da ffff8000
[    0.954407] 8c48  00080000 00000080 00090801 0000030f 00000000 00000004 00000004 00000030
[    0.954418] 8c68  816f07f0 ffff8000 01020000 00000101 816f2248 ffff8000 816fd1d8 ffff8000
[    0.954430] 8c88  816fd458 ffff8000 0000000e 00000000 00000028 00000000 00000000 00000000
[    0.954440] 8ca8  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.954451] 8cc8  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.954462] 8ce8  00000000 00000000 81afa188 ffff8000 042a0080 ffff0001 00000000 00000000
[    0.954473] 8d08* 02d35800 ffff0001 042a5c90 ffff0001 02d35ac8 ffff0001 02d89db0 ffff0001
[    0.954484] 8d28  02395700 ffff0001 00000000 00000000 042a8d38 ffff0001 042a8d38 ffff0001
[    0.954495] 8d48  8306b4d8 ffff8000 8306b500 ffff8000 042a5cd0 ffff0001 00000039 eeeeeeee
[    0.954506] 8d68  042a8dc8 ffff0001 00000000 00000000 00000000 00000000 00000001 00000000
[    0.954517] 8d88  033cd780 ffff0001 00000015 00000000 02d2ef90 ffff0001 00000001 00000000
[    0.954528] 8da8  00000000 00000000 00000000 00000000 00000000 00000000 816eb170 ffff8000
[    0.954539] 8dc8  00000020 00000000 02d8b000 ffff0001 02d8b500 ffff0001 02d8bd80 ffff0001
[    0.954550] 8de8  02d8bf00 ffff0001 02d8b780 ffff0001 02d8b280 ffff0001 02d8bf80 ffff0001
[    0.954561] 8e08  02d8b900 ffff0001 02d8be80 ffff0001 02d8b580 ffff0001 02d8ba00 ffff0001
[    0.954573] 8e28  02d8b600 ffff0001 033d4000 ffff0001 033d4580 ffff0001 033d5e80 ffff0001
[    0.954584] 8e48  033d5580 ffff0001 033d4d00 ffff0001 033d4a00 ffff0001 033d4600 ffff0001
[    0.954595] 8e68  033d4500 ffff0001 033d5a00 ffff0001 033d5600 ffff0001 033d5780 ffff0001
[    0.954606] 8e88  033d5280 ffff0001 033d5f80 ffff0001 033d5900 ffff0001 033d5500 ffff0001
[    0.954617] 8ea8  033d5d80 ffff0001 033d5d00 ffff0001 033d5f00 ffff0001 033d5880 ffff0001
[    0.954628] 8ec8  033d5700 ffff0001 00000000 00000000 00000000 00000000 00000000 00000000
[    0.954639] 8ee8  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.954651] 
[    0.954651] X13: 0xffff80008306b204:
[    0.954653] b004  ffff8000 82b512e0 ffff8000 8306b060 ffff8000 80031f7c ffff8000 96000044
[    0.954664] b024  00000000 8306b170 ffff8000 000002f8 00000000 81a0cf70 ffff8000 60400009
[    0.954675] b044  00000000 96000044 00000000 00000000 00000000 8306b170 ffff8000 8306b090
[    0.954686] b064  ffff8000 81563f50 ffff8000 000002f8 00000000 8306b170 ffff8000 000002f8
[    0.954697] b084  00000000 8158a060 ffff8000 8306b0f0 ffff8000 815643c0 ffff8000 96000044
[    0.954708] b0a4  00000000 8306b170 ffff8000 000002f8 00000000 8158a060 ffff8000 60400009
[    0.954719] b0c4  00000000 0436c000 ffff0001 81700b08 ffff8000 0436c090 ffff0001 00024414
[    0.954730] b0e4  07d80780 08980804 04380000 8306b100 ffff8000 80031bcc ffff8000 8306b130
[    0.954741] b104  ffff8000 815545f4 ffff8000 8306b170 ffff8000 96000044 00000000 000002f8
[    0.954752] b124  00000000 80bfad2c ffff8000 8306b160 ffff8000 81555ad0 ffff8000 02d36080
[    0.954763] b144  ffff0001 0436c018 ffff0001 8306b2c0 ffff8000 08980804 04380000 8306b2a0
[    0.954774] b164  ffff8000 800112f8 ffff8000 00000000 00000000 0016a8c8 00000000 042a0140
[    0.954785] b184  ffff0001 00000001 00000000 00000000 00000000 00000000 00000000 00fe502a
[    0.954796] b1a4  00000000 000039de 00000000 82ff4000 ffff8000 042a8d08 ffff0001 00000804
[    0.954807] b1c4  00000000 00024414 00000000 00000000 00000000 8306b204 ffff8000 8306b200
[    0.954818] b1e4  ffff8000 000003f0 00000000 04650438 0441043c 01620465 006800c7 30323931
[    0.954829] b204* 38303178 02d36080 ffff0001 0436c018 ffff0001 03368800 ffff0001 00000001
[    0.954840] b224  00000000 02d35800 ffff0001 0436c000 ffff0001 81700b08 ffff8000 0436c090
[    0.954852] b244  ffff0001 0436c018 ffff0001 033e8a80 ffff0001 8306b2c0 ffff8000 80b96a94
[    0.954863] b264  ffff8000 8306b2c0 ffff8000 80bfad2c ffff8000 60400009 00000000 033e0b40
[    0.954874] b284  ffff0001 0436c000 ffff0001 80b5d684 ffff8000 52989800 d0d5da69 8306b2c0
[    0.954885] b2a4  ffff8000 80bfad2c ffff8000 8306b2e0 ffff8000 00000000 00000000 8306b2e0
[    0.954896] b2c4  ffff8000 80b96a94 ffff8000 02d360a8 ffff0001 00000028 00000000 8306b350
[    0.954907] b2e4  ffff8000 80b979e8 ffff8000 03368800 ffff0001 02d35800 ffff0001 00000000
[    0.954918] b304  00000000 02d35800 ffff0001 00000000 00000000 02d7ec80 ffff0001 0302b480
[    0.954929] b324  ffff0001 00000000 00000000 00000038 00000000 033dd810 ffff0001 00000000
[    0.954940] b344  00000000 81aefd20 ffff8000 8306b390 ffff8000 80bbc8b8 ffff8000 03368800
[    0.954951] b364  ffff0001 00000000 00000000 81aefee0 ffff8000 02d35800 ffff0001 00000000
[    0.954962] b384  00000000 52989800 d0d5da69 8306b3f0 ffff8000 80b996e4 ffff8000 00000000
[    0.954974] b3a4  00000000 03368800 ffff0001 3862cbbe 00000000 816ea9e0 ffff8000 00000000
[    0.954984] b3c4  00000000 02d35800 ffff0001 0302b480 ffff0001 00000000 00000000 00000038
[    0.954995] b3e4  00000000 02d35800 ffff0001 8306b420 ffff8000 80b9a6a8 ffff8000 03368800
[    0.955007] 
[    0.955007] X14: 0xffff80008306b200:
[    0.955009] b000  8306add0 ffff8000 82b512e0 ffff8000 8306b060 ffff8000 80031f7c ffff8000
[    0.955020] b020  96000044 00000000 8306b170 ffff8000 000002f8 00000000 81a0cf70 ffff8000
[    0.955031] b040  60400009 00000000 96000044 00000000 00000000 00000000 8306b170 ffff8000
[    0.955042] b060  8306b090 ffff8000 81563f50 ffff8000 000002f8 00000000 8306b170 ffff8000
[    0.955053] b080  000002f8 00000000 8158a060 ffff8000 8306b0f0 ffff8000 815643c0 ffff8000
[    0.955064] b0a0  96000044 00000000 8306b170 ffff8000 000002f8 00000000 8158a060 ffff8000
[    0.955075] b0c0  60400009 00000000 0436c000 ffff0001 81700b08 ffff8000 0436c090 ffff0001
[    0.955086] b0e0  00024414 07d80780 08980804 04380000 8306b100 ffff8000 80031bcc ffff8000
[    0.955097] b100  8306b130 ffff8000 815545f4 ffff8000 8306b170 ffff8000 96000044 00000000
[    0.955108] b120  000002f8 00000000 80bfad2c ffff8000 8306b160 ffff8000 81555ad0 ffff8000
[    0.955119] b140  02d36080 ffff0001 0436c018 ffff0001 8306b2c0 ffff8000 08980804 04380000
[    0.955130] b160  8306b2a0 ffff8000 800112f8 ffff8000 00000000 00000000 0016a8c8 00000000
[    0.955141] b180  042a0140 ffff0001 00000001 00000000 00000000 00000000 00000000 00000000
[    0.955152] b1a0  00fe502a 00000000 000039de 00000000 82ff4000 ffff8000 042a8d08 ffff0001
[    0.955163] b1c0  00000804 00000000 00024414 00000000 00000000 00000000 8306b204 ffff8000
[    0.955174] b1e0  8306b200 ffff8000 000003f0 00000000 04650438 0441043c 01620465 006800c7
[    0.955185] b200* 30323931 38303178 02d36080 ffff0001 0436c018 ffff0001 03368800 ffff0001
[    0.955196] b220  00000001 00000000 02d35800 ffff0001 0436c000 ffff0001 81700b08 ffff8000
[    0.955208] b240  0436c090 ffff0001 0436c018 ffff0001 033e8a80 ffff0001 8306b2c0 ffff8000
[    0.955219] b260  80b96a94 ffff8000 8306b2c0 ffff8000 80bfad2c ffff8000 60400009 00000000
[    0.955230] b280  033e0b40 ffff0001 0436c000 ffff0001 80b5d684 ffff8000 52989800 d0d5da69
[    0.955241] b2a0  8306b2c0 ffff8000 80bfad2c ffff8000 8306b2e0 ffff8000 00000000 00000000
[    0.955252] b2c0  8306b2e0 ffff8000 80b96a94 ffff8000 02d360a8 ffff0001 00000028 00000000
[    0.955263] b2e0  8306b350 ffff8000 80b979e8 ffff8000 03368800 ffff0001 02d35800 ffff0001
[    0.955274] b300  00000000 00000000 02d35800 ffff0001 00000000 00000000 02d7ec80 ffff0001
[    0.955285] b320  0302b480 ffff0001 00000000 00000000 00000038 00000000 033dd810 ffff0001
[    0.955296] b340  00000000 00000000 81aefd20 ffff8000 8306b390 ffff8000 80bbc8b8 ffff8000
[    0.955307] b360  03368800 ffff0001 00000000 00000000 81aefee0 ffff8000 02d35800 ffff0001
[    0.955318] b380  00000000 00000000 52989800 d0d5da69 8306b3f0 ffff8000 80b996e4 ffff8000
[    0.955329] b3a0  00000000 00000000 03368800 ffff0001 3862cbbe 00000000 816ea9e0 ffff8000
[    0.955341] b3c0  00000000 00000000 02d35800 ffff0001 0302b480 ffff0001 00000000 00000000
[    0.955352] b3e0  00000038 00000000 02d35800 ffff0001 8306b420 ffff8000 80b9a6a8 ffff8000
[    0.955364] 
[    0.955364] X19: 0xffff000102d36080:
[    0.955365] 5e80  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.955376] 5ea0  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.955387] 5ec0  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.955398] 5ee0  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.955408] 5f00  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.955419] 5f20  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.955430] 5f40  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.955441] 5f60  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.955451] 5f80  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.955462] 5fa0  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.955472] 5fc0  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.955483] 5fe0  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.955494] 6000  02d79000 ffff0001 02d88000 ffff0001 80ccba84 ffff8000 81b1a6e0 ffff8000
[    0.955505] 6020  00000440 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.955516] 6040  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.955527] 6060  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.955538] 6080* 0302a010 ffff0001 02e50c00 ffff0001 00000000 00000000 02d79800 ffff0001
[    0.955549] 60a0  00000000 00000000 02d35800 ffff0001 02d35ab0 ffff0001 042a57c0 ffff0001
[    0.955560] 60c0  000000c8 e0e0e0e0 00000000 00000000 00000000 00000000 00000000 00000000
[    0.955572] 60e0  033db690 ffff0001 00000002 00000001 00000001 00000002 042a0140 ffff0001
[    0.955583] 6100  02d618b8 ffff0001 02d618b8 ffff0001 81700b70 ffff8000 81700b08 ffff8000
[    0.955594] 6120  02d35800 ffff0001 82db9dc0 ffff8000 02d79080 ffff0001 033ddc00 ffff0001
[    0.955605] 6140  00000000 00000000 00000000 00000000 00000000 00000000 033dd540 ffff0001
[    0.955616] 6160  00000000 00000000 033dda20 ffff0001 033ddba0 ffff0001 033dd840 ffff0001
[    0.955627] 6180  033dd420 ffff0001 00000000 00000000 00000000 00000000 00000000 00000000
[    0.955638] 61a0  00000000 00000000 02d61080 ffff0001 00000000 00000000 00091050 00000000
[    0.955649] 61c0  01010100 00000000 00002025 00000000 00002025 00000000 00000002 00000000
[    0.955660] 61e0  00002025 00000000 00000000 0000002d 033dff80 ffff0001 033df900 ffff0001
[    0.955671] 6200  033df500 ffff0001 033dfd80 ffff0001 033dfb80 ffff0001 033dfd00 ffff0001
[    0.955683] 6220  033dfa80 ffff0001 033df480 ffff0001 033df880 ffff0001 033df700 ffff0001
[    0.955693] 6240  033df980 ffff0001 033df100 ffff0001 033dff00 ffff0001 033df380 ffff0001
[    0.955705] 6260  033df180 ffff0001 0436c400 ffff0001 00000000 00000000 04328b00 ffff0001
[    0.955716] 
[    0.955716] X20: 0xffff00010436c018:
[    0.955718] be18  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.955729] be38  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.955739] be58  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.955750] be78  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.955760] be98  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.955771] beb8  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.955781] bed8  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.955792] bef8  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.955802] bf18  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.955813] bf38  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.955824] bf58  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.955834] bf78  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.955845] bf98  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.955855] bfb8  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.955866] bfd8  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.955876] bff8  00000000 00000000 042a0140 ffff0001 001f0101 00000001 00000002 00000002
[    0.955887] c018* 00024414 07d80780 08980804 04380000 0441043c 00000465 00000005 00024414
[    0.955898] c038  07800780 07d80898 08980804 04380000 04650438 0441043c 01620465 006800c7
[    0.955909] c058  00000000 00000000 00000000 00000000 30323931 38303178 00000030 00000000
[    0.955920] c078  00000000 00000000 00000000 00000000 00000000 00000000 00024414 07d80780
[    0.955931] c098  08980804 04380000 0441043c 00000465 00000005 00024414 07800780 07d80898
[    0.955942] c0b8  08980804 04380000 04650438 0441043c 01620465 006800c7 00000000 00000000
[    0.955953] c0d8  00000000 00000000 30323931 38303178 00000030 00000000 00000000 00000000
[    0.955964] c0f8  00000000 00000000 00000000 00000000 033e8240 ffff0001 00000000 00000000
[    0.955975] c118  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.955985] c138  03368c80 ffff0001 033e80c0 ffff0001 00000000 00000000 00000000 0000000b
[    0.955996] c158  0000000f 00000000 00000000 00000000 00000000 00000000 033e8ab0 ffff0001
[    0.956007] c178  00000064 00000064 00000064 00000064 00000000 00000000 00000000 00000000
[    0.956018] c198  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00001000
[    0.956029] c1b8  00000000 00002025 00000000 00000000 00000000 00000000 00000000 00000001
[    0.956039] c1d8  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.956050] c1f8  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.956061] 
[    0.956061] X21: 0xffff000103368800:
[    0.956062] 8600  02a35600 ffff0001 02a35638 ffff0001 02a35670 ffff0001 02a356a8 ffff0001
[    0.956073] 8620  02a356e0 ffff0001 02a37e00 ffff0001 02a37e38 ffff0001 02a37e70 ffff0001
[    0.956085] 8640  02a37ea8 ffff0001 02a37ee0 ffff0001 02a40000 ffff0001 02a40038 ffff0001
[    0.956095] 8660  02a40070 ffff0001 02a400a8 ffff0001 02a400e0 ffff0001 00000000 00000000
[    0.956106] 8680  00000e40 00000130 00001690 00000980 00001300 00000ab0 00000d10 00001b50
[    0.956117] 86a0  000018f0 00000260 00001560 00001c80 000017c0 00001db0 000010a0 00000f70
[    0.956128] 86c0  00000720 000005f0 00001430 00000000 00001a20 000004c0 00000be0 000011d0
[    0.956139] 86e0  00000390 00000850 00000000 00000000 00000000 00000000 00000000 00000000
[    0.956150] 8700  80068540 ffff8000 00000000 00000000 825ec888 ffff8000 00000000 00000000
[    0.956161] 8720  00000000 00000000 00000000 00000000 00000000 00000000 00000009 00004404
[    0.956171] 8740  00000000 00000000 00000000 00000000 81a12438 ffff8000 0382ee40 ffff0001
[    0.956183] 8760  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.956193] 8780  000124f8 000007d0 00000001 00000000 00000000 00000000 00014c08 000007d0
[    0.956204] 87a0  00000001 00000000 00000000 00000000 0001c138 000007d0 00000003 00000000
[    0.956215] 87c0  00000000 00000000 0000d6d8 000007d0 00000000 00000000 00000000 00000000
[    0.956226] 87e0  0000fde8 000007d0 00000000 00000000 00000000 00000000 00000000 00000000
[    0.956237] 8800* 00000002 00000000 02d35800 ffff0001 00000001 00000000 030dd100 ffff0001
[    0.956248] 8820  033e0200 ffff0001 00000002 00000000 033dd8a0 ffff0001 00000001 00000000
[    0.956259] 8840  02d8dbe0 ffff0001 8306b4d8 ffff8000 033e8780 ffff0001 ffffffe0 0000000f
[    0.956270] 8860  03368860 ffff0001 03368860 ffff0001 80b997cc ffff8000 00000000 00000000
[    0.956281] 8880  03371ec8 ffff0001 03371ec8 ffff0001 03806000 ffff0001 033688b8 ffff0001
[    0.956292] 88a0  00000124 00000000 80f9f968 ffff8000 00000000 00000000 706d6574 6e695f31
[    0.956303] 88c0  00747570 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.956314] 88e0  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.956325] 8900  03371988 ffff0001 03371988 ffff0001 03802000 ffff0001 03368938 ffff0001
[    0.956336] 8920  00000124 00000000 80f9f968 ffff8000 00000000 00000000 706d6574 6e695f31
[    0.956347] 8940  00747570 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.956358] 8960  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.956368] 8980  ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
[    0.956380] 89a0  ffffffff 00e2ffff ffffffff ffffffff ffff00e9 ffffffff ffffffff ffffffff
[    0.956391] 89c0  4ce48aae 52a91a05 ffffffff ffff00e8 00eaffff ffffffff ffffffff ffffffff
[    0.956402] 89e0  00e0ffff ffff00e1 00ee00eb ffffffff ffffffff ffffffff ffff00e6 ffffffff
[    0.956413] 
[    0.956413] X23: 0xffff000102d35800:
[    0.956415] 5600  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.956426] 5620  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.956436] 5640  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.956447] 5660  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.956457] 5680  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.956468] 56a0  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.956478] 56c0  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.956489] 56e0  00000001 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.956499] 5700  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.956510] 5720  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.956521] 5740  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.956531] 5760  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.956542] 5780  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.956552] 57a0  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.956563] 57c0  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.956573] 57e0  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.956584] 5800* 00000000 00000003 02a77010 ffff0001 033e8cc0 ffff0001 02d8b200 ffff0001
[    0.956595] 5820  02d35800 ffff0001 00000000 00000000 816ea428 ffff8000 02d7ec80 ffff0001
[    0.956606] 5840  030d8880 ffff0001 030d8e80 ffff0001 00000000 00000000 00000001 00000000
[    0.956617] 5860  00000000 00000000 ffffffff 00000000 027298b0 ffff0001 033d3500 ffff0001
[    0.956628] 5880  00000000 00000000 00000000 00000000 02d35890 ffff0001 02d35890 ffff0001
[    0.956639] 58a0  02395700 ffff0001 00000000 00000000 02d358b0 ffff0001 02d358b0 ffff0001
[    0.956650] 58c0  00000000 00000000 00000000 00000000 00000000 00000000 02d358d8 ffff0001
[    0.956661] 58e0  02d358d8 ffff0001 02d358e8 ffff0001 02d358e8 ffff0001 03129638 ffff0001
[    0.956671] 5900  03129638 ffff0001 00000000 00000000 00000000 00000000 02d35918 ffff0001
[    0.956682] 5920  02d35918 ffff0001 02d35928 ffff0001 02d35928 ffff0001 00000000 00000000
[    0.956693] 5940  03122080 ffff0001 00000000 00000000 00000000 00000000 02d35958 ffff0001
[    0.956704] 5960  02d35958 ffff0001 00000000 00000001 00000000 00000000 00000000 00000000
[    0.956715] 5980  02d35980 ffff0001 02d35980 ffff0001 02395700 ffff0001 00000000 00000000
[    0.956726] 59a0  02d359a0 ffff0001 02d359a0 ffff0001 8306b4d8 ffff8000 042a0190 ffff0001
[    0.956737] 59c0  02d61888 ffff0001 00000000 00000000 00000000 00000000 00000000 00000000
[    0.956748] 59e0  02d359e0 ffff0001 02d359e0 ffff0001 00000000 04000004 0271223a ffff0001
[    0.956760] 
[    0.956760] X24: 0xffff00010436c000:
[    0.956761] be00  46e93605 aca4199d 00000000 00000000 00000000 00000000 00000000 00000000
[    0.956772] be20  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.956783] be40  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.956793] be60  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.956804] be80  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.956814] bea0  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.956825] bec0  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.956836] bee0  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.956846] bf00  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.956857] bf20  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.956867] bf40  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.956878] bf60  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.956888] bf80  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.956899] bfa0  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.956909] bfc0  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.956920] bfe0  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.956930] c000* 042a0140 ffff0001 001f0101 00000001 00000002 00000002 00024414 07d80780
[    0.956941] c020  08980804 04380000 0441043c 00000465 00000005 00024414 07800780 07d80898
[    0.956952] c040  08980804 04380000 04650438 0441043c 01620465 006800c7 00000000 00000000
[    0.956963] c060  00000000 00000000 30323931 38303178 00000030 00000000 00000000 00000000
[    0.956974] c080  00000000 00000000 00000000 00000000 00024414 07d80780 08980804 04380000
[    0.956985] c0a0  0441043c 00000465 00000005 00024414 07800780 07d80898 08980804 04380000
[    0.956995] c0c0  04650438 0441043c 01620465 006800c7 00000000 00000000 00000000 00000000
[    0.957006] c0e0  30323931 38303178 00000030 00000000 00000000 00000000 00000000 00000000
[    0.957017] c100  00000000 00000000 033e8240 ffff0001 00000000 00000000 00000000 00000000
[    0.957028] c120  00000000 00000000 00000000 00000000 00000000 00000000 03368c80 ffff0001
[    0.957039] c140  033e80c0 ffff0001 00000000 00000000 00000000 0000000b 0000000f 00000000
[    0.957050] c160  00000000 00000000 00000000 00000000 033e8ab0 ffff0001 00000064 00000064
[    0.957060] c180  00000064 00000064 00000000 00000000 00000000 00000000 00000000 00000000
[    0.957071] c1a0  00000000 00000000 00000000 00000000 00000000 00001000 00000000 00002025
[    0.957082] c1c0  00000000 00000000 00000000 00000000 00000000 00000001 00000000 00000000
[    0.957093] c1e0  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.957103] 
[    0.957103] X25: 0xffff800081700b08:
[    0.957105] 0908  81700f28 ffff8000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.957116] 0928  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.957126] 0948  00000000 00000000 6b636f72 70696863 336b722c 2d383835 682d7764 00696d64
[    0.957137] 0968  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.957148] 0988  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.957158] 09a8  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.957169] 09c8  00000000 00000000 81700cb8 ffff8000 00000000 00000000 00000000 00000000
[    0.957180] 09e8  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.957190] 0a08  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.957201] 0a28  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.957211] 0a48  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.957221] 0a68  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.957232] 0a88  00000000 00000000 00000000 00000000 00000000 00000000 685f7764 5f696d64
[    0.957243] 0aa8  6b636f72 70696863 636e655f 7265646f 616e655f 00656c62 685f7764 5f696d64
[    0.957254] 0ac8  5f746567 656e616c 6766635f 5f79625f 5f6c7266 65746172 00000000 00000000
[    0.957265] 0ae8  80bf88f8 ffff8000 80bf8794 ffff8000 80bfbec0 ffff8000 80bf84bc ffff8000
[    0.957276] 0b08* 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.957287] 0b28  00000000 00000000 80bface8 ffff8000 00000000 00000000 00000000 00000000
[    0.957297] 0b48  80bf83fc ffff8000 00000000 00000000 00000000 00000000 80bfa504 ffff8000
[    0.957308] 0b68  80bfb7ec ffff8000 00000000 00000000 80b6848c ffff8000 80bf9290 ffff8000
[    0.957319] 0b88  00000000 00000000 6f706572 6470685f 6576655f 0000746e 6b636f72 70696863
[    0.957330] 0ba8  6d64685f 61705f69 5f657372 00007464 696d6468 6c65735f 5f746365 6b6e696c
[    0.957341] 0bc8  6e6f635f 00676966 35336b72 685f3838 5f696d64 64726168 00717269 00000000
[    0.957352] 0be8  35336b72 685f3637 5f696d64 64726168 00717269 00000000 00000000 00000000
[    0.957363] 0c08  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.957373] 0c28  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.957384] 0c48  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.957394] 0c68  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.957405] 0c88  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.957415] 0ca8  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.957426] 0cc8  00000000 00000000 00000000 00000000 00000000 00000000 00000101 00000001
[    0.957436] 0ce8  00000000 00000000 80bf7e80 ffff8000 00000000 00000000 00000000 00000000
[    0.957448] 
[    0.957448] X26: 0xffff00010436c090:
[    0.957449] be90  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.957460] beb0  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.957470] bed0  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.957481] bef0  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.957491] bf10  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.957502] bf30  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.957513] bf50  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.957523] bf70  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.957534] bf90  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.957544] bfb0  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.957554] bfd0  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.957565] bff0  00000000 00000000 00000000 00000000 042a0140 ffff0001 001f0101 00000001
[    0.957576] c010  00000002 00000002 00024414 07d80780 08980804 04380000 0441043c 00000465
[    0.957587] c030  00000005 00024414 07800780 07d80898 08980804 04380000 04650438 0441043c
[    0.957597] c050  01620465 006800c7 00000000 00000000 00000000 00000000 30323931 38303178
[    0.957608] c070  00000030 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.957619] c090* 00024414 07d80780 08980804 04380000 0441043c 00000465 00000005 00024414
[    0.957630] c0b0  07800780 07d80898 08980804 04380000 04650438 0441043c 01620465 006800c7
[    0.957641] c0d0  00000000 00000000 00000000 00000000 30323931 38303178 00000030 00000000
[    0.957651] c0f0  00000000 00000000 00000000 00000000 00000000 00000000 033e8240 ffff0001
[    0.957662] c110  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.957673] c130  00000000 00000000 03368c80 ffff0001 033e80c0 ffff0001 00000000 00000000
[    0.957684] c150  00000000 0000000b 0000000f 00000000 00000000 00000000 00000000 00000000
[    0.957694] c170  033e8ab0 ffff0001 00000064 00000064 00000064 00000064 00000000 00000000
[    0.957705] c190  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.957716] c1b0  00000000 00001000 00000000 00002025 00000000 00000000 00000000 00000000
[    0.957726] c1d0  00000000 00000001 00000000 00000000 00000000 00000000 00000000 00000000
[    0.957737] c1f0  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.957747] c210  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.957758] c230  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.957768] c250  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.957779] c270  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.957789] 
[    0.957789] X27: 0xffff00010436c018:
[    0.957791] be18  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.957801] be38  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.957812] be58  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.957822] be78  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.957833] be98  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.957844] beb8  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.957854] bed8  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.957865] bef8  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.957875] bf18  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.957886] bf38  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.957896] bf58  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.957907] bf78  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.957917] bf98  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.957928] bfb8  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.957938] bfd8  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.957949] bff8  00000000 00000000 042a0140 ffff0001 001f0101 00000001 00000002 00000002
[    0.957960] c018* 00024414 07d80780 08980804 04380000 0441043c 00000465 00000005 00024414
[    0.957971] c038  07800780 07d80898 08980804 04380000 04650438 0441043c 01620465 006800c7
[    0.957981] c058  00000000 00000000 00000000 00000000 30323931 38303178 00000030 00000000
[    0.957992] c078  00000000 00000000 00000000 00000000 00000000 00000000 00024414 07d80780
[    0.958003] c098  08980804 04380000 0441043c 00000465 00000005 00024414 07800780 07d80898
[    0.958014] c0b8  08980804 04380000 04650438 0441043c 01620465 006800c7 00000000 00000000
[    0.958025] c0d8  00000000 00000000 30323931 38303178 00000030 00000000 00000000 00000000
[    0.958036] c0f8  00000000 00000000 00000000 00000000 033e8240 ffff0001 00000000 00000000
[    0.958047] c118  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.958057] c138  03368c80 ffff0001 033e80c0 ffff0001 00000000 00000000 00000000 0000000b
[    0.958068] c158  0000000f 00000000 00000000 00000000 00000000 00000000 033e8ab0 ffff0001
[    0.958079] c178  00000064 00000064 00000064 00000064 00000000 00000000 00000000 00000000
[    0.958090] c198  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00001000
[    0.958101] c1b8  00000000 00002025 00000000 00000000 00000000 00000000 00000000 00000001
[    0.958112] c1d8  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.958122] c1f8  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.958133] 
[    0.958133] X28: 0xffff0001033e8a80:
[    0.958135] 8880  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.958145] 88a0  46735d57 a4846c68 00000000 00000000 00000000 00000000 00000000 00000000
[    0.958157] 88c0  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.958167] 88e0  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.958178] 8900  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.958188] 8920  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.958199] 8940  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.958210] 8960  46735057 64856c68 00000000 00000000 00000000 00000000 00000000 00000000
[    0.958220] 8980  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.958231] 89a0  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.958242] 89c0  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.958252] 89e0  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.958263] 8a00  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.958274] 8a20  46735c97 24866c68 00000000 00000000 00000000 00000000 00000000 00000000
[    0.958285] 8a40  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.958295] 8a60  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.958306] 8a80* 02d61080 ffff0001 042a0140 ffff0001 02d360a8 ffff0001 00000000 00000000
[    0.958317] 8aa0  00000000 00000000 033e80c0 ffff0001 00000000 00000000 00000000 00000000
[    0.958328] 8ac0  00000000 00000000 00000000 00000000 00000032 00000032 00000000 00000000
[    0.958339] 8ae0  00000032 00000032 00000000 00000000 00000000 00000000 00000000 00000000
[    0.958350] 8b00  00000000 00000000 00000000 00000000 00000a00 00000000 00000000 00000000
[    0.958360] 8b20  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.958371] 8b40  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.958382] 8b60  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.958392] 8b80  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.958403] 8ba0  46735b17 a4876c68 00000000 00000000 00000000 00000000 00000000 00000000
[    0.958414] 8bc0  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.958425] 8be0  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.958435] 8c00  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.958446] 8c20  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.958457] 8c40  00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.958467] 8c60  46735117 64806c68 00000000 00000000 00000000 00000000 00000000 00000000
[    0.958479] 
[    0.958479] X29: 0xffff80008306b2c0:
[    0.958480] b0c0  60400009 00000000 0436c000 ffff0001 81700b08 ffff8000 0436c090 ffff0001
[    0.958491] b0e0  00024414 07d80780 08980804 04380000 8306b100 ffff8000 80031bcc ffff8000
[    0.958502] b100  8306b130 ffff8000 815545f4 ffff8000 8306b170 ffff8000 96000044 00000000
[    0.958514] b120  000002f8 00000000 80bfad2c ffff8000 8306b160 ffff8000 81555ad0 ffff8000
[    0.958525] b140  02d36080 ffff0001 0436c018 ffff0001 8306b2c0 ffff8000 08980804 04380000
[    0.958536] b160  8306b2a0 ffff8000 800112f8 ffff8000 00000000 00000000 0016a8c8 00000000
[    0.958547] b180  042a0140 ffff0001 00000001 00000000 00000000 00000000 00000000 00000000
[    0.958558] b1a0  00fe502a 00000000 000039de 00000000 82ff4000 ffff8000 042a8d08 ffff0001
[    0.958569] b1c0  00000804 00000000 00024414 00000000 00000000 00000000 8306b204 ffff8000
[    0.958580] b1e0  8306b200 ffff8000 000003f0 00000000 04650438 0441043c 01620465 006800c7
[    0.958591] b200  30323931 38303178 02d36080 ffff0001 0436c018 ffff0001 03368800 ffff0001
[    0.958602] b220  00000001 00000000 02d35800 ffff0001 0436c000 ffff0001 81700b08 ffff8000
[    0.958613] b240  0436c090 ffff0001 0436c018 ffff0001 033e8a80 ffff0001 8306b2c0 ffff8000
[    0.958624] b260  80b96a94 ffff8000 8306b2c0 ffff8000 80bfad2c ffff8000 60400009 00000000
[    0.958635] b280  033e0b40 ffff0001 0436c000 ffff0001 80b5d684 ffff8000 52989800 d0d5da69
[    0.958646] b2a0  8306b2c0 ffff8000 80bfad2c ffff8000 8306b2e0 ffff8000 00000000 00000000
[    0.958657] b2c0* 8306b2e0 ffff8000 80b96a94 ffff8000 02d360a8 ffff0001 00000028 00000000
[    0.958668] b2e0  8306b350 ffff8000 80b979e8 ffff8000 03368800 ffff0001 02d35800 ffff0001
[    0.958679] b300  00000000 00000000 02d35800 ffff0001 00000000 00000000 02d7ec80 ffff0001
[    0.958690] b320  0302b480 ffff0001 00000000 00000000 00000038 00000000 033dd810 ffff0001
[    0.958701] b340  00000000 00000000 81aefd20 ffff8000 8306b390 ffff8000 80bbc8b8 ffff8000
[    0.958712] b360  03368800 ffff0001 00000000 00000000 81aefee0 ffff8000 02d35800 ffff0001
[    0.958722] b380  00000000 00000000 52989800 d0d5da69 8306b3f0 ffff8000 80b996e4 ffff8000
[    0.958733] b3a0  00000000 00000000 03368800 ffff0001 3862cbbe 00000000 816ea9e0 ffff8000
[    0.958745] b3c0  00000000 00000000 02d35800 ffff0001 0302b480 ffff0001 00000000 00000000
[    0.958756] b3e0  00000038 00000000 02d35800 ffff0001 8306b420 ffff8000 80b9a6a8 ffff8000
[    0.958766] b400  03368800 ffff0001 00000000 00000000 02d35800 ffff0001 00000000 00000000
[    0.958778] b420  8306b4b0 ffff8000 80b590c8 ffff8000 03368800 ffff0001 02d35800 ffff0001
[    0.958789] b440  02d35ac8 ffff0001 00000001 00000000 00000001 00000000 030dd500 ffff0001
[    0.958800] b460  033dd7e0 ffff0001 80b7bf94 ffff8000 00000000 00000000 02a77010 ffff0001
[    0.958810] b480  00000000 00000000 80b7bf94 ffff8000 00000000 00000000 02a77010 ffff0001
[    0.958822] b4a0  00000000 00000000 52989800 d0d5da69 8306b520 ffff8000 80b5fe30 ffff8000
[    0.958834] Code: 394a0260 370001c0 f9409a60 b9421e61 (b902f801) 
[    0.958837] ---[ end trace 0000000000000000 ]---
[    0.958852] Kernel panic - not syncing: Attempted to kill init! exitcode=0x0000000b
[    0.958855] SMP: stopping secondary CPUs
[    0.958859] CPU4: stopping
[    0.958859] CPU7: stopping
[    0.958859] CPU6: stopping
[    0.958860] CPU1: stopping
[    0.958859] CPU2: stopping
[    0.958860] CPU3: stopping
[    0.958864] CPU: 4 PID: 0 Comm: swapper/4 Tainted: G      D            6.6.89-kdev #1
[    0.958870] Hardware name: AIoT 3588IED (DT)
[    0.958872] Call trace:
[    0.958874]  dump_backtrace+0x94/0x114
[    0.958880]  show_stack+0x18/0x24
[    0.958884]  dump_stack_lvl+0x78/0xc4
[    0.958894]  dump_stack+0x18/0x24
[    0.958901]  local_cpu_stop+0x8c/0x90
[    0.958908]  __cpu_up+0x0/0x1c0
[    0.958915]  handle_percpu_devid_irq+0x88/0x228
[    0.958922]  handle_irq_desc+0x40/0x58
[    0.958929]  generic_handle_domain_irq+0x1c/0x28
[    0.958936]  gic_handle_irq+0x128/0x258
[    0.958939]  call_on_irq_stack+0x24/0x4c
[    0.958945]  do_interrupt_handler+0x80/0x84
[    0.958951]  el1_interrupt+0x48/0xe4
[    0.958960]  el1h_64_irq_handler+0x18/0x24
[    0.958963]  el1h_64_irq+0x78/0x7c
[    0.958967]  default_idle_call+0x64/0x17c
[    0.958972]  do_idle+0x1ec/0x218
[    0.958980]  cpu_startup_entry+0x34/0x3c
[    0.958987]  secondary_start_kernel+0x138/0x188
[    0.958994]  __secondary_switched+0xb8/0xbc
[    0.959003] CPU0: stopping
[    0.959003] CPU: 1 PID: 0 Comm: swapper/1 Tainted: G      D            6.6.89-kdev #1
[    0.959012] Hardware name: AIoT 3588IED (DT)
[    0.959016] Call trace:
[    0.959019]  dump_backtrace+0x94/0x114
[    0.959029]  show_stack+0x18/0x24
[    0.959037]  dump_stack_lvl+0x78/0xc4
[    0.959050]  dump_stack+0x18/0x24
[    0.959061]  local_cpu_stop+0x8c/0x90
[    0.959071]  __cpu_up+0x0/0x1c0
[    0.959081]  handle_percpu_devid_irq+0x88/0x228
[    0.959091]  handle_irq_desc+0x40/0x58
[    0.959102]  generic_handle_domain_irq+0x1c/0x28
[    0.959113]  gic_handle_irq+0x128/0x258
[    0.959120]  call_on_irq_stack+0x24/0x4c
[    0.959129]  do_interrupt_handler+0x80/0x84
[    0.959139]  el1_interrupt+0x48/0xe4
[    0.959152]  el1h_64_irq_handler+0x18/0x24
[    0.959159]  el1h_64_irq+0x78/0x7c
[    0.959166]  default_idle_call+0x64/0x17c
[    0.959175]  do_idle+0x1ec/0x218
[    0.959186]  cpu_startup_entry+0x34/0x3c
[    0.959198]  secondary_start_kernel+0x138/0x188
[    0.959208]  __secondary_switched+0xb8/0xbc
[    0.959220] CPU: 2 PID: 0 Comm: swapper/2 Tainted: G      D            6.6.89-kdev #1
[    0.959230] Hardware name: AIoT 3588IED (DT)
[    0.959234] Call trace:
[    0.959237]  dump_backtrace+0x94/0x114
[    0.959247]  show_stack+0x18/0x24
[    0.959254]  dump_stack_lvl+0x78/0xc4
[    0.959267]  dump_stack+0x18/0x24
[    0.959278]  local_cpu_stop+0x8c/0x90
[    0.959288]  __cpu_up+0x0/0x1c0
[    0.959298]  handle_percpu_devid_irq+0x88/0x228
[    0.959307]  handle_irq_desc+0x40/0x58
[    0.959318]  generic_handle_domain_irq+0x1c/0x28
[    0.959329]  gic_handle_irq+0x128/0x258
[    0.959335]  call_on_irq_stack+0x24/0x4c
[    0.959345]  do_interrupt_handler+0x80/0x84
[    0.959354]  el1_interrupt+0x48/0xe4
[    0.959366]  el1h_64_irq_handler+0x18/0x24
[    0.959374]  el1h_64_irq+0x78/0x7c
[    0.959380]  default_idle_call+0x64/0x17c
[    0.959389]  do_idle+0x1ec/0x218
[    0.959400]  cpu_startup_entry+0x38/0x3c
[    0.959411]  secondary_start_kernel+0x138/0x188
[    0.959422]  __secondary_switched+0xb8/0xbc
[    0.959433] CPU: 7 PID: 0 Comm: swapper/7 Tainted: G      D            6.6.89-kdev #1
[    0.959439] Hardware name: AIoT 3588IED (DT)
[    0.959441] Call trace:
[    0.959443]  dump_backtrace+0x94/0x114
[    0.959449]  show_stack+0x18/0x24
[    0.959452]  dump_stack_lvl+0x78/0xc4
[    0.959461]  dump_stack+0x18/0x24
[    0.959468]  local_cpu_stop+0x8c/0x90
[    0.959474]  __cpu_up+0x0/0x1c0
[    0.959480]  handle_percpu_devid_irq+0x88/0x228
[    0.959486]  handle_irq_desc+0x40/0x58
[    0.959493]  generic_handle_domain_irq+0x1c/0x28
[    0.959500]  gic_handle_irq+0x128/0x258
[    0.959503]  call_on_irq_stack+0x24/0x4c
[    0.959509]  do_interrupt_handler+0x80/0x84
[    0.959515]  el1_interrupt+0x48/0xe4
[    0.959523]  el1h_64_irq_handler+0x18/0x24
[    0.959527]  el1h_64_irq+0x78/0x7c
[    0.959530]  default_idle_call+0x64/0x17c
[    0.959535]  do_idle+0x1ec/0x218
[    0.959543]  cpu_startup_entry+0x34/0x3c
[    0.959550]  secondary_start_kernel+0x138/0x188
[    0.959556]  __secondary_switched+0xb8/0xbc
[    0.959564] CPU: 6 PID: 0 Comm: swapper/6 Tainted: G      D            6.6.89-kdev #1
[    0.959570] Hardware name: AIoT 3588IED (DT)
[    0.959573] Call trace:
[    0.959574]  dump_backtrace+0x94/0x114
[    0.959580]  show_stack+0x18/0x24
[    0.959584]  dump_stack_lvl+0x78/0xc4
[    0.959593]  dump_stack+0x18/0x24
[    0.959600]  local_cpu_stop+0x8c/0x90
[    0.959606]  __cpu_up+0x0/0x1c0
[    0.959613]  handle_percpu_devid_irq+0x88/0x228
[    0.959618]  handle_irq_desc+0x40/0x58
[    0.959625]  generic_handle_domain_irq+0x1c/0x28
[    0.959632]  gic_handle_irq+0x128/0x258
[    0.959636]  call_on_irq_stack+0x24/0x4c
[    0.959641]  do_interrupt_handler+0x80/0x84
[    0.959647]  el1_interrupt+0x48/0xe4
[    0.959655]  el1h_64_irq_handler+0x18/0x24
[    0.959659]  el1h_64_irq+0x78/0x7c
[    0.959662]  default_idle_call+0x64/0x17c
[    0.959667]  do_idle+0x1ec/0x218
[    0.959674]  cpu_startup_entry+0x34/0x3c
[    0.959682]  secondary_start_kernel+0x138/0x188
[    0.959688]  __secondary_switched+0xb8/0xbc
[    0.959696] CPU: 3 PID: 0 Comm: swapper/3 Tainted: G      D            6.6.89-kdev #1
[    0.959706] Hardware name: AIoT 3588IED (DT)
[    0.959710] Call trace:
[    0.959713]  dump_backtrace+0x94/0x114
[    0.959723]  show_stack+0x18/0x24
[    0.959730]  dump_stack_lvl+0x78/0xc4
[    0.959742]  dump_stack+0x18/0x24
[    0.959753]  local_cpu_stop+0x8c/0x90
[    0.959763]  __cpu_up+0x0/0x1c0
[    0.959773]  handle_percpu_devid_irq+0x88/0x228
[    0.959782]  handle_irq_desc+0x40/0x58
[    0.959793]  generic_handle_domain_irq+0x1c/0x28
[    0.959804]  gic_handle_irq+0x128/0x258
[    0.959811]  call_on_irq_stack+0x24/0x4c
[    0.959820]  do_interrupt_handler+0x80/0x84
[    0.959830]  el1_interrupt+0x48/0xe4
[    0.959842]  el1h_64_irq_handler+0x18/0x24
[    0.959849]  el1h_64_irq+0x78/0x7c
[    0.959856]  default_idle_call+0x64/0x17c
[    0.959864]  do_idle+0x1ec/0x218
[    0.959875]  cpu_startup_entry+0x34/0x3c
[    0.959886]  secondary_start_kernel+0x138/0x188
[    0.959897]  __secondary_switched+0xb8/0xbc
[    0.959908] CPU: 0 PID: 102 Comm: rk-pcie Tainted: G      D            6.6.89-kdev #1
[    0.959918] Hardware name: AIoT 3588IED (DT)
[    0.959922] Call trace:
[    0.959925]  dump_backtrace+0x94/0x114
[    0.959936]  show_stack+0x18/0x24
[    0.959943]  dump_stack_lvl+0x78/0xc4
[    0.959955]  dump_stack+0x18/0x24
[    0.959966]  local_cpu_stop+0x8c/0x90
[    0.959976]  __cpu_up+0x0/0x1c0
[    0.959986]  handle_percpu_devid_irq+0x88/0x228
[    0.959995]  handle_irq_desc+0x40/0x58
[    0.960005]  generic_handle_domain_irq+0x1c/0x28
[    0.960016]  gic_handle_irq+0x128/0x258
[    0.960023]  call_on_irq_stack+0x24/0x4c
[    0.960032]  do_interrupt_handler+0x80/0x84
[    0.960042]  el1_interrupt+0x48/0xe4
[    0.960054]  el1h_64_irq_handler+0x18/0x24
[    0.960061]  el1h_64_irq+0x78/0x7c
[    0.960068]  _raw_spin_unlock_irqrestore+0xc/0x54
[    0.960080]  pci_scan_slot+0x188/0x200
[    0.960092]  pci_scan_child_bus_extend+0x44/0x2f8
[    0.960103]  pci_scan_root_bus_bridge+0x64/0xd8
[    0.960114]  pci_host_probe+0x18/0xc0
[    0.960125]  dw_pcie_host_init+0x250/0x628
[    0.960136]  rk_pcie_really_probe+0x4e4/0x9e8
[    0.960148]  kthread+0x110/0x114
[    0.960160]  ret_from_fork+0x10/0x20
[    0.960171] CRU REGS:
[    0.960173] LPLL         0x58040: 00000110 00000082 00000000 00000000 00000002 000007e0 00009c00 00000000
[    0.960183] B0PLL        0x50000: 00000110 00000082 00000000 00000000 00000002 000007e0 00009c00 00000000
[    0.960193] B1PLL        0x52020: 00000110 00000082 00000000 00000000 00000002 000007e0 00009c00 00000000
[    0.960201] GPLL         0x001c0: 000000c6 00000042 00000000 00000000 00000000 00000000 00009400 00000000
[    0.960209] CPLL         0x001a0: 000000fa 00000042 00000000 00000000 00000000 00000000 00009c00 00000000
[    0.960217] V0PLL        0x00160: 000000c6 00000042 00000000 00000000 00000000 00000000 00009400 00000000
[    0.960224] AUPLL        0x00180: 00000106 00000082 ffff24dd 00000000 00000000 00000000 00009c00 00000000
[    0.960232] PPLL         0x08200: 00000226 00000083 00000000 00000000 00000000 00000000 0000b400 00000000
[    0.960245] DSUCRU_SEL   0x58300: 0000b0c0 00001082 00000843 00000063 00000665 0000803f 00000000 00000000
[    0.960252] DSUCRU_GATE  0x58800: 00000000 00000000 00000020 00000000 00000000 00000000 00000000 00000000
[    0.960259] BIG0CRU_SEL  0x50300: 00000080 00005f80 00000001 00000000 00000000 00000000 00000000 00000000
[    0.960268] BIG0CRU_GATE 0x50800: 00000400 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.960276] BIG1CRU_SEL  0x52300: 00000080 00005f80 00000001 00000000 00000000 00000000 00000000 00000000
[    0.960284] BIG1CRU_GATE 0x52800: 00000400 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.960292] CRU_SEL      0x00300: 00000bbd 00000169 00000925 000000a1 00000881 00000881 00000820 00000020
[    0.960300] CRU_SEL      0x00320: 00000881 00000881 00000820 00000020 00000421 00000000 000030ff 00000000
[    0.960308] CRU_SEL      0x00340: 00000421 00000000 000030ff 00000000 00000000 00000000 00000000 0000bb9d
[    0.960315] CRU_SEL      0x00360: 00000000 00000000 00000000 0000bb9d 000000bb 00000200 00000000 00000000
[    0.960322] CRU_SEL      0x00380: 000000bb 00000200 00000000 00000000 00000000 00000000 00000000 00000000
[    0.960329] CRU_SEL      0x003a0: 00000000 00000000 00000000 00000000 00000010 03355460 00000007 03355460
[    0.960337] CRU_SEL      0x003c0: 00000010 03355460 00000007 03355460 0000001b 03355460 0000000f 03355460
[    0.960344] CRU_SEL      0x003e0: 0000001b 03355460 0000000f 03355460 0000000f 03355460 00000006 03355460
[    0.960352] CRU_SEL      0x00400: 0000000f 03355460 00000006 03355460 00000092 00000000 00000023 000002cb
[    0.960359] CRU_SEL      0x00420: 00000092 00000000 00000023 000002cb 0000074b 0000030b 001403de 00000006
[    0.960366] CRU_SEL      0x00440: 0000074b 0000030b 001403de 00000006 001403de 00000006 001403de 00000006
[    0.960374] CRU_SEL      0x00460: 001403de 00000006 001403de 00000006 001403de 00000006 001403de 00000006
[    0.960381] CRU_SEL      0x00480: 001403de 00000006 001403de 00000006 001403de 00000006 001403de 00000006
[    0.960388] CRU_SEL      0x004a0: 001403de 00000006 001403de 00000006 001403de 00000006 001403de 0000a002
[    0.960396] CRU_SEL      0x004c0: 001403de 00000006 001403de 0000a002 0000020a 00000041 000003ff 0000003f
[    0.960403] CRU_SEL      0x004e0: 0000020a 00000041 000003ff 0000003f 00000000 0000003f 00000000 0000c021
[    0.960411] CRU_SEL      0x00500: 00000000 0000003f 00000000 0000c021 00000000 00000000 00000000 00000000
[    0.960418] CRU_SEL      0x00520: 00000000 00000000 00000000 00000000 00000000 00007c84 00001010 00000000
[    0.960425] CRU_SEL      0x00540: 00000000 00007c84 00001010 00000000 00000000 00000590 00002005 00000000
[    0.960432] CRU_SEL      0x00560: 00000000 00000590 00002005 00000000 00000288 0000070e 00009d9d 00008b9d
[    0.960440] CRU_SEL      0x00580: 00000288 0000070e 00009d9d 00008b9d 0000049d 00000000 00000000 00000000
[    0.960447] CRU_SEL      0x005a0: 0000049d 00000000 00000000 00000000 00000000 00008100 00001801 00000001
[    0.960454] CRU_SEL      0x005c0: 00000000 00008100 00001801 00000001 00000000 00000300 000000e0 00000000
[    0.960462] CRU_GATE     0x00800: 00000000 00000000 00000150 00000000 00000000 00000000 00000000 00000003
[    0.960469] CRU_GATE     0x00820: 00000000 00000000 00000000 00000003 00000000 00000000 000000e0 00000000
[    0.960476] CRU_GATE     0x00840: 00000000 00000000 000000e0 00000000 00000400 00000000 00000020 00000000
[    0.960484] CRU_GATE     0x00860: 00000400 00000000 00000020 00000000 00000000 00000000 00002600 00000000
[    0.960491] CRU_GATE     0x00880: 00000000 00000000 00002600 00000000 0000aa05 000000a0 00000263 0000aa05
[    0.960498] CRU_GATE     0x008a0: 0000aa05 000000a0 00000263 0000aa05 000000a0 00000263 00000000 00000000
[    0.960506] CRU_GATE     0x008c0: 000000a0 00000263 00000000 00000000 00000000 00000004 00000000 00000000
[    0.960513] CRU_GATE     0x008e0: 00000000 00000004 00000000 00000000 00000000 00000000 00000000 00000000
[    0.960520] CRU_GATE     0x00900: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.960527] CRU_GATE     0x00920: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.960534] PMUCRU_SEL   0x30300: 000000b7 00000400 00000420 00000080 001403de 00000006 03355460 00000007
[    0.960543] PMUCRU_SEL   0x30320: 001403de 00000006 03355460 00000007 03355460 0000000b 00000000 00000000
[    0.960551] PMUCRU_SEL   0x30340: 03355460 0000000b 00000000 00000000 00000000 00000000 00000000 00000000
[    0.960558] PMUCRU_GATE  0x30800: 00000000 00003000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.960567] PMU:
[    0.960569] pwr       0x014c: 0000fff9 00000011 00000000 00000000
[    0.960575] status    0x0180: 0011fff9 00000000 00000000 00000000
[    0.960580] req       0x010c: 00000100 00000002 00000000 00021fff
[    0.960585] idle      0x0120: 00021fff 00000000 0000ffff 0000ffff
[    0.960591] ack       0x0118: 00021fff 00000000 00021fff 00000000
[    0.960596] mem_pwr   0x01a0: 00000000 00000000 00000000 00000000
[    0.960601] chain_st  0x01f0: ee0006ff 000003ff 11fff900 00000000
[    0.960607] mem_st    0x01f8: 11fff900 00000000 00000203 00000001
[    0.960612] repair_st 0x0290: fff70001 000301ff 00000000 00000000
[    0.960619] THERMAL REGS:
[    0.960625] 00000000: 00000100 00000001 00000007 0000007f 00000000 0000007f 00000000 0000007f
[    0.960632] 00000020: 00000000 00000000 00000000 00000127 00000127 00000127 00000127 00000127
[    0.960638] 00000040: 00000127 00000127 00000000 00000000 00000000 00000000 00000000 00000000
[    0.960644] 00000060: 00000000 00000000 00000000 0000013e 00000180 00000180 00000180 00000180
[    0.960648] 00000080: 00000180 00000180
[    0.960650] Kernel Offset: disabled
[    0.960651] CPU features: 0x1,c0000000,70028143,1001720b
[    0.960655] Memory Limit: none


```


