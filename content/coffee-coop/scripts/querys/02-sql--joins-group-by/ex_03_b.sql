/*
Ejercicio 3.b - RIGHT JOIN
Consulta los puntos de compra que no recibieron entregas
el 30 de septiembre de 2026.
*/
coffee_coop_db=> SELECT
coffee_coop_db->     T2.point_name AS collection_point,
coffee_coop_db->     T1.delivery_id AS delivery,
coffee_coop_db->     T1.gross_weight_kg AS gross_weight_kg
coffee_coop_db-> FROM buy.deliveries AS T1
coffee_coop_db-> RIGHT JOIN buy.collection_points AS T2
coffee_coop_db->     ON T1.collection_point_id = T2.collection_point_id
coffee_coop_db->     AND T1.delivery_id LIKE '%20260930%'
coffee_coop_db-> WHERE T1.delivery_id IS NULL
coffee_coop_db-> ORDER BY T2.point_name ASC;
/*           collection_point           | delivery | gross_weight_kg
--------------------------------------+----------+-----------------
 Punto de Compra Aipe 1               |          |
 Punto de Compra Aipe 2               |          |
 Punto de Compra Andalucía 1          |          |
 Punto de Compra Apía 1               |          |
 Punto de Compra Armero Guayabal 1    |          |
 Punto de Compra Belmira 1            |          |
 Punto de Compra Caldono 1            |          |
 Punto de Compra Caloto 1             |          |
 Punto de Compra Carmen De Apicalá 2  |          |
 Punto de Compra Chinácota 1          |          |
 Punto de Compra Circasia 1           |          |
 Punto de Compra El Tambo 2           |          |
 Punto de Compra Guatapé 1            |          |
 Punto de Compra Guática 2            |          |
 Punto de Compra Herrán 1             |          |
 Punto de Compra Hobo 1               |          |
 Punto de Compra Icononzo 1           |          |
 Punto de Compra La Argentina 1       |          |
 Punto de Compra La Gloria 1          |          |
 Punto de Compra Marulanda 1          |          |
 Punto de Compra Marulanda 2          |          |
 Punto de Compra Murillo 1            |          |
 Punto de Compra Pailitas 1           |          |
 Punto de Compra Pelaya 2             |          |
 Punto de Compra Policarpa 1          |          |
 Punto de Compra Quinchía 1           |          |
 Punto de Compra Rioblanco 1          |          |*/