FROM debian

RUN apt update && apt -y upgrade

RUN apt -y install mariadb-server galera-4 rsync mariadb-client nano vim

RUN service mariadb start

CMD ["mysqld"]