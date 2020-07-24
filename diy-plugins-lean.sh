#!/bin/bash
#

# Add SmartDNS
WORKINGDIR="`pwd`/feeds/packages/net/smartdns"
mkdir $WORKINGDIR -p
rm $WORKINGDIR/* -fr
wget https://github.com/pymumu/openwrt-smartdns/archive/master.zip -O $WORKINGDIR/master.zip
unzip $WORKINGDIR/master.zip -d $WORKINGDIR
mv $WORKINGDIR/openwrt-smartdns-master/* $WORKINGDIR/
rmdir $WORKINGDIR/openwrt-smartdns-master
rm $WORKINGDIR/master.zip

# master分支  为openwrt 19.07之后版本使用, 此版本基于javascript
# lede分支    为lede分支使用, 此版本基于lua
LUCIBRANCH="lede"

WORKINGDIR="`pwd`/feeds/luci/applications/luci-app-smartdns"
mkdir $WORKINGDIR -p
rm $WORKINGDIR/* -fr
wget https://github.com/pymumu/luci-app-smartdns/archive/${LUCIBRANCH}.zip -O $WORKINGDIR/${LUCIBRANCH}.zip
unzip $WORKINGDIR/${LUCIBRANCH}.zip -d $WORKINGDIR
mv $WORKINGDIR/luci-app-smartdns-${LUCIBRANCH}/* $WORKINGDIR/
rmdir $WORKINGDIR/luci-app-smartdns-${LUCIBRANCH}
rm $WORKINGDIR/${LUCIBRANCH}.zip


# Add PSW dep+
git clone https://github.com/Lienol/openwrt-package
cp -r openwrt-package/lienol/luci-app-passwall `pwd`/package/lean/
cp -r openwrt-package/package/{tcping,brook,chinadns-ng,trojan-go} `pwd`/package/lean/
rm -rf openwrt-package


# Add GOST, CLASH
git clone https://github.com/kenzok8/openwrt-packages
cp -r openwrt-packages/{gost,luci-app-gost,luci-app-openclash,luci-app-clash} `pwd`/package/lean/
rm -rf openwrt-packages


./scripts/feeds update -a
