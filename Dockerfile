FROM docker:stable

COPY config.boot /config.boot
COPY selfsigned.pem /selfsigned.pem
COPY selfsigned.key /selfsigned.key

COPY vyos.sh /vyos.sh
RUN chmod +x /vyos.sh
ENTRYPOINT ["/vyos.sh"]
