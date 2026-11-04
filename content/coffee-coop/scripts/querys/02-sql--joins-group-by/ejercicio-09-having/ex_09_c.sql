/*
Ejercicio 9.c - HAVING
Consulta las fincas con al menos 3 análisis de calidad
y un promedio de puntuación de taza igual o superior a 84.
*/
coffee_coop_db=> SELECT
coffee_coop_db->     T1.farm_name AS farm,
coffee_coop_db->     COUNT(T3.analysis_id) AS analyses_count,
coffee_coop_db->     ROUND(AVG(T3.cup_score), 2) AS avg_cup_score
coffee_coop_db-> FROM farm.farms AS T1
coffee_coop_db-> INNER JOIN buy.deliveries AS T2
coffee_coop_db->     ON T1.farm_id = T2.farm_id
coffee_coop_db-> INNER JOIN buy.quality_analyses AS T3
coffee_coop_db->     ON T2.delivery_id = T3.delivery_id
coffee_coop_db-> GROUP BY T1.farm_id, T1.farm_name
coffee_coop_db-> HAVING COUNT(T3.analysis_id) >= 3
coffee_coop_db->     AND AVG(T3.cup_score) >= 84
coffee_coop_db-> ORDER BY avg_cup_score DESC;
/*       farm       | analyses_count | avg_cup_score
------------------+----------------+---------------
 El Caney         |              3 |         90.00
 Monteverde       |              4 |         90.00
 El Tesoro        |              3 |         90.00
 Los Pinos        |              5 |         90.00
 Las Delicias     |              5 |         90.00
 La Cristalina    |              3 |         90.00
 Santa Clara      |              3 |         90.00
 La Unión         |              3 |         90.00
 El Arrayán       |              3 |         90.00
 El Paraíso       |              3 |         90.00
 El Refugio       |              3 |         90.00
 El Triunfo       |              4 |         90.00
 El Porvenir      |              3 |         90.00
 El Recuerdo      |              3 |         90.00
 Los Pinos        |              7 |         90.00
 El Mango         |              7 |         90.00
 Las Palmas       |              5 |         90.00
 El Higuerón      |              6 |         90.00
 Altamira         |              3 |         90.00
 El Tesoro        |              3 |         90.00
 La Cabaña        |              5 |         90.00
 El Triunfo       |              6 |         90.00
 El Higuerón      |              3 |         90.00
 La Selva         |              4 |         90.00
 La Cabaña        |              6 |         90.00
 La Floresta      |              6 |         90.00
 La Reserva       |              3 |         90.00
 El Arrayán       |              4 |         90.00*/