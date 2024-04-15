#!/bin/bash

echo "- Creating pid file"
mkdir -p /run/php/
touch /run/php/php7.4-fpm.pid

echo "- CDing to /var/www"
cd /var/www

if [ ! -f /var/www/wp-config-sample.php ]; then

	echo "- Removing folder contents"
	rm -rf *

	echo "- Downloading wp command"
	curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
	chmod +x wp-cli.phar
	mv wp-cli.phar /usr/local/bin/wp

	echo "- Downloading wordpress"
	wp core download --allow-root

	echo "- Changing config variables and moving the file"
	sed -i -r -e "s/database_name_here/$DB_NAME/" -e "s/username_here/$DB_USER/" -e "s/password_here/$DB_PWD/" /etc/php/7.4/fpm/pool.d/wp-config.php
	cp /etc/php/7.4/fpm/pool.d/wp-config.php /var/www/wp-config.php

	echo "- Installing"
	wp core install --url=$DOMAIN_NAME --title=$WP_NAME --admin_user=$WP_ROOT_USER --admin_password=$WP_ROOT_PWD --admin_email=$WP_ROOT_EMAIL --allow-root

	echo "- Creating another user"
	wp user create $WP_USER $WP_EMAIL --user_pass=$WP_PWD --role=author --allow-root

	echo "- Installing and activating a theme"
	wp theme install twentytwentyfour --activate --allow-root

fi

echo "--> WORDPRESS READY <--"
/usr/sbin/php-fpm7.4 -F

