DOCKER	=	docker compose

OS		=	$(shell uname)

ifeq ($(OS), Linux)
	DOCKER = docker-compose
endif

all		:
	$(DOCKER) -f srcs/docker-compose.yaml create

fclean	:
	docker system prune -f
