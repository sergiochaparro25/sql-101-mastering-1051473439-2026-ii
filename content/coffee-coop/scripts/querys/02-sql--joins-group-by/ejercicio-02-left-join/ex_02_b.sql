/*
Ejercicio 2.b - LEFT JOIN
Consulta únicamente los asociados del municipio 54518
que no tienen fincas registradas.
*/
coffee_coop_db=> SELECT
coffee_coop_db->     T1.document_number AS document,
coffee_coop_db->     T1.first_name AS first_name,
coffee_coop_db->     T1.last_name AS last_name,
coffee_coop_db->     T2.farm_name AS farm
coffee_coop_db-> FROM farm.farmers AS T1
coffee_coop_db-> LEFT JOIN farm.farms AS T2
coffee_coop_db->     ON T1.farmer_id = T2.farmer_id
coffee_coop_db-> WHERE T1.municipality_code = '54518'
coffee_coop_db->     AND T2.farm_id IS NULL
coffee_coop_db-> ORDER BY T1.last_name ASC;
/* document | first_name | last_name | farm
----------+------------+-----------+------
(0 filas)*/