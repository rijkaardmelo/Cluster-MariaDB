#!/bin/bash

sudo docker run -d --name galera --restart=always -e MYSQL_ROOT_PASSWORD=password -v mariadb-data:/var/lib/mysql -v mariadb-config:/etc/mysql/mariadb.conf.d --net=host -p 3306:3306 -p 4444:4444 -p 4567:4567 -p 4568:4568 mariadb

sudo docker run -d --name galera --restart=always --env-file ./.env --net=host -p 3306:3306 -p 4444:4444 -p 4567:4567 -p 4568:4568 -v 'galera:/bitnami/mariadb' bitnami/mariadb-galera

sudo apt -y install mariadb-server mariadb-client galera-4 rsync python3 python3-pip && sudo pip3 install PyMySQL

sudo nano /etc/systemd/system/recovery.service

sudo nano /etc/mysql/mariadb.conf.d/recovery.py

sudo chmod +x /etc/mysql/mariadb.conf.d/recovery.py

sudo systemctl enable recovery.service

sudo mariadb

CREATE USER 'admin'@'%' IDENTIFIED BY 'admin';
GRANT ALL PRIVILEGES ON *.* TO 'admin'@'%';
FLUSH PRIVILEGES;

sudo nano /etc/mysql/mariadb.conf.d/60-galera.cnf