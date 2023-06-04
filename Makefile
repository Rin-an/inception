up:
	docker compose -f srcs/docker-compose.yml build;
	docker compose -f srcs/docker-compose.yml up -d;
fclean:
	docker compose -f srcs/docker-compose.yml down
	docker compose -f srcs/docker-compose.yml rm;
	docker system prune -af --volumes;
re : fclean up
.PHONY: all up fclean
