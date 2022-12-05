import pymysql
import os

def mariadbconnect(host):
    conn = None
    try:
        conn = pymysql.connect(
        host=host,
        user='admin',
        password = "admin"
        )
        conn.close()
        return True
    except:
        return False

if __name__ == "__main__" :
    hosts=['10.200.4.251']
    down=False

    for host in hosts:
        if mariadbconnect(host):
            down=True

    if not(down):
        os.system("galera_recovery")
        os.system("sed -i 's/safe_to_bootstrap: 0/safe_to_bootstrap: 1/' /var/lib/mysql/grastate.dat")
        os.system("galera_new_cluster")
        os.system("service mariadb start")