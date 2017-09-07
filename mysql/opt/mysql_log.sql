SELECT *, "general_log" as tag FROM mysql.general_log;
TRUNCATE general_log;

SELECT *, MICROSECOND(query_time) AS 'query_time_microseconds', MICROSECOND(lock_time) AS 'lock_time_microseconds', "slow_log" as tag FROM mysql.slow_log;
TRUNCATE slow_log;
