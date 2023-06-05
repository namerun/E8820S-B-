#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default

wget http://www.222.run/02/mt7621_zte_e8820s.dts

wget http://www.222.run/02/mt7621.mk

wget http://www.222.run/02/01_leds

wget http://www.222.run/02/platform.sh

wget http://www.222.run/02/image.mk

rm -rf ./target/linux/ramips/dts/mt7621_zte_e8820s.dts

rm -rf ./target/linux/ramips/image/mt7621.mk

rm -rf ./target/linux/ramips/mt7621/base-files/etc/board.d/01_leds

rm -rf ./target/linux/ramips/mt7621/base-files/lib/upgrade/platform.sh

rm -rf ./include/image.mk

cp mt7621_zte_e8820s.dts ./target/linux/ramips/dts/

cp mt7621.mk ./target/linux/ramips/image/

cp 01_leds ./target/linux/ramips/mt7621/base-files/etc/board.d/

cp platform.sh ./target/linux/ramips/mt7621/base-files/lib/upgrade/

cp image.mk ./include/
