FROM chibisafe/chibisafe-server:latest

RUN rm -rf /app/database /app/uploads /app/logs \
    && ln -s /data/database /app/database \
    && ln -s /data/uploads  /app/uploads \
    && ln -s /data/logs     /app/logs

ENTRYPOINT ["/bin/sh", "-c", "mkdir -p /data/database /data/uploads /data/logs && exec \"$@\"", "sh"]
