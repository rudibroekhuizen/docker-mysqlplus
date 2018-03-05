#mysql -b -N -u root -pmypass mysql < /scripts/create_users.sql

CREATE USER 'admin'@'localhost' IDENTIFIED BY 'mypass';
GRANT ALL PRIVILEGES ON *.* TO 'admin'@'localhost' WITH GRANT OPTION;

CREATE USER 'analytics'@'localhost' IDENTIFIED BY 'mypass';
GRANT PROCESS, REPLICATION CLIENT, SELECT ON *.* TO 'analytics'@'localhost';
