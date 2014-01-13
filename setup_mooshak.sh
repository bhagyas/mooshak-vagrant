sudo apt-get update

#optional apt-get update
# sudo apt-get upgrade 

sudo apt-get install gcc -y
sudo apt-get install make -y

sudo apt-get install tcl -y
sudo apt-get install apache2 -y
sudo apt-get install apache2-suexec -y

cd /etc/apache2/mods-enabled
sudo ln -s ../mods-available/userdir.conf
sudo ln -s ../mods-available/userdir.load
sudo ln -s ../mods-available/suexec.load

#replace the userdir.conf with the mooshak specific configuration
sudo sed -i.bak 's/<\/IfModule>/${CONFIG}<\/IfModule>/' /etc/apache2/mods-enabled/userdir.conf
sudo sed -i.bak 's/${CONFIG}/<Directory \/home\/*\/public_html\/cgi-bin>\n\tOptions +ExecCGI -Includes -Indexes\n\tSetHandler cgi-script\n\tOrder allow,deny\n\tAllow from all\n<\/Directory>\n/' /etc/apache2/mods-enabled/userdir.conf

sudo apache2ctl graceful

#install xml libraries and related dependencies
sudo apt-get install lpr -y
sudo apt-get install libxml2-utils -y
sudo apt-get install xsltproc -y


cd /vagrant/
mkdir mooshak
cd mooshak

#download and copy mooshak
wget https://mooshak.dcc.fc.up.pt/download/mooshak-1.5.2.tgz
tar xzf mooshak-1.5.2.tgz
cd mooshak-1.5.2/
sudo ./install

