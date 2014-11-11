#!/bin/sh
olddir=`pwd`

cd ~
mkdir .kselsupp 1>/dev/null 2>/dev/null
cd .kselsupp

prevout=`cat urlstor 2>/dev/null`
if [ "$?" = "0" ] ; then 
 echo "current file:"$prevout
   if [ -f $prevout ]
   then
      echo "(exists)"
   else
     echo  "(not exists)"
   fi
else
 echo "current file not avaliable"
fi 


prevout=`cat multflag 2>/dev/null`
if [ "$?" = "0" ] ; then 
 echo "autoclear disabled"
else
 echo "autoclear enabled"
fi 


prevout=`cat mindelstor 2>/dev/null`
if [ "$?" = "0" ] ; then 
 echo "minimal delay: "$prevout
else
 echo "minimal delay not avaliable"
fi 

prevout=`cat maxdelstor 2>/dev/null`
if [ "$?" = "0" ] ; then 
 echo "maximal delay: "$prevout
else
 echo "maximal delay not avaliable"
fi 

prevout=`cat curdelstor 2>/dev/null`
if [ "$?" = "0" ] ; then 
 echo "next delay: "$prevout
else
 echo "next delay not avaliable"
fi 


cd $olddir
