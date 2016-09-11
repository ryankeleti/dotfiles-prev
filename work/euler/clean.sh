#!/bin/sh

cd $HOME/work/euler
mv *.c tmp/
rm p*
mv tmp/*.c .
echo :: done

