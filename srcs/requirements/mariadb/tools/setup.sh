#!/bin/sh
echo "- Starting mariadb"
service mariadb start

echo "- Mariadb status"
service mariadb status

echo "- Creating user"
echo "CREATE USER IF NOT EXISTS '$DB_USER'@'%' IDENTIFIED BY '$DB_PWD';" | mysql

echo "- Creating database"
echo "CREATE DATABASE IF NOT EXISTS $DB_NAME;" | mysql

echo "- Setting user rights"
echo "GRANT ALL PRIVILEGES ON *.* TO '$DB_USER'@'%' IDENTIFIED BY '$DB_PWD';" | mysql

echo "- Refreshing privilidges"
echo "FLUSH PRIVILEGES;" | mysql

kill $(cat /var/run/mysqld/mysqld.pid)

mysqld
