# docker-mysqlplus
MySQL with Kibana dashboard running on Docker

```bash
docker exec -it dockermysqlplus_mysql_1 sh
```

Pull records from slow_log and truncate, repeat every 30 seconds:
```bash
yes "mysql -b -N -u root -pmypass mysql < slow.sql >> /tmp/slow.log" | parallel --jobs 1 --delay 30
```

Pull records from general_log and truncate, repeat every 30 seconds:
```bash
yes "mysql -b -N -u root -pmypass mysql < general.sql >> /tmp/general.log" | parallel --jobs 1 --delay 30
```

Run query 1000 times:
```bash
yes "mysql -b -N -u root -pmypass mysql < query.sql" | head -n 1000 | parallel
```
