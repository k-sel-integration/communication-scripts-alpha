#!/bin/sh
olddir=`pwd`

cd ~
mkdir .kselsupp 1>/dev/null 2>/dev/null
cd .kselsupp

cat urlstor 2>/dev/null
code=$?

if [ "$code" = "0" ] ; then 
scriptway=`printenv K_SEL_SUPPORT_FOLDER`
  if [ -f "./multflag" ] ; then 
    sh "$scriptway"createdelay.sh  1>/dev/null 2>/dev/null
  else 
    sh "$scriptway"clearstate.sh 1>/dev/null 2>/dev/null
  fi
fi 

cd $olddir 
exit $code