#!/bin/sh

echo ">>> config.boot"
cat /config.boot
echo ">>> selfsigned.pem"
cat /selfsigned.pem
echo ">>> selfsigned.key"
cat /selfsigned.key

echo "Starting VyOS container"
docker run -d \
    --name vyos \
    -v /config.boot:/opt/vyatta/etc/config.boot.default \
    -v /selfsigned.pem:/etc/ssl/certs/ssl-cert-snakeoil.pem \
    -v /selfsigned.key:/etc/ssl/private/ssl-cert-snakeoil.key \
    -v /lib/modules:/lib/modules \
    -p 2222:22 \
    -p 443:443 \
    foltik/vyos:rolling-latest \
    /sbin/init
