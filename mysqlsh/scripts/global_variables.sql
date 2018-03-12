/*MySQL 5.7.6 and up only*/
/*!50706
SELECT LCASE(VARIABLE_NAME) AS 'key', VARIABLE_VALUE AS 'value' FROM performance_schema.global_variables
UNION
SELECT 'tag' AS k, 'global_variables' AS v
*/;

SELECT LCASE(VARIABLE_NAME) AS 'key', VARIABLE_VALUE AS 'value' FROM information_schema.global_variables
UNION
SELECT 'tag' AS k, 'global_variables' AS v;
