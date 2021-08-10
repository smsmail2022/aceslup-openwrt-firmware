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


# Add Kcptun
#git clone https://github.com/kuoruan/luci-app-kcptun.git `pwd`/package/luci-app-kcptun


# From 281677160/openwrt-package: clash,openclash,vssr,gost,gowebdav,pushbot,serverchan,smartdns,syncthing,ttnode,oaf
git clone https://github.com/281677160/openwrt-package
GITCLONE_APP="openwrt-package/feeds/luci/applications"
GITCLONE_NET="openwrt-package/feeds/packages/net"
GITCLONE_UTILS="openwrt-package/feeds/packages/utils"

LUCI_APP_PATH="`pwd`/feeds/luci/applications" && mkdir -pv ${LUCI_APP_PATH}
LUCI_NET_PATH="`pwd`/feeds/packages/net" && mkdir -pv ${LUCI_NET_PATH}
LUCI_UTILS_PATH="`pwd`/feeds/packages/utils" && mkdir -pv ${LUCI_UTILS_PATH}

# Add gost
mv ${GITCLONE_APP}/luci-app-gost ${LUCI_APP_PATH}/
mv ${GITCLONE_NET}/gost ${LUCI_NET_PATH}/
# Add gowebdav
mv ${GITCLONE_APP}/luci-app-gowebdav ${LUCI_APP_PATH}/
mv ${GITCLONE_NET}/gowebdav ${LUCI_NET_PATH}/
# Add luci-app-syncthing
#mv ${GITCLONE_APP}/luci-app-syncthing ${LUCI_APP_PATH}/
# Add luci-app-pushbot
mv ${GITCLONE_APP}/luci-app-pushbot ${LUCI_APP_PATH}/
# Add luci-app-serverchan
mv ${GITCLONE_APP}/luci-app-serverchan ${LUCI_APP_PATH}/
# Add luci-app-ttnode
mv ${GITCLONE_APP}/luci-app-ttnode ${LUCI_APP_PATH}/
rm -rf openwrt-package


# From kenzok8/openwrt-packages: passwall,ssr+,vssr,gost,smartdns,serverchan,jd-dailybonus
#git clone https://github.com/kenzok8/openwrt-packages
# Add luci-app-gost
#cp -r openwrt-packages/{luci-app-gost,gost} `pwd`/package/lean/
# Add luci-app-openclash
#cp -r openwrt-packages/luci-app-openclash `pwd`/package/lean/
# Add luci-app-clash
#cp -r openwrt-packages/luci-app-clash `pwd`/package/lean/
#rm -rf openwrt-packages


# Add HelloWorld, lua-maxminddb dep+
#rm -rf `pwd`/package/lean/luci-theme-argon
#git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git
#git clone https://github.com/jerrykuku/lua-maxminddb.git
#git clone https://github.com/jerrykuku/luci-app-vssr.git 
#mv luci-theme-argon lua-maxminddb luci-app-vssr `pwd`/package/lean/


# Add openwrt-xray, luci-app-xray
#git clone https://github.com/yichya/openwrt-xray
#git clone https://github.com/yichya/luci-app-xray
#LUCI_NET_PATH="`pwd`/feeds/packages/net"
#LUCI_APP_PATH="`pwd`/feeds/luci/applications"
#mv openwrt-xray ${LUCI_NET_PATH}
#mv luci-app-xray ${LUCI_APP_PATH}


# From xiaoqingfengATGH/feeds-xiaoqingfeng: homeconnect,ssr+,smartdns,serverchan,jd-dailybonus
# Add luci-app-homeconnect
git clone https://github.com/xiaoqingfengATGH/feeds-xiaoqingfeng.git
mv feeds-xiaoqingfeng/luci-app-homeconnect `pwd`/package/lean/
mv feeds-xiaoqingfeng/softethervpn5 `pwd`/package/lean/
rm -rf feeds-xiaoqingfeng

