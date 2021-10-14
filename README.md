clone:    
git clone --recurse-submodules https://github.com/acrlinux/qemu-based-minimal-arm-os.git  

Building:

./build_qemu_arm.sh

```
#################################################################################

############################Utility to Build ACR OS##############################

#################################################################################

Help message --help

Build All: --build-all

Rebuild All: --rebuild-all

Clean All: --clean-all

Wipe and rebuild --wipe-rebuild

Building kernel: --build-kernel --rebuild-kernel --clean-kernel

Building busybx: --build-busybox --rebuild-busybox --clean-busybox

Building uboot: --build-uboot --rebuild-uboot  --clean-uboot

Building other soft: --build-other --rebuild-other --clean-other

Creating root-fs: --create-rootfs

Create ISO Image: --create-img

Cleaning work dir: --clean-work-dir

Test with Qemu --Run-qemu

###################################################################################
```  


./build_qemu_arm.sh --Run-qemu     

```
U-Boot 2019.10 (Oct 14 2021 - 23:41:24 +0530)

DRAM:  128 MiB
WARNING: Caches not enabled
Flash: 128 MiB
*** Warning - bad CRC, using default environment

In:    pl011@9000000
Out:   pl011@9000000
Err:   pl011@9000000
Net:   No ethernet found.
Hit any key to stop autoboot:  0
=>

```
