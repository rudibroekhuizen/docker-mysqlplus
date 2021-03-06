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
docker-compose exec mysql bash
mysql -b -N -u root -pmypass mysql
```

### Import Sakila database
```bash
docker-compose exec mysql bash
bash /scripts/sakila.sh
```

### General and slow log to table
```bash
SET GLOBAL log_output = 'table';
SET GLOBAL long_query_time = 0;

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

### Useful commands
```bash
# Remove Elasticsearch indexes:
$ curl -XDELETE elasticsearch:9200/logstash-*

# Check CPU consumption
$ docker stats $(docker inspect -f "{{ .Name }}" $(docker ps -q))

# Remove containers plus volumes
$ docker-compose down -v --remove-orphans --rmi all
