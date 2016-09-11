#!/bin/sh

#   personal arch linux install script
#   do not use, may break things
#
#   https://github.com/ryankeleti


#   function to add confirmation prompt
step () {
  local RC=$?
  echo ':: do you wish to continue [Y/n]   '
  read local input
  if [ $input -eq 'n' ]; then exit
  else
    ;;
  fi
}

#   function to get network status
isup () { 
  local RC=$?
  ping -c3 8.8.8.8
  if [[ $RC -eq 0 ]] ; then 
  else
  fi
}

#   function to configure time settings
timeset () {
  local RC=$?
  timedatectl set-ntp true
  timedatectl set-timezone America/New_York
  timedatectl status
  timedatectl status | grep 'EDT'
  if [ $RC -eq 0 ] ; then ;
  else ; ;
  fi
}

#   function to partition the disks
diskset () {
  echo ':: do you want to lsblk [Y/n]   '
  read local input
  if [ $input -eq 'n' ]; then ;;
  else
    lsblk
  fi
  echo ':: disk to partition    '
  read whatdisk
  cfdisk $whatdisk
  echo ':: partition ext4 on   '
  read whatext
  mkfs.ext4 $whatext
  echo ':: partition swap on   '
  read whatswap
  if [ $whatswap -eq 'n' ]; then exit
  else
    mkswap $whatswap
  fi
  lsblk | grep $whatdisk
  mount $whatext /mnt
  swapon -L $whatswap
}

#   function to edit host info
hostset () {
  echo '/etc/hostname   '
  read etchostname
  echo $etchostname >> /etc/hostname
  echo `cat /etc/hostname`
  nano /etc/hosts
  cat /etc/hosts
  hostname
  hostnamectl status
}

grubin () {
  echo ':: grub-install on  '
  read $grubpart
  grub-install $grubpart
  grub-mkconfig -o /boot/grub/grub.cfg
}

ls /sys/firmware/efi/efivars
isup
timeset
loadkeys de-latin1
lsblk && lsblk -f

echo 'disk setup w/ cfdisk'
step
diskset

echo 'pacstrap -i /mnt base base-devel grub'
step
pacstrap -i /mnt base base-devel grub

echo 'genfstab -U /mnt >> /mnt/ftsab'
step
genfstab -U /mnt >> /mnt/etc/fstab


echo 'arch-chroot /mnt /bin/bash'
step
arch-chroot /mnt /bin/bash

echo 'set hostname & hosts'
step
hostset

locale-gen
locale
loadkeys de-latin1
tzselect
hwclock --systohc --utc

echo 'pacman -S --noconfirm wpa_supplicant dialog vim'
step
pacman -S --noconfirm wpa_supplicant dialog vim

echo 'grub-install  [/dev/somedisk]'
step
grubin

echo 'passwd root'
step
passwd root

echo 'exit, unmount, reboot'
step
exit
umount -R /mnt
reboot

