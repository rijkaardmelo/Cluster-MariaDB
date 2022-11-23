#!/bin/bash

sudo docker run -d --name galera --restart=always --env-file ./.env --net=host -p 3306:3306 -p 4444:4444 -p 4567:4567 -p 4568:4568 -v "$(pwd)"/libmariadbgalera.sh:/opt/bitnami/scripts/libmariadbgalera.sh -v 'galera:/bitnami/mariadb' bitnami/mariadb-galera

sudo docker run -d --name galera --restart=always --env-file ./.env --net=host -p 3306:3306 -p 4444:4444 -p 4567:4567 -p 4568:4568 -v 'galera:/bitnami/mariadb' bitnami/mariadb-galera