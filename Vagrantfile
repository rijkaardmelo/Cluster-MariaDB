Vagrant.configure("2") do |config|
    # O sistema operacional que vai ser instalado nas maquinas virtuais
    config.vm.box = "debian/bullseye64"
    
    config.vm.define "MariaDB-01" do |mariadb01|
        # Configurando a rede
        mariadb01.vm.network "public_network", ip: "10.200.4.250", netmask: "255.255.0.0"
        
        # Configurando a maquina virtual
        mariadb01.vm.provider "virtualbox" do |vb|
          vb.memory = 1024
          vb.cpus = 1
          vb.name = "MariaDB-01"
        end

        mariadb01.vm.provision "shell",
            inline: "apt update && apt -y upgrade && apt -y dist-upgrade"
    end

    config.vm.define "MariaDB-02" do |mariadb02|
        # Configurando a rede
        mariadb02.vm.network "public_network", ip: "10.200.4.100", netmask: "255.255.0.0"
        
        # Configurando a maquina virtual
        mariadb02.vm.provider "virtualbox" do |vb|
          vb.memory = 1024
          vb.cpus = 1
          vb.name = "MariaDB-02"
        end

        mariadb02.vm.provision "shell",
            inline: "apt update && apt -y upgrade && apt -y dist-upgrade"
    end
end