#!/bin/bash
source in_container/in_chroot/functions/functions.sh

start_container archlinux/base

cd in_container
convert_image
