##### Início do Script 3 #####

##### Instalando Geraldo reports, utilizado para relatorios. #####

echo "==========================="
echo "Início do Script 3"
echo "==========================="

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

##### Fim do Script 3. #####

echo "==========================="
echo "End of script 3"
echo "==========================="

echo "==========================="
echo "Completed, the machine will restart."
echo "==========================="

##### Reiniciar a máquina. #####

sudo reboot