-- Database size and free space
SELECT table_schema "database name",
  sum( data_length + index_length ) AS "database_size",
  sum( data_free ) AS "free_space"
FROM information_schema.TABLES
WHERE table_schema not in ('information_schema','mysql','performance_schema','sys')
GROUP BY table_schema;

-- Top 10 table size
--SELECT CONCAT(table_schema, '.', table_name) AS 'key',
--(data_length + index_length) as 'value' FROM information_schema.tables
--WHERE table_schema not in ('information_schema','mysql','performance_schema','sys') 
--ORDER BY value DESC LIMIT 10;
