#!/bin/bash

# 修改IP
sed -i 's/192.168.1.1/192.168.1.4/g' package/base-files/files/bin/config_generate

# 设置密码为空（安装固件时无需密码登陆，然后自己修改想要的密码）
sed -i 's/root:::0:99999:7:::/root::0:0:99999:7:::/g' package/base-files/files/etc/shadow

# 修改默认主题
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile
