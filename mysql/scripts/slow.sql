SELECT start_time, user_host, MICROSECOND(query_time) AS 'query_time_microseconds', MICROSECOND(lock_time) AS 'lock_time_microseconds', rows_sent, rows_examined, db, last_insert_id, insert_id, server_id, CONVERT(sql_text USING utf8) as sql_text, thread_id FROM mysql.slow_log;
TRUNCATE mysql.slow_log;
