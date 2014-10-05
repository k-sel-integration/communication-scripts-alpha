#!/bin/sh
mind=`cat mindelstor`
maxd=`cat maxdelstor`
awk -v mid=$mind -vmad=$maxd 'BEGIN{srand(); print mid + int((mad-mid)*rand()) }' >curdelstor