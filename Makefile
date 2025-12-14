.PHONY: up down restart logs

up:
	docker compose up -d

down:
	docker compose down

restart:
	docker compose restart

logs:
	docker compose logs

logs-follow:
	docker compose logs -f
