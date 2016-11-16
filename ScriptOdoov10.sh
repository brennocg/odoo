########## Início do Script ##########

##### Dependências Odoo #####

sudo apt-get install python-pip 
sudo apt-get install libxml2-dev 
sudo apt-get install libxslt-dev 
sudo apt-get install libevent-dev 
sudo apt-get install libsasl2-dev 
sudo apt-get install libldap2-dev 
sudo apt-get install libpq-dev 
sudo apt-get install libjpeg-dev 
sudo apt-get install nodejs 
sudo apt-get install npm 

##### Dependências da Localização Brasileira #####

sudo apt-get install python-libxml2 
sudo apt-get install libxmlsec1-dev 
sudo apt-get install python-openssl 
sudo apt-get install python-cffi 

##### Dependências do WKHTMLTOX #####

sudo apt-get install zlib1g-dev
sudo apt-get install fontconfig
sudo apt-get install libfreetype6
sudo apt-get install libx11-6
sudo apt-get install libxext6
sudo apt-get install libxrender1
sudo apt-get install libjpeg-turbo8

##### Ferramentas Extras #####

sudo apt-get install git

##### Atualizar o Pip #####

sudo pip install --upgrade pip

##### Dependencias Pip #####

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

##### Depêndencias do Linux #####

sudo apt-get install -y --no-install-recommends $(grep -v '^#' apt-requirements)

##### Depêndencias do Python #####

sudo pip install -r pip-requirements

##### Depêndencias do Nodejs #####

sudo npm install -g less

##### Criando link para o nodejs #####

sudo ln -s /usr/bin/nodejs /usr/bin/node

##### Arquivo para geração de PDF e XMLs #####

wget http://download.gna.org/wkhtmltopdf/0.12/0.12.1/wkhtmltox-0.12.1_linux-trusty-amd64.deb

##### Execução do Arquivo Instalado #####

sudo dpkg -i wkhtmltox-0.12.1_linux-trusty-amd64.deb

########## Fim do Script ##########