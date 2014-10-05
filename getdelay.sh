#!/bin/sh
olddir=`pwd`

cd ~
mkdir .kselsupp 1>/dev/null 2>/dev/null
cd .kselsupp

cat curdelstor 2>/dev/null
code=$?
cd $olddir
exit $code