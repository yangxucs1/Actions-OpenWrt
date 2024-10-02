##### TL-WDR7500_V3 修改编译文件16M #####
sed -i 's/tplink-4mlzma/tplink-16mlzma/g' target/linux/ath79/image/generic-tp-link.mk
sed -i 's/<0x020000 0x7d0000>/<0x020000 0xfd0000>/g' target/linux/ath79/dts/qca9558_tplink_tl-wdr7500-v3.dts
sed -i 's/partition@7f0000/partition@ff0000/g' target/linux/ath79/dts/qca9558_tplink_tl-wdr7500-v3.dts
sed -i 's/<0x7f0000 0x010000>/<0xff0000 0x010000>/g' target/linux/ath79/dts/qca9558_tplink_tl-wdr7500-v3.dts
