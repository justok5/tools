#!/bin/bash

lower()
{
  DIR=$*
  for f in ${DIR}/*
  do
    fl=$(echo $f|tr A-Z a-z)
    mv $f $fl 2>/dev/null
    echo $f
    if [ -d $fl ] 
    then 
        lower $fl
    fi
  done
}

if [ $# == 0 ] 
then
    DIR=`pwd`
else
    DIR=$*
fi 
lower $DIR

