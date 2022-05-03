#!/bin/bash
ID=$(
    docker run -d --privileged \
        --name vyos \
        -v $(pwd)/config.boot:/opt/vyatta/etc/config.boot.default \
        -v $(pwd)/selfsigned.pem:/etc/ssl/certs/ssl-cert-snakeoil.pem \
        -v $(pwd)/selfsigned.key:/etc/ssl/private/ssl-cert-snakeoil.key \
        -v /lib/modules:/lib/modules \
        -p 2222:22 \
        -p 4433:443 \
        foltik/vyos:rolling-latest \
        /sbin/init
)
echo $ID
echo $ID > id.txt
