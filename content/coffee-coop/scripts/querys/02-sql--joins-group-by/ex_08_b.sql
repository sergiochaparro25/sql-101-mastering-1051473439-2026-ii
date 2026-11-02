/*
Ejercicio 8.b - GROUP BY
Agrupa las entregas del 30 de septiembre de 2026
por tipo de café y calcula su cantidad y peso total.
*/

coffee_coop_db=> SELECT
coffee_coop_db->     T1.coffee_type AS coffee_type,
coffee_coop_db->     COUNT(*) AS deliveries_count,
coffee_coop_db->     SUM(T1.gross_weight_kg) AS total_gross_kg
coffee_coop_db-> FROM buy.deliveries AS T1
coffee_coop_db-> WHERE T1.delivered_at >= '2026-09-30 00:00:00'
coffee_coop_db->     AND T1.delivered_at < '2026-10-01 00:00:00'
coffee_coop_db-> GROUP BY T1.coffee_type
coffee_coop_db-> ORDER BY total_gross_kg DESC;
/*  coffee_type  | deliveries_count | total_gross_kg
---------------+------------------+----------------
 dry_parchment |              278 |       48246.55
 cherry        |               10 |        2053.16
 wet_parchment |               12 |        1891.25
(3 filas)*/