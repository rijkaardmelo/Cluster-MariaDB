#!/bin/bash

sudo docker run -d --name galera --restart=always -e MYSQL_ROOT_PASSWORD: password -v ./data:/var/lib/mysql --net=host -p 3306:3306 -p 4444:4444 -p 4567:4567 -p 4568:4568 mariadb

sudo docker run -d --name galera --restart=always --env-file ./.env --net=host -p 3306:3306 -p 4444:4444 -p 4567:4567 -p 4568:4568 -v 'galera:/bitnami/mariadb' bitnami/mariadb-galera