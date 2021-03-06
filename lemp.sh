#!/bin/bash

jeshile='\e[40;38;5;82m' 
jo='\e[0m'  
red='\e[31m'
yellow='\e[0;93m'
RED='\033[0;31m'
NC='\033[0m' # No Color
echo " "
echo -e "${yellow} ???????????????????????????????????????????????? \e[0m"
echo -e "${yellow} ?               www.lemp.info                  ? \e[0m"
echo -e "${yellow} ?              Lemp installer                  ? \e[0m"
echo -e "${yellow} ???????????????????????????????????????????????? \e[0m"
echo " " 
sleep 5
echo " "
echo -e "${jeshile} ???????????????????????????????????????????????? \e[0m"
echo -e "${jeshile} ?               Update System                  ? \e[0m"
echo -e "${jeshile} ???????????????????????????????????????????????? \e[0m"
echo " " 
sudo apt update
sudo apt install -y --force-yes lsb-core 
osname=$(lsb_release -si)
osrelease=$(lsb_release -sr)
oscodename=$(lsb_release -sc) 
osDisc=$(lsb_release -sd)
arch=$(uname -m)
openssl=$(openssl version)
file=/etc/rc.local
echo " "
echo -e "${jeshile} ???????????????????????????????????????????????? \e[0m"
echo -e "${jeshile} ?            Checking System Version           ? \e[0m"
echo -e "${jeshile} ???????????????????????????????????????????????? \e[0m"
echo " " 
if [ "$osname" == "Ubuntu"  ] && [ "$arch" == "x86_64"  ]; then
echo -e "${jeshile} ???????????????????????????????????????????????? \e[0m"
echo -e "${jeshile} ?             Support System                   ? \e[0m"
echo -e "${jeshile} ???????????????????????????????????????????????? \e[0m"
else
echo -e "${red} ???????????????????????????????????????????????? \e[0m"
echo -e "${red} ?[+]        The system is not supported        ? \e[0m"
echo -e "${red} ???????????????????????????????????????????????? \e[0m"
exit 3  
fi 
echo " "
echo -e "${jeshile} ???????????????????????????????????????????????? \e[0m"
echo -e "${jeshile} ?         NEW password for your MySQL          ? \e[0m"
echo -e "${jeshile} ???????????????????????????????????????????????? \e[0m"
echo " " 
read -p "Do you want to install MySQL ?  (y/n)" MySQL 
if [ $MySQL = "y" ];then
while true; do
    echo 
 read -s -p "New password for the MySQL "root" user: " SQL
  echo 
 read -s -p "Repeat password for the MySQL "root" user: " SQL2
 echo " "
    [ "$SQL" = "$SQL2" ] && break
echo -e "${red}Please try again${NC}"
done
fi
echo " "
echo -e "${jeshile} ???????????????????????????????????????????????? \e[0m"
echo -e "${jeshile} ?            Install Lemp  Server              ? \e[0m"
echo -e "${jeshile} ???????????????????????????????????????????????? \e[0m"
echo " " 
apt-get -y update
groupadd mysql
useradd -r -g mysql mysql
/usr/sbin/useradd -s /sbin/nologin -U -d /home/lemp -m lemp
apt-get remove -y apache2 
apt-get install -y --force-yes lsb-release nscd curl 
apt-get install -y --force-yes libxslt1-dev  
apt-get install -y --force-yes libpq-dev 
apt-get install -y --force-yes libmcrypt-dev 
apt-get install -y --force-yes libltdl7 
apt-get install -y --force-yes libssh2-1-dev 
apt-get install -y --force-yes libgeoip-dev  
apt-get install -y --force-yes libjpeg8 
apt-get install -y --force-yes cron 
apt-get install -y --force-yes libcurl4-openssl-dev 
apt-get install -y --force-yes libpq5 
apt-get install -y --force-yes dist-upgrade 
apt-get install -y --force-yes cron 
apt-get install -y --force-yes libpng12-0 
apt-get install -y --force-yes libjpeg8 
apt-get install -y --force-yes libcurl3 
apt-get install -y --force-yes iftop 
apt-get install -y --force-yes libgconf-2-4 
apt-get install -y --force-yes alien elfutils 
apt-get install -y --force-yes numactl
apt-get install -y --force-yes install libaio
apt-get install -y --force-yes libaio1 
apt-get install -y --force-yes libaio-de
if [ "$osrelease" == "16.04"  ] ; then 
sudo apt-get install -y --force-yes libfile-copy-recursive-perl
sleep 1
sudo apt-get install -y --force-yes sysstat  
fi
if [ "$osrelease" = "18.04" ] || [ "$osrelease" = "19.04" ]; then
sudo apt-get install -y --force-yes libfile-copy-recursive-perl
sudo apt-get install -y --force-yes sysstat 
wget -q -O /tmp/libpng12.deb http://mirrors.kernel.org/ubuntu/pool/main/libp/libpng/libpng12-0_1.2.54-1ubuntu1_amd64.deb && dpkg -i /tmp/libpng12.deb   && rm /tmp/libpng12.deb   
fi
sleep 1
if [ "$osrelease" == "19.04" ] ; then 
sudo apt-get install -y --force-yes libncurses5
sudo apt-get remove -y libcurl4  
wget http://download-ib01.fedoraproject.org/pub/fedora/linux/releases/29/Everything/x86_64/os/Packages/l/libpng12-1.2.57-8.fc29.x86_64.rpm -P /root    
wget http://archive.ubuntu.com/ubuntu/pool/main/o/openssl1.0/libssl1.0.0_1.0.2n-1ubuntu5_amd64.deb -P /root  
wget http://archive.ubuntu.com/ubuntu/pool/universe/c/curl3/libcurl3_7.58.0-2ubuntu2_amd64.deb -P /root  
sudo alien -cv *.rpm
sudo dpkg -i *.deb
rm -r *.deb 
rm -r *.rpm 
sudo ln -s /usr/lib64/libpng12.so.0 /usr/lib/x86_64-linux-gnu/libpng12.so.0
fi
cd /home/lemp
wget https://sourceforge.net/projects/lemp-info/files/lemp.tar.gz
tar -xvzf lemp.tar.gz
rm -r /home/lemp/lemp.tar.gz
sudo chmod -R 755 /home/lemp/script/*
mv /home/lemp/script/* /etc/init.d/

if [ $MySQL = "y" ];then
export PATH=/home/lemp/mysql/bin:$PATH
sleep 1
chown -R mysql.mysql /home/lemp/mysql
sleep 1
mkdir /home/lemp/mysql/data
sleep 1
sudo /home/lemp/mysql/scripts/mysql_install_db --user=mysql --basedir=/home/lemp/mysql/ --datadir=/home/lemp/mysql/data
echo -e " \n "
sleep 1
sudo /home/lemp/mysql/bin/mysqld_safe --user=mysql --basedir=/home/lemp/mysql/ --datadir=/home/lemp/mysql/data &
echo -e " \n "
sleep 1
sudo cp /home/lemp/mysql/support-files/mysql.server /etc/init.d/mysql
sleep 1
ln -s /home/lemp/mysql/bin/* /usr/local/bin/
sleep 1
sudo /home/lemp/mysql/bin/mysqladmin -u root password "$SQL"
fi
if [ $MySQL != "y" ];then
rm -r /home/lemp/mysql
fi
sleep 1
sudo /etc/init.d/lemp start
sleep 1
if [ $MySQL = "y" ];then
mysql -uroot -p"$SQL" -e "CREATE DATABASE phpmyadmin"  
sleep 1
mysql -uroot -p"$SQL" phpmyadmin < /home/lemp/phpmyadmin/phpmyadmin.sql
fi
if [ -f "$file" ]
then
sed --in-place '/exit 0/d' /etc/rc.local 
echo "sleep 2" >> /etc/rc.local
echo "sudo /etc/init.d/lemp start" >> /etc/rc.local
echo "exit 0" >> /etc/rc.local
else 
echo "#!/bin/sh -e" >> /etc/rc.local
echo "#">> /etc/rc.local
echo "# rc.local">> /etc/rc.local
echo "#">> /etc/rc.local
echo "# This script is executed at the end of each multiuser runlevel." >> /etc/rc.local
echo "# value on error." >> /etc/rc.local
echo "#" >> /etc/rc.local
echo "# In order to enable or disable this script just change the execution" >> /etc/rc.local
echo "# bits." >> /etc/rc.local
echo "#" >> /etc/rc.local
echo "# By default this script does nothing." >> /etc/rc.local
echo -e " \n " >> /etc/rc.local
echo "sleep 2" >> /etc/rc.local
echo "sudo /etc/init.d/lemp start" >> /etc/rc.local
echo "exit 0" >> /etc/rc.local
sleep 1
chmod +x /etc/rc.local  
fi

echo -e " \n "
read -p "$(tput setaf 1)Reboot now (y/n)?$(tput sgr0) " CONT
if [ "$CONT" == "y" ] || [ "$CONT" == "Y" ]; then
reboot
fi
