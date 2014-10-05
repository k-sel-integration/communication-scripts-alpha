#!/bin/sh
olddir=`pwd`
scriptway=`printenv K_SEL_SUPPORT_FOLDER`
sh "$scriptway"clearstate.sh
cd ~/.kselsupp
echo $1>urlstor
if [ "$2" = "1" ] ; then 
  touch multflag
fi 
echo $3>mindelstor
echo $4>maxdelstor
sh "$scriptway"createdelay.sh 1>/dev/null 2>/dev/null
cd $olddir
