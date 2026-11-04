-- Ejercicio 01 - c
-- Consultar en una sola fila la fecha y hora actuales
-- y la fecha actual, utilizando NOW() y CURRENT_DATE.
coffee_coop_db=> SELECT
coffee_coop_db->     NOW() AS now_ts,
coffee_coop_db->     CURRENT_DATE AS today;
/*            now_ts             |   today
-------------------------------+------------
 2026-11-04 18:49:47.746688-05 | 2026-11-04
(1 fila)*/
