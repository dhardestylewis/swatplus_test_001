FROM dhardestylewis/swatplus_docker:develop

COPY entrypoint.sh /set_umask.sh

RUN chmod +x /set_umask.sh
ENTRYPOINT ["/set_umask.sh"]
