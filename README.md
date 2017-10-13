# docker-mysqlplus
MySQL with Kibana dashboard running on Docker

## Usage
Install Docker. Clone this repo to your local machine. Run docker-compose: 
```bash
docker-compose up
```

### Open phpMyAdmin webinterface
```bash
http://localhost:8090/
```

### Connect to MySQL container and login with MySQL client
```bash
docker exec -it dockermysqlplus_mysql_1 sh
su
mysql -b -N -u root -pmypass mysql
```

### General and slow log to table
```bash
SET GLOBAL log_output = 'table';

SET GLOBAL general_log = 'ON';
SET GLOBAL slow_query_log = 'ON';

SET GLOBAL general_log = 'OFF';
SET GLOBAL slow_query_log = 'OFF';

SHOW VARIABLES LIKE '%log%';
```

### Pull records from slow_log and truncate, repeat every 30 seconds
```bash
yes "mysql -b -N -u root -pmypass mysql < /scripts/slow.sql >> /tmp/slow.log" | parallel --jobs 1 --delay 30
```

### Pull records from general_log and truncate, repeat every 30 seconds
```bash
yes "mysql -b -N -u root -pmypass mysql < /scripts/general.sql >> /tmp/general.log" | parallel --jobs 1 --delay 30
```

### Run query 1000 times
```bash
yes "mysql -b -N -u root -pmypass mysql < /scripts/query.sql" | head -n 1000 | parallel
```
