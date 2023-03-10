#!/bin/bash
#

## Add SmartDNS
#WORKINGDIR="`pwd`/feeds/packages/net/smartdns"
#mkdir $WORKINGDIR -p
#rm $WORKINGDIR/* -fr
#wget https://github.com/pymumu/openwrt-smartdns/archive/master.zip -O $WORKINGDIR/master.zip
#unzip $WORKINGDIR/master.zip -d $WORKINGDIR
#mv $WORKINGDIR/openwrt-smartdns-master/* $WORKINGDIR/
#rmdir $WORKINGDIR/openwrt-smartdns-master
#rm $WORKINGDIR/master.zip
#
## master分支  为openwrt 19.07之后版本使用, 此版本基于javascript
## lede分支    为lede分支使用, 此版本基于lua
#LUCIBRANCH="lede"
#
#WORKINGDIR="`pwd`/feeds/luci/applications/luci-app-smartdns"
#mkdir $WORKINGDIR -p
#rm $WORKINGDIR/* -fr
#wget https://github.com/pymumu/luci-app-smartdns/archive/${LUCIBRANCH}.zip -O $WORKINGDIR/${LUCIBRANCH}.zip
#unzip $WORKINGDIR/${LUCIBRANCH}.zip -d $WORKINGDIR
#mv $WORKINGDIR/luci-app-smartdns-${LUCIBRANCH}/* $WORKINGDIR/
#rmdir $WORKINGDIR/luci-app-smartdns-${LUCIBRANCH}
#rm $WORKINGDIR/${LUCIBRANCH}.zip


# From 281677160/openwrt-package
git clone https://github.com/281677160/openwrt-package
GITCLONE_APP="openwrt-package/feeds/luci/applications"
GITCLONE_NET="openwrt-package/feeds/packages/net"
GITCLONE_UTILS="openwrt-package/feeds/packages/utils"

LUCI_APP_PATH="`pwd`/feeds/luci/applications"
LUCI_NET_PATH="`pwd`/feeds/packages/net"
LUCI_UTILS_PATH="`pwd`/feeds/packages/utils"

## Add gost
#mv ${GITCLONE_APP}/luci-app-gost ${LUCI_APP_PATH}/
#mv ${GITCLONE_NET}/gost ${LUCI_NET_PATH}/
## Add gowebdav
#mv ${GITCLONE_APP}/luci-app-gowebdav ${LUCI_APP_PATH}/
#mv ${GITCLONE_NET}/gowebdav ${LUCI_NET_PATH}/
# Add luci-app-syncthing
mv ${GITCLONE_APP}/luci-app-syncthing ${LUCI_APP_PATH}/
# Add luci-app-pushbot
mv ${GITCLONE_APP}/luci-app-pushbot ${LUCI_APP_PATH}/
## Add luci-app-serverchan
#mv ${GITCLONE_APP}/luci-app-serverchan ${LUCI_APP_PATH}/
# Add luci-app-ttnode
mv ${GITCLONE_APP}/luci-app-ttnode ${LUCI_APP_PATH}/
rm -rf openwrt-package


## Add Kcptun
#git clone https://github.com/kuoruan/luci-app-kcptun.git `pwd`/package/luci-app-kcptun


## Add PSW dep+
#git clone https://github.com/Lienol/openwrt-package
#cp -r openwrt-package/lienol/luci-app-passwall `pwd`/package/lean/
#cp -r openwrt-package/package/{tcping,brook,chinadns-ng,trojan-go,trojan-plus} `pwd`/package/lean/
#rm -rf openwrt-package


## Add GOST
#git clone https://github.com/kenzok8/openwrt-packages
#cp -r openwrt-packages/gost `pwd`/package/lean/
#rm -rf openwrt-packages


./scripts/feeds update -a
