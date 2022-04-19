DOCKER	=	docker compose

OS		=	$(shell uname)

ifeq ($(OS), Linux)
	DOCKER = docker-compose
endif

all		:
	$(DOCKER) -f srcs/docker-compose.yaml build
	$(DOCKER) -f srcs/docker-compose.yaml run mariadb nginx wordpress

fclean	:
	docker system prune -f
