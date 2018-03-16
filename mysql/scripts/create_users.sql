--mysql -b -N -u root -pmypass mysql < /scripts/create_users.sql

FLUSH PRIVILEGES;

ALTER USER 'analytics'@'localhost' IDENTIFIED BY 'mypass';
ALTER USER 'analytics'@'%' IDENTIFIED BY 'mypass';

CREATE USER 'analytics'@'localhost' IDENTIFIED BY 'mypass';
GRANT ALL PRIVILEGES ON *.* TO 'analytics'@'localhost';

CREATE USER 'analytics'@'%' IDENTIFIED BY 'mypass';
GRANT ALL PRIVILEGES ON *.* TO 'analytics'@'%';

CREATE USER 'admin'@'localhost' IDENTIFIED BY 'mypass';
GRANT ALL PRIVILEGES ON *.* TO 'admin'@'localhost';

CREATE USER 'admin'@'%' IDENTIFIED BY 'mypass';
GRANT ALL PRIVILEGES ON *.* TO 'admin'@'%';
