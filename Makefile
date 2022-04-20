DOCKER	=	docker compose

OS		=	$(shell uname)

ifeq ($(OS), Linux)
	DOCKER = docker-compose
endif

# $(DOCKER) -f srcs/docker-compose.yaml build
all		:
	$(DOCKER) -f srcs/docker-compose.yml build
	$(DOCKER) -f srcs/docker-compose.yml up

fclean	:
	docker system prune -f
