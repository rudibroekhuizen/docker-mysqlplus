# docker-mysqlplus
MySQL with Kibana dashboard running on Docker

Pull records from slow_log and truncate every 30 seconds:
```bash
yes "mysql -b -N -u root -pmypass mysql < slow.sql >> /tmp/slow.log" | parallel --delay 30
```

Run query 1000 times:
```bash
yes "mysql -b -N -u root -pmypass mysql < query.sql" | head -n 1000 | parallel
```
