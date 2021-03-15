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


# Add luci-app-serverchan
git clone https://github.com/xiaoqingfengATGH/feeds-xiaoqingfeng
cp -r feeds-xiaoqingfeng/luci-app-serverchan `pwd`/package/lean/
rm -rf feeds-xiaoqingfeng


# Add Kcptun
#git clone https://github.com/kuoruan/luci-app-kcptun.git `pwd`/package/luci-app-kcptun


# Add PSW dep+
#git clone https://github.com/Lienol/openwrt-package
#cp -r openwrt-package/lienol/luci-app-passwall `pwd`/package/lean/
#cp -r openwrt-package/package/{tcping,brook,chinadns-ng,trojan-go,trojan-plus} `pwd`/package/lean/
#rm -rf openwrt-package


# From 281677160/openwrt-package
git clone https://github.com/281677160/openwrt-package
# Add luci-app-gost, 加密隧道
cp -r openwrt-package/{luci-app-gost,gost} `pwd`/package/lean/
# Add luci-app-serverchand, 钉钉
cp -r openwrt-package/luci-app-serverchand `pwd`/package/lean/
# Add luci-app-socat, 端口转发
cp -r openwrt-package/luci-app-socat `pwd`/package/lean/
# Add luci-app-smartinfo, 磁盘监控, 该工具帮助您通过S.M.A.R.T技术来监控您硬盘的健康状况
cp -r openwrt-package/luci-app-smartinfo `pwd`/package/lean/
# Add luci-app-control-webrestriction, 访问限制
cp -r openwrt-package/luci-app-control-webrestriction `pwd`/package/lean/
# Add luci-app-control-weburl, 网址过滤
cp -r openwrt-package/luci-app-control-weburl `pwd`/package/lean/
# Add luci-app-gowebdav, GoWebDav
cp -r openwrt-package/{luci-app-gowebdav,gowebdav} `pwd`/package/lean/
# Add luci-app-ttnode, 一个运行在openwrt下的甜糖星愿自动采集插件
cp -r openwrt-package/luci-app-ttnode `pwd`/package/lean/
# Add luci-app-syncthing, 一个连续的文件同步程序, 它在两台或多台计算机之间同步文件
cp -r openwrt-package/luci-app-syncthing `pwd`/package/lean/
# Add luci-app-oaf, OpenAppFilter应用过滤, 该模块只工作在路由模式, 旁路模式/桥模式不生效, 和Turbo ACC 网络加速有冲突
cp -r openwrt-package/luci-app-oaf `pwd`/package/lean/
rm -rf openwrt-package


# From kenzok8/openwrt-packages
git clone https://github.com/kenzok8/openwrt-packages
# Add luci-app-gost
#cp -r openwrt-packages/{luci-app-gost,gost} `pwd`/package/lean/
# Add luci-app-openclash
cp -r openwrt-packages/luci-app-openclash `pwd`/package/lean/
# Add luci-app-clash
cp -r openwrt-packages/luci-app-clash `pwd`/package/lean/
rm -rf openwrt-packages


# Add HelloWorld, lua-maxminddb dep+
#rm -rf `pwd`/package/lean/luci-theme-argon
#git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git
#git clone https://github.com/jerrykuku/lua-maxminddb.git
#git clone https://github.com/jerrykuku/luci-app-vssr.git 
#mv luci-theme-argon lua-maxminddb luci-app-vssr `pwd`/package/lean/


./scripts/feeds update -a
