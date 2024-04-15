all:
	mkdir -p /home/tfinni/data/wordpress
	mkdir -p /home/tfinni/data/mariadb
	docker-compose -f ./srcs/docker-compose.yml up -d --build

# clean when containers are running
fclean:
	docker-compose -f ./srcs/docker-compose.yml down
	docker system prune -f
	docker rmi debian:bullseye
	docker rmi mariadb:inception
	docker rmi wordpress:inception
	docker rmi nginx:inception
	sudo docker volume rm wp_data
	sudo docker volume rm db_data
	sudo rm -rf /home/tfinni/data

# clean closed containers
clean:
	docker system prune -f
	docker rmi debian:bullseye
	docker rmi mariadb:inception
	docker rmi wordpress:inception
	docker rmi nginx:inception
	sudo docker volume rm wp_data
	sudo docker volume rm db_data
	sudo rm -rf /home/tfinni/data

restart:
	docker-compose -f ./srcs/docker-compose.yml down
	docker-compose -f ./srcs/docker-compose.yml up -d

down:
	docker-compose -f ./srcs/docker-compose.yml down

up:
	docker-compose -f ./srcs/docker-compose.yml up -d

re: fclean all