/*
Ejercicio 2.a - LEFT JOIN
Consulta todos los asociados del municipio 54518,
incluyendo aquellos que no tienen fincas registradas.
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
coffee_coop_db-> ORDER BY T1.last_name ASC;
/*  document  |    first_name     |     last_name      |       farm
------------+-------------------+--------------------+------------------
 230971064  | Manuel            | Agudelo Jiménez    | La Selva
 230971064  | Manuel            | Agudelo Jiménez    | El Jardín
 230971064  | Manuel            | Agudelo Jiménez    | Las Acacias
 768461420  | Marleny           | Agudelo Sandoval   | El Paraíso
 768461420  | Marleny           | Agudelo Sandoval   | El Diamante
 931079279  | Edilma            | Álvarez Bonilla    | El Triunfo
 931079279  | Edilma            | Álvarez Bonilla    | La Argentina
 463842401  | Rocío             | Álvarez Cárdenas   | La Cumbre
 463842401  | Rocío             | Álvarez Cárdenas   | Bellavista
 463842401  | Rocío             | Álvarez Cárdenas   | El Encanto
 788628125  | Mónica            | Álvarez Carrillo   | Monteverde
 788628125  | Mónica            | Álvarez Carrillo   | La Cabaña
 939635303  | Marleny           | Álvarez Correa     | El Arrayán
 939635303  | Marleny           | Álvarez Correa     | El Silencio
 939635303  | Marleny           | Álvarez Correa     | La Victoria
 14046794   | Alberto           | Álvarez Villamizar | El Mango
 1089620113 | Myriam Yuliana    | Arango Narváez     | Monteverde
 502796073  | Ancízar           | Arango Silva       | El Recuerdo
 172555225  | Edilma Gabriela   | Arias Álvarez      | El Rosal
 172555225  | Edilma Gabriela   | Arias Álvarez      | Monteverde
 302223305  | Camilo            | Arias Mora         | Las Delicias
 550696749  | Viviana           | Arias Ramírez      | La Quebrada
 550696749  | Viviana           | Arias Ramírez      | La Soledad
 1061690671 | Guillermo Pedro   | Arias Rodríguez    | La Selva
 797017145  | Isabella          | Barrera Cabrera    | San Luis
 659942505  | Mariana           | Barrera Correa     | La Siberia
 483692716  | Ramiro            | Barrera Villamizar | El Oasis*/