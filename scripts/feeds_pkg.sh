#!/bin/bash

echo "Remove Packages"
FOLDER=("kiddin" "small" "small_package")
for i in "${FOLDER[@]}"; do
	if [ -d "./feeds/$i" ]; then
		rm -rif ./feeds/"$i"/{base-files,modemband,luci-app-3ginfo-lite,luci-app-lite-watchdog,luci-app-modemband,luci-app-modemdefine,luci-app-sms-tool,sms-tool,luci-app-xray}
	fi
done

exit 0
