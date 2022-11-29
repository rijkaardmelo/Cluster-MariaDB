#!/bin/bash

sudo -u mysql mysqld --wsrep-recover

sed -i 's/safe_to_bootstrap: 0/safe_to_bootstrap: 1/' /var/lib/mysql/grastate.dat

sudo galera_new_cluster