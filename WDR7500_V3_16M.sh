##### 更改TL-WDR7500修改编译文件16M #####
sed -i 's/0x7d0000/0xfd0000/g' target/linux/ath79/dts/qca9558_tplink_tl-wdr7500-v3.dts
sed -i 's/7f0000/ff0000/g' target/linux/ath79/dts/qca9558_tplink_tl-wdr7500-v3.dts
sed -i 's/$(Device/tplink-8mlzma)/$(Device/tplink-16mlzma)/g' target/linux/ath79/image/generic-tp-link.mk
