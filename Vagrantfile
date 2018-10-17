Vagrant.configure("2") do |config|
    config.vm.box = "ubuntu/trusty64"
    config.vm.network "forwarded_port", guest: 5050, host: 5050
    config.vm.network "private_network", ip: "192.168.33.10"

    config.vm.provision "shell", path: "scripts/postgresql.sh"
    config.vm.provision "shell", path: "scripts/pgAdmin.sh", privileged: false
end
