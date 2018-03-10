SELECT 'db_size' as tag, table_schema "database name",
  sum( data_length + index_length ) AS "database_size",
  sum( data_free ) AS "free_space"
FROM information_schema.TABLES
WHERE table_schema not in ('information_schema','mysql','performance_schema','sys')
GROUP BY table_schema;
