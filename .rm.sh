#!/bin/bash

RecyclePath="$HOME/Recycle"

timeNow=`date +"%Y%m%d"`

name=`echo $1 | sed -e "s/\///g"`

count=`ls $RecyclePath | grep $name | wc -l`

((No=$count+1))

if [ $count -gt 0 ];then
    targetName="$timeNow_$name_$No"
else
    targetName="$timeNow_$name"
fi
echo $targetName

mv $1 $RecyclePath/$targetName
