FROM caddy:2.11.2-builder AS builder
RUN xcaddy build \
    --with github.com/pberkel/caddy-storage-redis@v1.7.1

FROM caddy:2.11.2-alpine
COPY --from=builder /usr/bin/caddy /usr/bin/caddy
