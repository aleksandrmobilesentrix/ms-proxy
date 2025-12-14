# MS Proxy - Traefik Reverse Proxy

Traefik reverse proxy for routing traffic to MS services.

## Quick Start

```bash
make up
```

## Routes

| Path | Service |
|------|---------|
| `/waha/*` | WAHA WhatsApp API |
| `/gme/*` | Google Maps Extractor |

## Dashboard

Traefik dashboard available at `http://localhost:8080`

## Network

All services connect via `ms-network` Docker network.
