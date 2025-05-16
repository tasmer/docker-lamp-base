up:
	docker-compose up -d --build

down:
	docker-compose down

install:
	docker-compose exec web composer install

bash:
	docker-compose exec web bash

logs:
	docker-compose logs -f web

restart:
	docker-compose down && docker-compose up -d --build