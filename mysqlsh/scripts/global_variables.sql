--SELECT LCASE(VARIABLE_NAME) AS 'key', VARIABLE_VALUE AS 'value' FROM information_schema.global_status
SELECT LCASE(VARIABLE_NAME) AS 'key', VARIABLE_VALUE AS 'value' FROM performance_schema.global_variables
UNION
SELECT 'tag' AS k, 'global_variables' AS v;
