#!/bin/sh

file=/usr/share/X11/locale/en_US.UTF-8/Compose

echo
read search

cat $file | grep -i $search

