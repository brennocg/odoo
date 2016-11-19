##### Início do Script 2 #####

##### Realizando o clone do arquivo de configuracao, #####
##### esta com as configuracoes padr?es. #####

echo "==========================="
echo "Config odoo File"
echo "==========================="
sudo cp /opt/odoo/odoo/debian/odoo.conf /etc/odoo-server.conf
cd /etc/
sudo wget https://raw.githubusercontent.com/brennocg/odoo/master/odoo-server.conf -O odoo-server.conf
sudo chown odoo: /etc/odoo-server.conf
sudo chmod 640 /etc/odoo-server.conf

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
