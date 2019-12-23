## What’s a LEMP stack?
LEMP is a variation of the ubiquitous LAMP stack used for developing and deploying web applications. Traditionally, LAMP consists of Linux, Apache, MySQL, and PHP. Due to its modular nature, the components can easily be swapped out. With LEMP, Apache is replaced with the lightweight yet powerful Nginx.
## lemp.info
    We tried to create an easy script to install. In short time everything is installed. 
    To host projects on a Linux server system. 
    To teach programming or hosting websites
    

## Ubuntu NGINX MySQL PHP & ProFTPD + phpMyAdmin
    nginx   Version 1.13.11
    PHP     Version 7.2.19
    MySQL   Version 5.5.62 
    ProFTPD Version 1.3.5
    phpmyadmin Version 4.9.1 
## install:
     wget https://raw.githubusercontent.com/lemp-info/lemp/master/lemp.sh && chmod a+x lemp.sh && ./lemp.sh
     
## Path
     Lemp: /home/lemp
     www: /home/lemp/www 
     
     
 ## Usage: 
     sudo /etc/init.d/lemp {start|stop|restart|status}
     sudo /etc/init.d/nginx   {start|stop|restart|status}
     sudo /etc/init.d/php     {start|stop|restart|status}
     sudo /etc/init.d/mysql   {start|stop|restart|status}
     sudo /etc/init.d/proftpd {start|stop|restart|status}
     
## phpMyAdmin
     http://ipaddress/phpmyadmin
     username: root
     password: mysql password
        
## how to login to proftpd server ( FTP )
     1. set password for user lemp: sudo passwd lemp
     2. ftp://ipadderss/ 
     username: lemp
     password: lemp password
     
### www.lemp.info
### www.nginxfriends.org
### admin@lemp.info

### Donation 
http://bit.ly/34RjJrc
    1 KD = 3.29 USD
