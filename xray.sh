#!/bin/sh
if [ ! -f UUID ]; then
  UUID="a0b15cff-cbab-4819-9bf2-b649b574badd"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

