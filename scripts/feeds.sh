#!/bin/bash

# Main Feeds
sed -i '$a src-git kiddin https://github.com/kiddin9/openwrt-packages' feeds.conf.default
# sed -i '$a src-git small_package https://github.com/kenzok8/small-package' feeds.conf.default
# sed -i '$a src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
# sed -i '$a src-git small https://github.com/kenzok8/small' feeds.conf.default

# Extra Packages
sed -i '$a src-git 3ginfo_lite https://github.com/4IceG/luci-app-3ginfo-lite' feeds.conf.default
sed -i '$a src-git lite_watchdog https://github.com/4IceG/luci-app-lite-watchdog' feeds.conf.default
sed -i '$a src-git modemband https://github.com/4IceG/luci-app-modemband' feeds.conf.default
sed -i '$a src-git modemdefine https://github.com/4IceG/luci-app-modemdefine' feeds.conf.default
sed -i '$a src-git sms_tool https://github.com/4IceG/luci-app-sms-tool' feeds.conf.default
sed -i '$a src-git xray https://github.com/yichya/luci-app-xray' feeds.conf.default
