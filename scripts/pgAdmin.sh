echo "Install pgAdmin"
echo "Install dependencies"
sudo apt-get install build-essential libssl-dev libffi-dev libgmp3-dev libpq-dev python-dev -y

echo "Install virtualenv"
sudo apt-get install python3-pip python-pip -y
sudo pip install virtualenv virtualenvwrapper

echo "Create virtual env"
cd /home/vagrant
virtualenv -p $(which python3) pgAdmin4
source pgAdmin4/bin/activate
cd pgAdmin4/

wget https://ftp.postgresql.org/pub/pgadmin/pgadmin4/v3.3/pip/pgadmin4-3.3-py2.py3-none-any.whl
pip install pgadmin4*.whl

OLD_CONF_F=$(find . -wholename "*pgadmin4/config.py")
NEW_CONF_F=${OLD_CONF_F/config.py/config_local.py}
cp /vagrant/scripts/config.py $NEW_CONF_F

# python $(find . -wholename "*pgadmin4/setup.py")
# python $(find . -wholename "*pgadmin4/pgAdmin4.py")

echo "Install systemd"
sudo apt-get install systemd -y
sudo cp /vagrant/scripts/pgadmin4.service /etc/systemd/system/pgadmin4.service

#sudo systemctl daemon-reload
#sudo systemctl enable pgadmin4
#sudo systemctl start pgadmin4 && sudo systemctl status pgadmin4