#!/bin/bash
#

# Add GOST
git clone https://github.com/kenzok8/openwrt-packages
cp -r openwrt-packages/gost `pwd`/package/lean/
rm -rf openwrt-packages


./scripts/feeds update -a
