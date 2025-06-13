#!/bin/bash

# Create the necessary folders
mkdir -p inception/secrets
mkdir -p inception/srcs/requirements/mariadb/tools
mkdir -p inception/srcs/requirements/wordpress/tools
mkdir -p inception/srcs/requirements/nginx/conf
mkdir -p inception/srcs/requirements/nginx/tools
mkdir -p inception/srcs/requirements/redis
mkdir -p inception/srcs/requirements/adminer
mkdir -p inception/srcs/requirements/ftp
mkdir -p inception/srcs/requirements/static/html
mkdir -p inception/srcs/requirements/custom

# Create empty files
touch inception/Makefile
touch inception/secrets/db_password.txt
touch inception/secrets/db_root_password.txt
touch inception/secrets/credentials.txt
touch inception/srcs/.env
touch inception/srcs/docker-compose.yml
touch inception/srcs/requirements/mariadb/Dockerfile
touch inception/srcs/requirements/mariadb/tools/init.sql
touch inception/srcs/requirements/wordpress/Dockerfile
touch inception/srcs/requirements/wordpress/tools/start.sh
touch inception/srcs/requirements/nginx/Dockerfile
touch inception/srcs/requirements/nginx/conf/default.conf
touch inception/srcs/requirements/nginx/tools/start.sh
touch inception/srcs/requirements/redis/Dockerfile
touch inception/srcs/requirements/adminer/Dockerfile
touch inception/srcs/requirements/ftp/Dockerfile
touch inception/srcs/requirements/static/Dockerfile
touch inception/srcs/requirements/static/html/index.html
touch inception/srcs/requirements/custom/Dockerfile

echo "Inception project tree successfully created."
