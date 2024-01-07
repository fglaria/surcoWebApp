up:
	docker-compose up -d

down:
	docker-compose down

build:
	docker-compose build --no-cache

bash:
	docker-compose run --rm app bash

test:
	docker-compose run --rm app coverage run manage.py test

test-report:
	docker-compose run --rm app coverage report -m
