/*
Ejercicio 2.c - LEFT JOIN
Consulta todas las entregas del 30 de septiembre de 2026,
incluyendo las que no tienen análisis de calidad.
*/
coffee_coop_db=> SELECT
coffee_coop_db->     T1.delivery_id AS delivery,
coffee_coop_db->     T2.analysis_id AS analysis,
coffee_coop_db->     T2.cup_score AS cup_score
coffee_coop_db-> FROM buy.deliveries AS T1
coffee_coop_db-> LEFT JOIN buy.quality_analyses AS T2
coffee_coop_db->     ON T1.delivery_id = T2.delivery_id
coffee_coop_db-> WHERE T1.delivery_id LIKE '%20260930%'
coffee_coop_db-> ORDER BY T1.delivery_id ASC;
/*      delivery       |      analysis      | cup_score
---------------------+--------------------+-----------
 DLV-20260930-000001 |                    |
 DLV-20260930-000002 |                    |
 DLV-20260930-000003 | QA-20260930-000001 |
 DLV-20260930-000004 | QA-20260930-000002 |
 DLV-20260930-000005 | QA-20260930-000026 |     78.56
 DLV-20260930-000006 | QA-20260930-000018 |     79.98
 DLV-20260930-000007 |                    |
 DLV-20260930-000008 | QA-20260930-000007 |
 DLV-20260930-000009 |                    |
 DLV-20260930-000010 | QA-20260930-000006 |
 DLV-20260930-000011 |                    |
 DLV-20260930-000012 | QA-20260930-000017 |
 DLV-20260930-000013 |                    |
 DLV-20260930-000014 |                    |
 DLV-20260930-000015 | QA-20260930-000009 |     82.93
 DLV-20260930-000016 |                    |
 DLV-20260930-000017 | QA-20260930-000037 |
 DLV-20260930-000018 |                    |
 DLV-20260930-000019 |                    |
 DLV-20260930-000020 | QA-20260930-000004 |
 DLV-20260930-000021 |                    |
 DLV-20260930-000022 |                    |
 DLV-20260930-000023 | QA-20260930-000038 |
 DLV-20260930-000024 | QA-20260930-000046 |     84.81
 DLV-20260930-000025 | QA-20260930-000042 |     81.74
 DLV-20260930-000026 | QA-20260930-000024 |
 DLV-20260930-000027 | QA-20260930-000033 |*/