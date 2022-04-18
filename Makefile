DOCKER	=	docker

all :
	$(DOCKER) compose -f srcs/docker-compose.yaml create

fclean :
	$(DOCKER) system prune -f