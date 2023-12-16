FROM caddy:2-builder-alpine AS builder

RUN xcaddy build --with github.com/caddy-dns/porkbun@v0.1.4

FROM caddy:2-alpine
LABEL org.opencontainers.image.source=https://github.com/wbrawner/caddy-porkbun

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
