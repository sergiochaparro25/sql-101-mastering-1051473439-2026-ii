/*
Ejercicio 1.b - INNER JOIN
Consulta las fincas, sus municipios y sus respectivos propietarios.
*/
coffee_coop_db=> SELECT
coffee_coop_db->     T1.farm_name AS farm,
coffee_coop_db->     T1.rural_district AS rural_district,
coffee_coop_db->     T2.municipality_name AS municipality,
coffee_coop_db->     T3.first_name AS first_name,
coffee_coop_db->     T3.last_name AS last_name
coffee_coop_db-> FROM farm.farms AS T1
coffee_coop_db-> INNER JOIN geo.municipalities AS T2
coffee_coop_db->     ON T1.municipality_code = T2.municipality_code
coffee_coop_db-> INNER JOIN farm.farmers AS T3
coffee_coop_db->     ON T1.farmer_id = T3.farmer_id
coffee_coop_db-> WHERE T1.municipality_code = '54518'
coffee_coop_db-> ORDER BY T3.last_name ASC;
    /*   farm       |    rural_district    | municipality |     first_name     |      last_name
------------------+----------------------+--------------+--------------------+---------------------
 El Jardín        | El Escorial          | Pamplona     | Manuel             | Agudelo Jiménez
 La Selva         | Peñas                | Pamplona     | Manuel             | Agudelo Jiménez
 El Diamante      | El Alizal            | Pamplona     | Marleny            | Agudelo Sandoval
 El Encanto       | Fontibón             | Pamplona     | Rocío              | Álvarez Cárdenas
 Bellavista       | Alto Grande          | Pamplona     | Rocío              | Álvarez Cárdenas
 La Cabaña        | Lengua               | Pamplona     | Mónica             | Álvarez Carrillo
 Monteverde       | Lengua               | Pamplona     | Mónica             | Álvarez Carrillo
 El Arrayán       | Navarro              | Pamplona     | Marleny            | Álvarez Correa
 El Mango         | La Legua             | Pamplona     | Alberto            | Álvarez Villamizar
 Monteverde       | La Legua             | Pamplona     | Myriam Yuliana     | Arango Narváez
 El Recuerdo      | La Legua             | Pamplona     | Ancízar            | Arango Silva
 El Rosal         | Navarro              | Pamplona     | Edilma Gabriela    | Arias Álvarez
 Monteverde       | El Palchal           | Pamplona     | Edilma Gabriela    | Arias Álvarez
 Las Delicias     | Sabagua              | Pamplona     | Camilo             | Arias Mora
 La Quebrada      | Navarro              | Pamplona     | Viviana            | Arias Ramírez
 La Selva         | Sabaneta Baja        | Pamplona     | Guillermo Pedro    | Arias Rodríguez
 San Luis         | Sabaneta Alta        | Pamplona     | Isabella           | Barrera Cabrera
 La Siberia       | El Alizal            | Pamplona     | Mariana            | Barrera Correa
 El Brillante     | La Legua             | Pamplona     | Miguel             | Barrera Osorio
 La Floresta      | San José De Tonchala | Pamplona     | Ángela             | Barrera Peña
 El Oasis         | El Alizal            | Pamplona     | Ramiro             | Barrera Villamizar
 Agua Bonita      | Monteadentro         | Pamplona     | Manuela            | Bastidas Medina
 Monteverde       | Alto Grande          | Pamplona     | Antonio            | Bastidas Rodríguez
 Villa Rosa       | Cunuba               | Pamplona     | Fabio              | Bastidas Ruiz
 El Triunfo       | García               | Pamplona     | Rocío              | Bastidas Suárez
 La Argentina     | Caima                | Pamplona     | Rocío              | Bastidas Suárez
 Los Pinos        | San Francisco        | Pamplona     | Rafael Héctor      | Bedoya Pinzón*/