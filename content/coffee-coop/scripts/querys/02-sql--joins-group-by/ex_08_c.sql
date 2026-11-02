/*
Ejercicio 8.c - GROUP BY
Agrupa las entregas del 30 de septiembre de 2026
por punto de compra y calcula cantidad, peso total
y peso promedio de las entregas.
*/
coffee_coop_db=> SELECT
coffee_coop_db->     T2.point_name AS collection_point,
coffee_coop_db->     COUNT(T1.delivery_id) AS deliveries_count,
coffee_coop_db->     SUM(T1.gross_weight_kg) AS total_gross_kg,
coffee_coop_db->     ROUND(AVG(T1.gross_weight_kg), 2) AS avg_gross_kg
coffee_coop_db-> FROM buy.deliveries AS T1
coffee_coop_db-> INNER JOIN buy.collection_points AS T2
coffee_coop_db->     ON T1.collection_point_id = T2.collection_point_id
coffee_coop_db-> WHERE T1.delivered_at >= '2026-09-30 00:00:00'
coffee_coop_db->     AND T1.delivered_at < '2026-10-01 00:00:00'
coffee_coop_db-> GROUP BY T2.collection_point_id, T2.point_name
coffee_coop_db-> ORDER BY total_gross_kg DESC;
/*               collection_point               | deliveries_count | total_gross_kg | avg_gross_kg
----------------------------------------------+------------------+----------------+--------------
 Punto de Compra Algeciras 1                  |                5 |        1093.81 |       218.76
 Punto de Compra Coromoro 1                   |                5 |        1079.24 |       215.85
 Punto de Compra San Andrés De Tumaco 1       |                6 |        1014.27 |       169.05
 Punto de Compra Timbiquí 1                   |                3 |         983.44 |       327.81
 Punto de Compra La Tebaida 1                 |                5 |         943.63 |       188.73
 Punto de Compra El Banco 1                   |                5 |         915.06 |       183.01
 Punto de Compra Bochalema 1                  |                4 |         849.99 |       212.50
 Punto de Compra Manzanares 1                 |                3 |         847.38 |       282.46
 Punto de Compra Paratebueno 1                |                4 |         839.51 |       209.88
 Punto de Compra El Bagre 1                   |                3 |         828.06 |       276.02
 Punto de Compra Rionegro 1                   |                5 |         750.49 |       150.10
 Punto de Compra Valle De San Juan 1          |                4 |         747.91 |       186.98
 Punto de Compra Líbano 1                     |                4 |         728.73 |       182.18
 Punto de Compra Toribío 1                    |                4 |         725.33 |       181.33
 Punto de Compra Bosconia 1                   |                3 |         687.42 |       229.14
 Punto de Compra Tibaná 1                     |                4 |         684.65 |       171.16
 Punto de Compra Jambaló 1                    |                4 |         669.44 |       167.36
 Punto de Compra San Andrés De Tumaco 2       |                5 |         667.79 |       133.56
 Punto de Compra San Francisco 1              |                4 |         662.02 |       165.51
 Punto de Compra Fresno 1                     |                2 |         631.96 |       315.98
 Punto de Compra Pacho 1                      |                5 |         630.18 |       126.04
 Punto de Compra Acevedo 1                    |                3 |         627.09 |       209.03
 Punto de Compra El Tambo 1                   |                3 |         618.87 |       206.29
 Punto de Compra San José 1                   |                2 |         615.59 |       307.80
 Punto de Compra Ipiales 1                    |                5 |         612.86 |       122.57
 Punto de Compra Sopetrán 1                   |                3 |         605.73 |       201.91
 Punto de Compra Yondó 1                      |                2 |         601.18 |       300.59*/