-- Ejercicio 07 - Literal c
-- Consultar las fincas de Pamplona que no tienen
-- latitud o longitud registradas
coffee_coop_db=> SELECT
coffee_coop_db->     T1.farm_name AS farm,
coffee_coop_db->     T1.rural_district AS rural_district,
coffee_coop_db->     T1.latitude AS latitude,
coffee_coop_db->     T1.longitude AS longitude
coffee_coop_db-> FROM farm.farms AS T1
coffee_coop_db-> WHERE T1.municipality_code = '54518'
coffee_coop_db-> AND (T1.latitude IS NULL OR T1.longitude IS NULL)
coffee_coop_db-> ORDER BY T1.farm_name ASC;
       farm       |    rural_district    | latitude | longitude
------------------+----------------------+----------+-----------
 Altamira         | El Alizal            |          |
 Bella Vista Alta | El Rosal             |          |
 Bella Vista Alta | Sabaneta Baja        |          |
 Bella Vista Alta | Alto Grande          |          |
 Bella Vista Alta | Sabaneta Baja        |          |
 Bellavista       | San JosÃ© De Tonchala |          |
 Bellavista       | PeÃ±as                |          |
 Bellavista       | Alto Grande          |          |
 Bellavista       | Cunuba               |          |
 Cafetal Viejo    | Caima                |          |
 Cafetal Viejo    | La Legua             |          |
 Cafetal Viejo    | San JosÃ© De Tonchala |          |
 El Bosque        | Tampanqueba          |          |
 El Brillante     | La Legua             |          |
 El Brillante     | PeÃ±as                |          |
 El Brillante     | Navarro              |          |
 El Cedro         | Iscaligua            |          |
 El Cedro         | La Legua             |          |
 El Danubio       | GarcÃ­a               |          |
 El Danubio       | Tampanqueba          |          |
 El Diamante      | Monteadentro         |          |
 El Diamante      | El Alizal            |          |
 El EdÃ©n          | Cabecera Municipal   |          |
 El Encanto       | San JosÃ© De Tonchala |          |
 El Encanto       | FontibÃ³n             |          |
 El Encanto       | GarcÃ­a               |          |
 El Guamo         | FontibÃ³n             |          |
 El Guamo         | FontibÃ³n             |          |
 El Guayabo       | Caima                |          |
 El Guayabo       | Tampanqueba          |          |
 El Guayabo       | San Francisco        |          |
 El Guayabo       | El Totumo            |          |
 El HiguerÃ³n      | La â”ŒPa               |          |
 El HiguerÃ³n      | Caima                |          |
 El Horizonte     | San JosÃ© De Tonchala |          |
 El Horizonte     | La â”ŒPa               |          |
 El Manantial     | Santa Matilde        |          |
 El Mango         | La â”ŒPa               |          |
 El Mango         | La Legua             |          |
 El MesÃ³n         | Iscaligua            |          |
 El Mirador       | FontibÃ³n             |          |
 El Mirador       | El Palchal           |          |
 El Nogal         | El Totumo            |          |
 El Nogal         | Tampanqueba          |          |
 El Oasis         | El Alizal            |          |
 El ParaÃ­so       | Navarro              |          |
 El ParaÃ­so       | El Palchal           |          |
 El Placer        | Monteadentro         |          |
 El Porvenir      | FontibÃ³n             |          |
 El Recuerdo      | Alto Grande          |          |
 El Refugio       | Sabaneta Baja        |          |
 El Refugio       | PeÃ±as                |          |
 El Refugio       | Monteadentro         |          |
 El Retiro        | Sabaneta Alta        |          |
 El Silencio      | Iscaligua            |          |
 El Silencio      | Jurado               |          |
 El Tesoro        | PeÃ±as                |          |
 El Triunfo       | Cabecera Municipal   |          |
 El Triunfo       | El Escorial          |          |
 El Vergel        | Cabecera Municipal   |          |
 La Argentina     | Sabaneta Baja        |          |
 La Argentina     | PeÃ±as                |          |
 La Aurora        | El Palchal           |          |
 La CabaÃ±a        | Lengua               |          |
 La CabaÃ±a        | La â”ŒPa               |          |
 La CabaÃ±a        | Cunuba               |          |
 La CabaÃ±a        | Sabagua              |          |
 La Carolina      | Llano Castro         |          |
 La Cascada       | Caima                |          |
 La Cascada       | Lengua               |          |
 La Cumbre        | Cabecera Municipal   |          |
 La Esperanza     | El Palchal           |          |
 La Esperanza     | El Rosal             |          |
 La Esperanza     | PeÃ±as                |          |
 La Esperanza     | Monteadentro         |          |
 La Floresta      | PeÃ±as                |          |
 La Floresta      | San JosÃ© De Tonchala |          |
 La Floresta      | Alcaparral           |          |
 La Florida       | PeÃ±as                |          |
 La Fortuna       | San Francisco        |          |
 La Gaitana       | Cunuba               |          |
 La Gloria        | San JosÃ© De Tonchala |          |
 La Granja        | El Palchal           |          |
 La Holanda       | Cabecera Municipal   |          |
 La Isabela       | GarcÃ­a               |          |
 La Isabela       | Monteadentro         |          |
 La Loma          | Jurado               |          |
 La Loma          | Sabagua              |          |
 La Milagrosa     | El Palchal           |          |
 La Milagrosa     | Jurado               |          |
 La Palma         | Cunuba               |          |
 La Palma         | El Escorial          |          |
 La Palma         | Tampanqueba          |          |
 La Palma         | Cunuba               |          |
 La Palma         | Iscaligua            |          |
 La Pradera       | Sabagua              |          |
 La Primavera     | San JosÃ© De Tonchala |          |
 La Quebrada      | El Totumo            |          |
 La Quebrada      | Monteadentro         |          |
 La Reserva       | El Escorial          |          |
 La Reserva       | GarcÃ­a               |          |
 La Selva         | PeÃ±as                |          |
 La Siberia       | El Alizal            |          |
 La Siberia       | Sabaneta Baja        |          |
 La Siberia       | Monteadentro         |          |
 La UniÃ³n         | La Legua             |          |
 Las Brisas       | Alto Grande          |          |
 Las Delicias     | Caima                |          |
 Las Margaritas   | El Palchal           |          |
 Las Margaritas   | Caima                |          |
 Las Margaritas   | GarcÃ­a               |          |
 Las Margaritas   | FontibÃ³n             |          |
 Las Mercedes     | Llano Castro         |          |
 Las Mercedes     | Navarro              |          |
 Las Mercedes     | San Francisco        |          |
 Las OrquÃ­deas    | Sabaneta Baja        |          |
 Las Palmas       | El Escorial          |          |
 Los Arrayanes    | El Palchal           |          |
 Los Arrayanes    | Navarro              |          |
 Los Arrayanes    | Cabecera Municipal   |          |
 Los Guaduales    | Santa Matilde        |          |
 Los Laureles     | PeÃ±as                |          |
 Los Laureles     | El Alizal            |          |
 Los Laureles     | San JosÃ© De Tonchala |          |
 Los Naranjos     | El Rosal             |          |
 Los Pinos        | Alcaparral           |          |
 Mi Ranchito      | Iscaligua            |          |
 Miraflores       | Alcaparral           |          |
 Monteverde       | Tampanqueba          |          |
 San Antonio      | La Legua             |          |
 San Antonio      | Jurado               |          |
 San Antonio      | Iscaligua            |          |
 San JosÃ©         | Tampanqueba          |          |
 San JosÃ©         | Iscaligua            |          |
 San JosÃ©         | Santa Matilde        |          |
 San Luis         | Tampanqueba          |          |
 San Luis         | Sabaneta Alta        |          |
 San Luis         | Sabaneta Alta        |          |
 San Rafael       | San JosÃ© De Tonchala |          |
 San Rafael       | Tampanqueba          |          |
 San Rafael       | El Totumo            |          |
 Santa BÃ¡rbara    | Caima                |          |
 Santa Clara      | La Legua             |          |
 Santa Clara      | Cunuba               |          |
 Tierra Linda     | La Legua             |          |
 Tierra Linda     | Iscaligua            |          |
 Tierra Linda     | Lengua               |          |
 Tierra Linda     | Tampanqueba          |          |
 Villa Hermosa    | El Escorial          |          |
 Villa Hermosa    | El Rosal             |          |
 Villa Rosa       | PeÃ±as                |          |
 Villa Rosa       | El Alizal            |          |
 Villa Rosa       | Cunuba               |          |
(153 filas)