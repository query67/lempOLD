## What’s a LEMP stack?
LEMP is a variation of the ubiquitous LAMP stack used for developing and deploying web applications. Traditionally, LAMP consists of Linux, Apache, MySQL, and PHP. Due to its modular nature, the components can easily be swapped out. With LEMP, Apache is replaced with the lightweight yet powerful Nginx.


## Ubuntu NGINX MySQL PHP & phpmyadmin + ProFTPD

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
    https://payleq8.com/en/Paylegateway/buyerperchase/fc844bf0e2e5062e2e1671772feea899c1edd2ff
