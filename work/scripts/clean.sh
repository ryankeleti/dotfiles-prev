#!/bin/sh

cd $HOME/work/
mv *.c *.sh Makefile functions.h tmp/
rm -i *
mv tmp/* .
echo :: done

