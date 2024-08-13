# Inception

This project implements a multi-container Docker enviroment using Docker Compose. Here we set up and configure services in their own containers and ensure that they run together.

**Services**
- Nginx: A webserver used as reverse proxy.
- Wordpress: Content management system that uses PHP and MySWL to create and manage websites.
- MariaDB: Database management system based on MySQL, used by Wordpress to store and manage data.

**How to run**
1. Ensure you have Docker and Docker Compose installed.
  
2. Clone repository and create .env file in the src/ directory with the following variables:
```
DB_USER=db_user
DB_PWD=db_pwd
DB_NAME=db_name
DOMAIN_NAME=domain.name
WP_NAME=wp_name
WP_ROOT_USER=wp_root_user
WP_ROOT_PWD=wp_root_pwd
WP_ROOT_EMAIL=wp_root_email
WP_USER=wp_user
WP_EMAIL=wp_email
WP_PWD=wp_pwd
```
You can replace the placeholder values.

3. Build and start containers:
```
make
```

4. Close containers:
```
make down
```
