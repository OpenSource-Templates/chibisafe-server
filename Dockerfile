FROM chibisafe/chibisafe-server:latest

RUN rm -rf /app/database /app/uploads /app/logs \
    && mkdir -p /data/database /data/uploads /data/logs \
    && ln -s /data/database /app/database \
    && ln -s /data/uploads  /app/uploads \
    && ln -s /data/logs     /app/logs
