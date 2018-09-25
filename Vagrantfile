Vagrant.configure("2") do |config|
    config.vm.box = "ubuntu/trusty64"
    config.vm.network "forwarded_port", guest: 5050, host: 5050
    config.vm.network "private_network", ip: "192.168.33.10"

    config.vm.provision "shell", inline: <<-SHELL
        apt-get update
        apt-get install postgresql postgresql-contrib -y
        # sudo -u postgres createuser nikita --iteractive
        sudo -u postgres psql -c "create user bunny with password '1234';"
        # sudo -u postgres createdb cinema -O nikita
        sudo -u postgres psql -c "DROP DATABASE IF EXISTS movie;"
        sudo -u postgres psql -c "create database movie;"
        sudo -u postgres psql -c "grant all privileges on database movie  to bunny;"
        # psql -h localhost movie bunny

        echo "instulliation unzip "
        sudo apt install unzip -y
        cd /tmp
        unzip /vagrant/data/dvdrental.zip -d /tmp
        tar -xf /tmp/dvdrental.tar restore.sql
        # sudo -u postgres psql movie < restore.sql
        sudo -u postgres pg_restore -U postgres -d movie  /tmp/dvdrental.tar

        echo "Install pgAdmin"

        sudo apt-get install python3-pip python-pip -y
        sudo pip install virtualenv virtualenvwrapper

        cd /home/vagrant
        virtualenv -p $(which python3) pgAdmin4
        source pgAdmin4/bin/activate
        cd pgAdmin4/
        wget https://ftp.postgresql.org/pub/pgadmin/pgadmin4/v3.3/pip/pgadmin4-3.3-py2.py3-none-any.whl
        pip install wheel flask
        # pip install psycopg2-binary
        pip install pgadmin4*.whl

        # python lib/python3.4/site-packages/pgadmin4/setup.py
        OLD_CONF_F=$(find . -wholename "*pgadmin4/config.py")
        NEW_CONF_F=${OLD_CONF_F/config.py/config_local.py}
        cp $OLD_CONF_F $NEW_CONF_F

        sudo mkdir -pv /var/lib/pgadmin
        sudo chown vagrant:vagrant /var/lib/pgadmin

        sudo mkdir -pv /var/log/pgadmin
        sudo chown vagrant:vagrant /var/log/pgadmin
        sudo chown 777 -R /var/log/pgadmin

        python $(find . -wholename "*pgadmin4/pgAdmin4.py")

        sudo apt-get install systemd -y

        sudo cp /vagrant/scripts/pgadmin4.service /etc/systemd/system/pgadmin4.service

        #sudo systemctl daemon-reload
        #sudo systemctl enable pgadmin4
        #sudo systemctl start pgadmin4 && sudo systemctl status pgadmin4
    SHELL
end
