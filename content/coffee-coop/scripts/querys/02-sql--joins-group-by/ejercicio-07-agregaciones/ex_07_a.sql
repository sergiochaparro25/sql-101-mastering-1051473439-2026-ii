/*
Ejercicio 7.a - Funciones de agregación
Calcula el total de entregas, peso bruto acumulado,
peso promedio y cantidad de fincas que entregaron café
el 30 de septiembre de 2026.
*/
coffee_coop_db=> SELECT
coffee_coop_db->     COUNT(*) AS total_deliveries,
coffee_coop_db->     SUM(T1.gross_weight_kg) AS total_gross_kg,
coffee_coop_db->     ROUND(AVG(T1.gross_weight_kg), 2) AS avg_gross_kg,
coffee_coop_db->     COUNT(DISTINCT T1.farm_id) AS farms_delivering
coffee_coop_db-> FROM buy.deliveries AS T1
coffee_coop_db-> WHERE T1.delivery_id LIKE '%20260930%';
/* total_deliveries | total_gross_kg | avg_gross_kg | farms_delivering
------------------+----------------+--------------+------------------
              300 |       52190.96 |       173.97 |              300
(1 fila)*/