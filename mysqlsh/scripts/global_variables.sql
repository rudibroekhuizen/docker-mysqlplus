SELECT VARIABLE_NAME AS 'key', VARIABLE_VALUE AS 'value' FROM performance_schema.global_variables
UNION (
SELECT 'Tag' AS k, 'global_variables' AS v);
