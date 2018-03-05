CREATE USER 'admin'@'localhost' IDENTIFIED BY 'mypass';
GRANT ALL PRIVILEGES ON *.* TO 'admin'@'localhost' WITH GRANT OPTION;

CREATE USER 'analytics'@'localhost' IDENTIFIED BY 'mypass';
GRANT PROCESS, REPLICATION CLIENT, SELECT ON *.* TO 'analytics'@'localhost';
