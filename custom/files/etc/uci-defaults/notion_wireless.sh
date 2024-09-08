#!/bin/sh
#
# Copyright (c) 2023 LENAR
#

# MD=$(head /dev/mtd3|md5sum|cut -c-8)
MD=$(md5sum /dev/mtd6|cut -c-8)

for RADIO in "radio0" "radio1"
do
  uci -q get wireless."$RADIO" || continue
  SSID=$(uci -q get wireless.default_$RADIO.ssid)
  BAND=$(uci -q get wireless.$RADIO.band)
  [ "$SSID" != "OpenWrt" ] && continue
  uci set wireless."$RADIO".disabled="0"
  uci set wireless."$RADIO".cell_density="0"
  if [ "$BAND" = "2g" ];then
    uci set wireless.default_"$RADIO".ssid="Notion-${MD}"
    uci set wireless.default_"$RADIO".ifname="wifi-2g"
    # uci set wireless."$RADIO".channel="11"
  else
    uci set wireless.default_"$RADIO".ssid="Notion-${MD}-5G"
    uci set wireless.default_"$RADIO".ifname="wifi-5g"
    # uci set wireless."$RADIO".channel="36"
  fi
  uci set wireless.default_"$RADIO".encryption="psk2"
  uci set wireless.default_"$RADIO".key="OW${MD}"
  uci set wireless.default_"$RADIO".skip_inactivity_poll="1"
  uci set wireless.default_"$RADIO".disassoc_low_ack="0"
  # uci set wireless.default_"$RADIO".hidden="1"
  uci -q commit wireless
done

exit 0
