start:
	docker-compose up -d

bash:
	docker exec -it web_server bash

list:
	docker ps

stop:
	docker-compose down

check-debug:
	docker compose exec php php --ri xdebug