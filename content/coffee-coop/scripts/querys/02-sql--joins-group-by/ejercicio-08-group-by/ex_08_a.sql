/*
Ejercicio 8.a - GROUP BY
Cuenta la cantidad de municipios registrados por departamento.
*/
coffee_coop_db=> SELECT
coffee_coop_db->     T1.department_name AS department,
coffee_coop_db->     COUNT(T2.municipality_code) AS municipalities_count
coffee_coop_db-> FROM geo.departments AS T1
coffee_coop_db-> INNER JOIN geo.municipalities AS T2
coffee_coop_db->     ON T1.department_code = T2.department_code
coffee_coop_db-> GROUP BY T1.department_code, T1.department_name
coffee_coop_db-> ORDER BY municipalities_count DESC;
/*                        department                        | municipalities_count
----------------------------------------------------------+----------------------
 Antioquia                                                |                  125
 Boyacá                                                   |                  123
 Cundinamarca                                             |                  116
 Santander                                                |                   87
 Nariño                                                   |                   64
 Tolima                                                   |                   47
 Bolívar                                                  |                   46
 Valle Del Cauca                                          |                   42
 Cauca                                                    |                   42
 Norte De Santander                                       |                   40
 Huila                                                    |                   37
 Córdoba                                                  |                   30
 Chocó                                                    |                   30
 Magdalena                                                |                   30
 Meta                                                     |                   29
 Caldas                                                   |                   27
 Sucre                                                    |                   26
 Cesar                                                    |                   25
 Atlántico                                                |                   23
 Casanare                                                 |                   19
 Caquetá                                                  |                   16
 La Guajira                                               |                   15
 Risaralda                                                |                   14
 Putumayo                                                 |                   13
 Quindio                                                  |                   12
 Arauca                                                   |                    7
 Guaviare                                                 |                    4
 Vichada                                                  |                    4
 Vaupés                                                   |                    3
 Archipiélago De San Andrés, Providencia Y Santa Catalina |                    2
 Amazonas                                                 |                    2
 Guainía                                                  |                    1
 Bogotá, D.C.                                             |                    1
(33 filas)*/