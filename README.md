clone:    
git clone --recurse-submodules https://github.com/acrlinux/qemu-based-minimal-arm-os.git  

Building:

./build_vexpress-a9.sh

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
