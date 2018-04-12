/*MySQL 5.7.6 and up only*/
/*!50706
SELECT LCASE(VARIABLE_NAME) AS 'key', VARIABLE_VALUE AS 'value' FROM performance_schema.global_status
UNION
SELECT 'hostname' AS k, @@hostname AS v
UNION
SELECT 'tag' AS k, 'global_status' AS v
*/;

SELECT LCASE(VARIABLE_NAME) AS 'key', VARIABLE_VALUE AS 'value' FROM information_schema.global_status
UNION
SELECT 'tag' AS k, 'global_status' AS v;
