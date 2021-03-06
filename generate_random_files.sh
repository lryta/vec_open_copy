#!/bin/bash
ROOT=/tmp/
#Number of levels
N=20
#Number of 4k files to generate
NFILES=1024

cd $ROOT

rm -r test
for ((i=1;i<=N;i++))
do
  mkdir test
  cd test
done

for ((i=1;i<=NFILES;i++))
do
  dd if=/dev/urandom of=file${i}.txt bs=1024 count=4
done
