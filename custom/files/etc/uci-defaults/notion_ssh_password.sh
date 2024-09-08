#!/bin/sh
#
# Copyright (c) 2023 LENAR
#
USER_NAME="root"
USER_PASSWD="notion"

passwd "${USER_NAME}" << EOI
${USER_PASSWD}
${USER_PASSWD}
EOI

exit 0
