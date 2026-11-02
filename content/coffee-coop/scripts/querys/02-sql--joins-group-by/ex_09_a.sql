
/*
Ejercicio 9.a - HAVING
Consulta los departamentos que tienen más de 40 municipios.
*/
coffee_coop_db=> SELECT
coffee_coop_db->     T1.department_name AS department,
coffee_coop_db->     COUNT(T2.municipality_code) AS municipalities_count
coffee_coop_db-> FROM geo.departments AS T1
coffee_coop_db-> INNER JOIN geo.municipalities AS T2
coffee_coop_db->     ON T1.department_code = T2.department_code
coffee_coop_db-> GROUP BY T1.department_code, T1.department_name
coffee_coop_db-> HAVING COUNT(T2.municipality_code) > 40
coffee_coop_db-> ORDER BY municipalities_count DESC;
/*   department    | municipalities_count
-----------------+----------------------
 Antioquia       |                  125
 Boyacá          |                  123
 Cundinamarca    |                  116
 Santander       |                   87
 Nariño          |                   64
 Tolima          |                   47
 Bolívar         |                   46
 Cauca           |                   42
 Valle Del Cauca |                   42
(9 filas)*/