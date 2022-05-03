FROM foltik/vyos:rolling-latest

COPY config.boot /opt/vyatta/etc/config.boot.default
COPY selfsigned.pem /etc/ssl/certs/ssl-cert-snakeoil.pem
COPY selfsigned.key /etc/ssl/private/ssl-cert-snakeoil.key

ENTRYPOINT ["/sbin/init"]
