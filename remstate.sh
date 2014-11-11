#!/bin/sh
olddir=`pwd`

cd ~
mkdir .kselsupp 1>/dev/null 2>/dev/null
cd .kselsupp

way=`cat urlstor 2>/dev/null`
if [ "$?" = "0" ] ; then 
   if [ -f $way ]
   then
       rm -f $way
   fi
fi 




cd $olddir
