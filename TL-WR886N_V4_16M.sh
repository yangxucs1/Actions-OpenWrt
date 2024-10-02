##### 修改TL-WR886N_V4编译文件16M #####
sed -i 's/tplink-4mlzma/tplink-16mlzma/g' target/linux/ath79/image/tiny-tp-link.mk
sed -i 's/<0x020000 0x3d0000>/<0x020000 0xfd0000>/g' target/linux/ath79/dts/tp9343_tplink_tl-wx.dtsi
sed -i 's/<0x3f0000 0x010000>/<0xff0000 0x010000>/g' target/linux/ath79/dts/tp9343_tplink_tl-wx.dtsi

##### 修改交换机网口 #####
sed -i 's/ucidef_set_interface_wan "eth1"/ucidef_set_interfaces_lan_wan "eth0" "eth1"/g' target/linux/ath79/tiny/base-files/etc/board.d/02_network

##### 修改网口指示灯 #####
sed -i 's/" "blue:/" "green:/g' target/linux/ath79/tiny/base-files/etc/board.d/01_leds

##### 修改GPIO #####
sed -i 's/blue/green/g' target/linux/ath79/dts/tp9343_tplink_tl-wr940n-v3.dtsi
sed -i 's/"green:system/"white:system/g' target/linux/ath79/dts/tp9343_tplink_tl-wr940n-v3.dtsi
sed -i '/label = "green:wan"/{n;s/14/2/;}' target/linux/ath79/dts/tp9343_tplink_tl-wr940n-v3.dtsi
sed -i '/label = "green:lan1"/{n;s/7/4/;}' target/linux/ath79/dts/tp9343_tplink_tl-wr940n-v3.dtsi
sed -i '/label = "green:lan2"/{n;s/6/5/;}' target/linux/ath79/dts/tp9343_tplink_tl-wr940n-v3.dtsi
sed -i '/label = "green:lan3"/{n;s/5/6/;}' target/linux/ath79/dts/tp9343_tplink_tl-wr940n-v3.dtsi
sed -i '/label = "green:lan4"/{n;s/4/7/;}' target/linux/ath79/dts/tp9343_tplink_tl-wr940n-v3.dtsi
