SELECT CONCAT(table_schema, '.', table_name) AS 'key',
(data_length + index_length) as 'value' FROM information_schema.tables
WHERE table_schema not in ('information_schema','mysql','performance_schema','sys') 
ORDER BY value DESC LIMIT 10;
