CREATE SCHEMA `webshop`;

CREATE USER 'userparr'@'%' IDENTIFIED WITH mysql_native_password BY 'r3suc1t4d0';

GRANT ALL ON webshop.* TO 'userparr'@'%'; 
