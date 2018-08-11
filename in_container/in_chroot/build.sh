#!/bin/bash
source /in_chroot/functions/functions.sh

grub-mkconfig -o /boot/grub/grub.cfg
DISK=$(cat /in_chroot/device)
grub-install $DISK
set_password
enable_dhcp

_echo "Clean disk space"
pacman -Scc --noconfirm
rm -rf /var/cache/pacman/pkg
exit
