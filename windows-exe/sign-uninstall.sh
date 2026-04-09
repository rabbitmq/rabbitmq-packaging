#!/bin/sh

if [ -f "$CODE_SIGNING_CERT" ] && [ -f "$CODE_SIGNING_KEY" ]
then
    readonly uninstall_exe="$1"
    readonly uninstall_tmp="$1.tmp"

    mv -vf "$uninstall_exe" "$uninstall_tmp"

    osslsigncode sign \
      -certs "$CODE_SIGNING_CERT" \
      -key "$CODE_SIGNING_KEY" \
      -n "RabbitMQ Server $VERSION Uninstall" \
      -i http://www.rabbitmq.com/ \
      -t http://timestamp.digicert.com \
      -in "$uninstall_tmp" \
      -out "$uninstall_exe"
fi
