all:
	docker-compose -f srcs/docker-compose.yml up -d --build

stop:
	docker-compose -f srcs/docker-compose.yml stop

down:
	docker-compose -f srcs/docker-compose.yml down -v

prune:
	docker system prune -af
