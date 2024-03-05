up:
	docker-compose up front -d

down:
	docker-compose stop front db
	docker-compose rm -f front db

ssh :
	docker exec -it railsapi-nuxt-app-front-1 /bin/sh

build:
	docker-compose build front --no-cache