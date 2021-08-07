#!/bin/bash
#=============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=============================================================

# Add 3rd packages lean: ssr+
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default
sed -i '$a src-git helloworld https://github.com/fw876/helloworld' feeds.conf.default

# Add 3rd packages lienol: passwall,syncthing
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
#sed -i '$a src-git passwall https://github.com/xiaorouji/openwrt-passwall' feeds.conf.default

# Add 3rd packages kenzok8: passwall,ssr+,vssr,gost,smartdns,serverchan,jd-dailybonus
#sed -i '$a src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
#sed -i '$a src-git small https://github.com/kenzok8/small' feeds.conf.default

# Add 3rd packages homelede: homeconnect,ssr+,smartdns,serverchan,jd-dailybonus
#sed -i '$a src-git xiaoqingfeng https://github.com/xiaoqingfengATGH/feeds-xiaoqingfeng' feeds.conf.default

# Add 3rd packages 281677160: clash,openclash,vssr,gost,gowebdav,pushbot,serverchan,smartdns,syncthing,ttnode,oaf
sed -i '$a src-git 281677160 https://github.com/281677160/openwrt-package' feeds.conf.default
