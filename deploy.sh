#!/bin/bash
# Auto-deploy script for ms-proxy (nginx)
# Called by cron when git changes detected

set -e

echo "$(date): Starting proxy deploy..."

# Reload nginx config (send SIGHUP to reload config)
docker compose exec -T ms-proxy nginx -s reload 2>/dev/null || {
    echo "$(date): nginx reload failed, restarting container..."
    docker compose restart ms-proxy
}

echo "$(date): Proxy deploy completed!"
