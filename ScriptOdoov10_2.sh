##### Início do Script 2 #####

##### Criando diretorio para Log da aplicacao. #####

echo "==========================="
echo "Início do Script 2"
echo "==========================="

echo "==========================="
echo "Log odoo File"
echo "==========================="
sudo mkdir /var/log/odoo
sudo chown odoo:root /var/log/odoo

##### Criando arquivo para inicializacao do odoo. #####

echo "==========================="
echo "Init odoo File"
echo "==========================="
cd /etc/init.d/
wget https://raw.githubusercontent.com/odoo/odoo/10.0/debian/init -O odoo-server
sudo chmod 755 /etc/init.d/odoo-server
sudo chown root: /etc/init.d/odoo-server

##### Clonando repositorias da localizacao brasileira #####
##### e as dependencias necessarias. #####

echo "==========================="
echo "Clonning Brazilian Repository"
echo "==========================="
sudo apt-get install python-libxml2 -y
sudo apt-get install libxmlsec1-dev -y
sudo apt-get install python-openssl -y
sudo apt-get install python-cffi -y
sudo su - odoo -s /bin/bash

##### Fim do Script. #####

echo "==========================="
echo "End of script 2"
echo "==========================="
