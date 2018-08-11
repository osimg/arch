#!/bin/bash
source /in_container/in_chroot/functions/functions.sh

cd /in_container

create_disk 8192

_echo "Bootstrapping target OS"
pacstrap /target base intel-ucode grub terminus-font kbd

make_fstab

cp -rp /in_container/in_chroot /target
arch-chroot /target /in_chroot/build.sh

disk_clean

umount_disk

exit
