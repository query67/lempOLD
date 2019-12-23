## What’s a LEMP stack?
LEMP is a variation of the ubiquitous LAMP stack used for developing and deploying web applications. Traditionally, LAMP consists of Linux, Apache, MySQL, and PHP. Due to its modular nature, the components can easily be swapped out. With LEMP, Apache is replaced with the lightweight yet powerful Nginx.


## Ubuntu NGINX MySQL PHP & phpmyadmin + ProFTPD

## install:
     wget https://raw.githubusercontent.com/lemp-info/lemp/master/lemp.sh && chmod a+x lemp.sh && ./lemp.sh
     
 ## Usage: 
   sudo  /etc/init.d/lemp {start|stop|restart|status}
   
   sudo /etc/init.d/nginx   {start|stop|restart|status}
   sudo /etc/init.d/php     {start|stop|restart|status}
   sudo /etc/init.d/mysql  {start|stop|restart|reload|force-reload|status}
   sudo /etc/init.d/proftpd {start|stop|restart|status}
   
### www.lemp.info
### admin@lemp.info
