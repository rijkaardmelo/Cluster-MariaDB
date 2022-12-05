Vagrant.configure("2") do |config|
    # O sistema operacional que vai ser instalado nas maquinas virtuais
    config.vm.box = "debian/bullseye64"
    
    config.vm.define "MariaDB-01" do |mariadb01|
        mariadb01.vm.network "public_network", ip: "192.168.1.250", netmask: "255.255.255.0", bridge: "wlp0s20f3"
        mariadb01.vm.hostname = "MariaDB-01"
        mariadb01.vm.provider "virtualbox" do |vb|
          vb.memory = 1024
          vb.cpus = 1
          vb.name = "MariaDB-01"
        end
        mariadb01.vm.provision "shell",
            inline: "apt update && apt -y upgrade && apt -y dist-upgrade"
    end

    config.vm.define "MariaDB-02" do |mariadb02|
        mariadb02.vm.network "public_network", ip: "192.168.1.251", netmask: "255.255.255.0", bridge: "wlp0s20f3"
        mariadb02.vm.hostname = "MariaDB-02"
        mariadb02.vm.provider "virtualbox" do |vb|
          vb.memory = 1024
          vb.cpus = 1
          vb.name = "MariaDB-02"
        end
        mariadb02.vm.provision "shell",
            inline: "apt update && apt -y upgrade && apt -y dist-upgrade"
    end

    config.vm.define "MariaDB-03" do |mariadb03|
        mariadb03.vm.network "public_network", ip: "192.168.1.252", netmask: "255.255.255.0", bridge: "wlp0s20f3"
        mariadb03.vm.hostname = "MariaDB-03"
        mariadb03.vm.provider "virtualbox" do |vb|
          vb.memory = 1024
          vb.cpus = 1
          vb.name = "MariaDB-03"
        end
        mariadb03.vm.provision "shell",
            inline: "apt update && apt -y upgrade && apt -y dist-upgrade"
    end
end