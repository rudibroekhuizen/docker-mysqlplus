SELECT LCASE(VARIABLE_NAME) AS 'key', VARIABLE_VALUE AS 'value' FROM performance_schema.global_status
UNION (
SELECT 'tag' AS k, 'global_status' AS v);
