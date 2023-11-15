FROM caddy:2-builder-alpine AS builder

RUN xcaddy build --with github.com/caddy-dns/porkbun@v0.1.4

FROM caddy:2-alpine

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
