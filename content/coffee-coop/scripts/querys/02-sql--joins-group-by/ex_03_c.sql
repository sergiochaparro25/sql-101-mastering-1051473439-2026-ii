/*
Ejercicio 3.c - RIGHT JOIN
Consulta las variedades de café que no están registradas
en ningún lote de cultivo.
*/
coffee_coop_db=> SELECT
coffee_coop_db->     T2.variety_name AS variety,
coffee_coop_db->     T2.species AS species
coffee_coop_db-> FROM farm.plot_varieties AS T1
coffee_coop_db-> RIGHT JOIN farm.coffee_varieties AS T2
coffee_coop_db->     ON T1.variety_id = T2.variety_id
coffee_coop_db-> WHERE T1.variety_id IS NULL
coffee_coop_db-> ORDER BY T2.variety_name ASC;
/* variety | species
---------+---------
(0 filas)*/