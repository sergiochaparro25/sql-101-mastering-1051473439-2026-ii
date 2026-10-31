-- Ejercicio 04 - Literal c
-- Municipios de todo el pais cuyo nombre contiene
-- la palabra Pamplona sin distinguir mayusculas
-- y minusculas
coffee_coop_db=> SELECT
coffee_coop_db->     T1.municipality_code AS municipality_code,
coffee_coop_db->     T1.municipality_name AS municipality
coffee_coop_db-> FROM geo.municipalities AS T1
coffee_coop_db-> WHERE T1.municipality_name ILIKE '%Pamplona%'
coffee_coop_db-> ORDER BY T1.municipality_name ASC;
 municipality_code | municipality
-------------------+--------------
 54518             | Pamplona
(1 fila)