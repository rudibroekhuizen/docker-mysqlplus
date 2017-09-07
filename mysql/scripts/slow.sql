SELECT *, MICROSECOND(query_time) AS 'query_time_microseconds', MICROSECOND(lock_time) AS 'lock_time_microseconds' FROM mysql.slow_log;
# SELECT *, SECOND(query_time) AS 'query_time_seconds', SECOND(lock_time) AS 'lock_time_seconds' FROM mysql.slow_log;
TRUNCATE mysql.slow_log;
