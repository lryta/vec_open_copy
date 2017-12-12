#!/bin/bash
sudo bash -c 'echo 3 >/proc/sys/vm/drop_caches'
echo "Original verseion:"
rm /tmp/test_1 -rf
time cp /tmp/test /tmp/test_1 -r
sudo bash -c 'echo 3 >/proc/sys/vm/drop_caches'
echo "Vec_open verseion:"
rm /tmp/test_2 -rf
time ./src/cp /tmp/test /tmp/test_2 -r
