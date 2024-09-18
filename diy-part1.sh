#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
echo 'src-git smpackage https://github.com/kenzok8/small-package' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default

#更改TL-WDR7500闪存大小
sed -i 's/0x7d0000/0xfd0000/g;s/7f0000/ff0000/g' /target/linux/ath79/qca9558_tplink_tl-wdr7500-v3.dts
sed -i '621s/8/16/' /target/linux/ath79/image/generic-tp-link.mk
