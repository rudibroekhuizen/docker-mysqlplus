SELECT event_time, user_host, thread_id, server_id, command_type, CONVERT(argument USING utf8) as argument FROM mysql.general_log;
TRUNCATE mysql.general_log;
