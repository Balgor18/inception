DOCKER	=	docker compose

OS		=	$(shell uname)

ifeq ($(OS), Linux)
	DOCKER = docker-compose
endif

# $(DOCKER) -f srcs/docker-compose.yaml build
all		:
	mkdir -p /Users/florian/data/wordpress
	mkdir -p /Users/florian/data/db_data
	$(DOCKER) -f srcs/docker-compose.yml build
	$(DOCKER) -f srcs/docker-compose.yml up

stop	:
	$(DOCKER) -f srcs/docker-compose.yml stop
fclean	:
	docker system prune -f
