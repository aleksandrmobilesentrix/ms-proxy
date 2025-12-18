# MS Proxy - Caddy Reverse Proxy

Simple Caddy reverse proxy with automatic HTTPS via Let's Encrypt.

## Quick Start

```bash
make up
```

## Domains

| Domain | Service |
|--------|--------|
| `vasilisa.at` | Twenty CRM |
| `chat.vasilisa.at` | Chatwoot |
| `gme.vasilisa.at` | GME |
| `waha.vasilisa.at` | WAHA |

## Deploy

```bash
./deploy.sh
```

## Network

All services use `msnetwork` Docker network.
