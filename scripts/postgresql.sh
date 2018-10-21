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