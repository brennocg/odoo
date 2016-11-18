##### In�cio do Script #####

##### Este shell script foi criado com intuito de auxiliar #####
##### na instala��o do Odoo 10.0 e da Localizacao Brasileira. #####


##### Instalando o Open SSH. Permitindo acesso remoto via Putty. #####

echo "==========================="
echo "Installing OpenSSh"
echo "==========================="
apt-get install openssh-server -y

##### Definir configura��es locais. #####

echo "==========================="
echo "Local Settings"
echo "==========================="
export LANGUAGE=pt_BR.UTF-8
export LANG=pt_BR.UTF-8
locale-gen pt_BR pt_BR.UTF-8
dpkg-reconfigure locales

##### Atualiando a distribui��o Ubuntu. #####

echo "==========================="
echo "Update Repository"
echo "==========================="
sudo apt-get update -y
sudo apt-get dist-upgrade -y

##### Criando o usu�rio odoo que ser� o propriet�rio #####
##### da aplica��o e sua respectiva pasta #####

sudo adduser --system --home=/opt/odoo --group odoo

##### Ferramentas Extras #####

sudo apt-get install git -y

##### Instalando as bibliotecas Python necess�rias para o odoo. #####

sudo apt-get install python-dev python-yaml python-feedparser python-geoip python-imaging python-pybabel python-unicodecsv wkhtmltopdf libxml2-dev libxmlsec1-dev python-argparse python-Babel python-cups python-dateutil python-decorator python-docutils python-feedparser python-gdata python-gevent python-greenlet python-Jinja2 python-libxslt1 python-lxml python-Mako python-MarkupSafe python-mock python-openid python-passlib python-psutil python-psycopg2 python-pychart python-pydot python-pyparsing python-pyPdf python-ldap python-yaml python-reportlab python-requests python-simplejson python-six python-tz python-unittest2 python-vatnumber python-vobject python-webdav python-Werkzeug python-wsgiref python-xlwt python-zsi python-dev libpq-dev poppler-utils python-pdftools antiword

##### Atualizar o Pip #####

sudo pip install --upgrade pip

##### Instalando Python e as libs necessarias para o odoo. #####

echo "==========================="
echo "Installing Python"
echo "==========================="

apt-get install python-dev python-yaml python-feedparser python-geoip python-imaging python-pybabel python-unicodecsv wkhtmltopdf libxml2-dev libxmlsec1-dev python-argparse python-Babel python-cups python-dateutil python-decorator python-docutils python-feedparser python-gdata python-gevent python-greenlet python-Jinja2 python-libxslt1 python-lxml python-Mako python-MarkupSafe python-mock python-openid python-passlib python-psutil python-psycopg2 python-pychart python-pydot python-pyparsing python-pyPdf python-ldap python-yaml python-reportlab python-requests python-simplejson python-six python-tz python-unittest2 python-vatnumber python-vobject python-webdav python-Werkzeug python-wsgiref python-xlwt python-zsi python-dev libpq-dev poppler-utils python-pdftools antiword -y
apt-get install python-pip  -y
apt-get install python-setuptools -y

echo "==========================="
echo "Installing Libs"
echo "==========================="

pip install Babel==1.3
pip install Jinja2==2.7.3
pip install Mako==1.0.1
pip install MarkupSafe==0.23
pip install Pillow==2.7.0
pip install Python-Chart==1.39
pip install PyYAML==3.11
pip install Werkzeug==0.9.6
pip install argparse==1.2.1
pip install decorator==3.4.0
pip install docutils==0.12
pip install feedparser==5.1.3
pip install gdata==2.0.18
pip install gevent==1.0.2
pip install greenlet==0.4.7
pip install jcconv==0.2.3
pip install lxml==3.4.1
pip install mock==1.0.1
pip install ofxparse==0.14
pip install passlib==1.6.2
pip install psutil==2.2.0
pip install psycogreen==1.0
pip install psycopg2==2.5.4
pip install pyPdf==1.13
pip install pydot==1.0.2
pip install pyparsing==2.0.3
pip install pyserial==2.7
pip install python-dateutil==2.4.0
pip install python-ldap==2.4.19
pip install python-openid==2.2.5
pip install pytz==2014.10
pip install pyusb==1.0.0b2
pip install qrcode==5.1
pip install reportlab==3.1.44
pip install requests==2.6.0
pip install six==1.9.0
pip install suds-jurko==0.6
pip install vobject==0.6.6
pip install wsgiref==0.1.2
pip install XlsxWriter==0.7.7
pip install xlwt==0.7.5
pip install openpyxl==2.4.0-b1
pip install boto==2.38.0
pip install odoorpc
pip install suds_requests
pip install pytrustnfe
pip install python-boleto
pip install python-cnab
pip install http://labs.libre-entreprise.org/frs/download.php/897/pyxmlsec-0.3.1.tar.gz

##### Dep�ndencias do Linux. #####

sudo apt-get install -y --no-install-recommends $(grep -v '^#' apt-requirements)

##### Gerar as Sa�das Apropriadas para os Requerimentos. #####

sudo pip freeze docutils==0.11
sudo pip freeze Jinja2==2.7.2
sudo pip freeze MarkupSafe==0.19
sudo pip freeze Pygments==1.6
sudo pip freeze Sphinx==1.2.2

##### Dep�ndencias do Python. #####

sudo pip freeze > requirements.txt
sudo pip install -r requirements.txt

##### Dep�ndencias do Nodejs. #####

sudo npm install -g less

##### Criando link para o nodejs. #####

sudo ln -s /usr/bin/nodejs /usr/bin/node

##### Depend�ncias do WKHTMLTOX #####

sudo apt-get install zlib1g-dev -y
sudo apt-get install fontconfig -y
sudo apt-get install libfreetype6 -y
sudo apt-get install libx11-6 -y
sudo apt-get install libxext6 -y
sudo apt-get install libxrender1 -y
sudo apt-get install libjpeg-turbo8 -y

##### Instalando WKHTMLtoPDF, responsavel por geracao de #####
##### arquivos PDF. #####

echo "==========================="
echo "Installing WKHTMLtoPDF"
echo "==========================="
cd /tmp
wget http://download.gna.org/wkhtmltopdf/0.12/0.12.1/wkhtmltox-0.12.1_linux-trusty-amd64.deb
cp /usr/local/bin/wkhtmltopdf /usr/bin
cp /usr/local/bin/wkhtmltoimage /usr/bin
sudo dpkg -i wkhtmltox-0.12.1_linux-trusty-amd64.deb

##### Depend�ncias Odoo #####

sudo apt-get install python-pip -y
sudo apt-get install libxml2-dev -y
sudo apt-get install libxslt-dev -y
sudo apt-get install libevent-dev -y
sudo apt-get install libsasl2-dev -y
sudo apt-get install libldap2-dev -y
sudo apt-get install libpq-dev -y
sudo apt-get install libjpeg-dev -y
sudo apt-get install nodejs -y
sudo apt-get install npm -y

##### Realizando o clone do odoo 10.0. #####

echo "==========================="
echo "Clonning odoo 10.0"
echo "==========================="
sudo su - odoo -s /bin/bash
cd /opt/
git clone https://github.com/odoo/odoo.git --branch 10.0
exit

##### Realizando o clone do arquivo de configuracao, #####
##### esta com as configuracoes padr�es. #####

echo "==========================="
echo "Config odoo File"
echo "==========================="
sudo cp /opt/odoo/debian/odoo.conf /etc/odoo-server.conf
cd /etc/
sudo wget https://raw.githubusercontent.com/brennocg/odoo/master/odoo-server.conf -O odoo-server.conf
sudo chown odoo: /etc/odoo-server.conf
sudo chmod 640 /etc/odoo-server.conf

##### Criando diretorio para Log da aplicacao. #####

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
mkdir localizacao
cd localizacao
git clone https://github.com/OCA/l10n-brazil.git --branch 10.0 --depth 1
git clone https://github.com/OCA/account-fiscal-rule.git --branch 10.0 --depth 1
git clone https://github.com/odoo-brazil/odoo-brazil-eletronic-documents.git --branch 8.0 --depth 1
git clone https://github.com/OCA/server-tools --branch 10.0 --depth 1
exit

##### Instalando Geraldo reports, utilizado para relatorios. #####

echo "==========================="
echo "Installing Geraldo Reports"
echo "==========================="
cd /tmp
git clone https://github.com/aricaldeira/geraldo --branch master
cd geraldo
python setup.py install

##### Instalando PySped para poder utilizar NFe. #####

echo "==========================="
echo "Installing PySped"
echo "==========================="
cd /tmp
wget http://labs.libre-entreprise.org/download.php/430/pyxmlsec-0.3.0.tar.gz
tar xvzf pyxmlsec-0.3.0.tar.gz
cd pyxmlsec-0.3.0
python setup.py install
cd /tmp
git clone https://github.com/odoo-brazil/PySPED.git --branch 10.0
cd PySPED
python setup.py install

##### Instalando pyxmlsec, necessario para o PySped. #####

echo "==========================="
echo "Installing pyxmlsec"
echo "==========================="
cd /tmp
git clone https://github.com/aricaldeira/pyxmlsec --branch master
cd pyxmlsec
python setup.py install

##### Clonando repositorias da Trust-Code. #####

echo "==========================="
echo "Clonning Brazilian Repository"
echo "==========================="
cd /opt/odoo
git clone https://github.com/Trust-Code/trust-addons.git --branch 9.0
cd trust-addons

##### Alterando owner da pasta odoo. #####

echo "==========================="
echo "Change owner"
echo "==========================="
cd /opt/
chown odoo: odoo -R

##### Fim do Script. #####

echo "==========================="
echo "Finished"
echo "==========================="

