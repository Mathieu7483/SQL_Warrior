show databases;
use location_velos;
show tables;

SELECT TABLE_NAME, SUM(TABLE_ROWS) AS num_of_data
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA = 'location_velos'
GROUP BY TABLE_NAME
ORDER BY num_of_data DESC;