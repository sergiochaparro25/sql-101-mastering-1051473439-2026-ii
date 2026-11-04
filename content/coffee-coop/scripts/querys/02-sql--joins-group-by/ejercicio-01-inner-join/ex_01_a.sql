/*
Ejercicio 1.a - INNER JOIN
Consulta los municipios de Norte de Santander junto con su departamento.
*/
coffee_coop_db=> SELECT
coffee_coop_db->     T1.municipality_code AS municipality_code,
coffee_coop_db->     T1.municipality_name AS municipality,
coffee_coop_db->     T2.department_name AS department
coffee_coop_db-> FROM geo.municipalities AS T1
coffee_coop_db-> INNER JOIN geo.departments AS T2
coffee_coop_db->     ON T1.department_code = T2.department_code
coffee_coop_db-> WHERE T1.department_code = '54'
coffee_coop_db-> ORDER BY T1.municipality_name ASC;
/*municipality_code |   municipality    |     department
-------------------+-------------------+--------------------
 54003             | Ábrego            | Norte De Santander
 54051             | Arboledas         | Norte De Santander
 54099             | Bochalema         | Norte De Santander
 54109             | Bucarasica        | Norte De Santander
 54128             | Cáchira           | Norte De Santander
 54125             | Cácota            | Norte De Santander
 54172             | Chinácota         | Norte De Santander
 54174             | Chitagá           | Norte De Santander
 54206             | Convención        | Norte De Santander
 54001             | Cúcuta            | Norte De Santander
 54223             | Cucutilla         | Norte De Santander
 54239             | Durania           | Norte De Santander
 54245             | El Carmen         | Norte De Santander
 54250             | El Tarra          | Norte De Santander
 54261             | El Zulia          | Norte De Santander
 54313             | Gramalote         | Norte De Santander
 54344             | Hacarí            | Norte De Santander
 54347             | Herrán            | Norte De Santander*/