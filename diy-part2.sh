#!/bin/bash

# 修改IP
sed -i 's/192.168.1.1/192.168.1.2/g' package/base-files/files/bin/config_generate
# 修改主机名
#sed -i 's/ImmortalWrt/OpenWrt/g' package/base-files/files/bin/config_generate

# 修改默认主题
sed -i 's/luci-theme-design/luci-theme-argon/g' feeds/luci/collections/luci/Makefile
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# 删除及其拉取源码
rm -rf package/luci-app-amlogic
git clone https://github.com/ophub/luci-app-amlogic.git package/luci-app-amlogic
