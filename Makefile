up:
	docker compose -f srcs/docker-compose.yml build;
	docker compose -f srcs/docker-compose.yml up;
fclean:
	docker compose -f srcs/docker-compose.yml down
	docker compose -f srcs/docker-compose.yml rm;
	docker system prune -a;
re : fclean up
.PHONY: all up fclean
