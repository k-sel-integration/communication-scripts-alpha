#!/bin/sh
olddir=`pwd`

cd ~
mkdir .kselsupp 1>/dev/null 2>/dev/null
cd .kselsupp
    
ls | xargs rm -f


cd $olddir
