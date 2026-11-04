/*
Ejercicio 9.b - HAVING
Consulta los puntos de compra que recibieron más de
1000 kg de café el 30 de septiembre de 2026.
*/
coffee_coop_db=> SELECT
coffee_coop_db->     T2.point_name AS collection_point,
coffee_coop_db->     SUM(T1.gross_weight_kg) AS total_gross_kg
coffee_coop_db-> FROM buy.deliveries AS T1
coffee_coop_db-> INNER JOIN buy.collection_points AS T2
coffee_coop_db->     ON T1.collection_point_id = T2.collection_point_id
coffee_coop_db-> WHERE T1.delivered_at >= '2026-09-30 00:00:00'
coffee_coop_db->     AND T1.delivered_at < '2026-10-01 00:00:00'
coffee_coop_db-> GROUP BY T2.collection_point_id, T2.point_name
coffee_coop_db-> HAVING SUM(T1.gross_weight_kg) > 1000
coffee_coop_db-> ORDER BY total_gross_kg DESC;
/*            collection_point            | total_gross_kg
----------------------------------------+----------------
 Punto de Compra Algeciras 1            |        1093.81
 Punto de Compra Coromoro 1             |        1079.24
 Punto de Compra San Andrés De Tumaco 1 |        1014.27
(3 filas)*/