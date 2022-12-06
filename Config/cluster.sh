#!/bin/bash

sudo apt -y install mariadb-server mariadb-client galera-4 rsync python3 python3-pip && sudo pip3 install PyMySQL

sudo nano /etc/mysql/mariadb.conf.d/60-galera.cnf

sudo nano /etc/mysql/mariadb.conf.d/recovery.py

sudo nano /etc/systemd/system/recovery.service

sudo chmod +x /etc/mysql/mariadb.conf.d/recovery.py

sudo systemctl daemon-reload

sudo systemctl enable recovery.service

sudo mariadb

CREATE USER 'admin'@'%' IDENTIFIED BY 'admin';
GRANT ALL PRIVILEGES ON *.* TO 'admin'@'%';
FLUSH PRIVILEGES;

sudo systemctl stop mariadb.service

sudo galera_new_cluster