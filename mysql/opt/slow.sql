SELECT *, MICROSECOND(query_time) AS 'query_time_microseconds', MICROSECOND(lock_time) AS 'lock_time_microseconds' FROM mysql.slow_log;
TRUNCATE slow_log;
