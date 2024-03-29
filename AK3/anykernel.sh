# AnyKernel3 Ramdisk Mod Script
# osm0sis @ xda-developers

## AnyKernel setup
# begin properties
properties() { '
kernel.string=Sadra Kernel for Redmi 6 Pro by ndrancs @ xda-developers
do.devicecheck=1
do.modules=1
do.cleanup=1
do.cleanuponabort=1
device.name1=sakura
device.name2=sakura_india
device.name3=Redmi 6 Pro
device.name4=
device.name5=
supported.versions=9
supported.patchlevels=
'; } # end properties

# shell variables
block=/dev/block/bootdevice/by-name/boot;
is_slot_device=0;
ramdisk_compression=auto;

## AnyKernel methods (DO NOT CHANGE)
# import patching functions/variables - see for reference
. tools/ak3-core.sh;


## AnyKernel file attributes
# set permissions/ownership for included ramdisk files
set_perm_recursive 0 0 755 644 $ramdisk/*;
set_perm_recursive 0 0 750 750 $ramdisk/init* $ramdisk/sbin;


## AnyKernel install
dump_boot;

# begin ramdisk changes

# init.rc

# init.tuna.rc

# fstab.tuna

# end ramdisk changes

write_boot;
## end install

