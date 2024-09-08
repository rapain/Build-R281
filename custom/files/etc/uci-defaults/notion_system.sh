#!/bin/sh
#
# Copyright (c) 2023 LENAR
#
uci -q batch <<-EOF >/dev/null
  set system.@system[0].hostname="R281"
  set system.@system[0].timezone="PST-8"
  set system.@system[0].zonename="Asia/Manila"
  set system.@system[0].log_proto="udp"
  set system.@system[0].conloglevel="8"
  set system.@system[0].cronloglevel="9"
  commit system
EOF
uci set luci.main.lang="auto" && uci commit luci

exit 0
