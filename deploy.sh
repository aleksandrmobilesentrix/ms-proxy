#!/bin/bash
# Auto-deploy script for ms-proxy (Caddy)
# Called by cron when git changes detected

set -e

echo "$(date): Starting proxy deploy..."

# Reload Caddy config (no rebuild needed for config changes)
docker compose exec -T proxy caddy reload --config /etc/caddy/Caddyfile 2>/dev/null || {
    echo "$(date): Caddy reload failed, restarting container..."
    docker compose restart proxy
}

echo "$(date): Proxy deploy completed!"
