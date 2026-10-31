-- Ejercicio 9. BETWEEN y valores nulos - Análisis de calidad
-- Literal c)
-- Consulte los análisis rechazados del 30 de septiembre de 2026
-- que tengan observaciones registradas. Ordene por porcentaje
-- de defectos de mayor a menor.
coffee_coop_db=> SELECT
coffee_coop_db->     T1.analysis_id AS analysis,
coffee_coop_db->     T1.delivery_id AS delivery,
coffee_coop_db->     T1.moisture_pct AS moisture_pct,
coffee_coop_db->     T1.yield_factor AS yield_factor,
coffee_coop_db->     T1.defects_pct AS defects_pct,
coffee_coop_db->     T1.analyst_name AS analyst_name,
coffee_coop_db->     T1.observations AS observations
coffee_coop_db-> FROM buy.quality_analyses AS T1
coffee_coop_db-> WHERE T1.delivery_id LIKE 'DLV-20260930-%'
coffee_coop_db-> AND T1.is_accepted = FALSE
coffee_coop_db-> AND T1.observations IS NOT NULL
coffee_coop_db-> ORDER BY T1.defects_pct DESC;
/*      analysis      |      delivery       | moisture_pct | yield_factor | defects_pct |    analyst_name    |                observations
--------------------+---------------------+--------------+--------------+-------------+--------------------+---------------------------------------------
 QA-20260930-000104 | DLV-20260930-000214 |        17.68 |        97.46 |       19.54 | Carolina RodrÃ­guez | Olor a fermento en la muestra.
 QA-20260930-000068 | DLV-20260930-000165 |        16.13 |       100.22 |       17.29 | GermÃ¡n PeÃ±a        | Muestra tomada por duplicado.
 QA-20260930-000119 | DLV-20260930-000253 |         8.39 |       106.52 |       15.59 | AnÃ­bal PabÃ³n       | Exceso de impurezas y pasilla.
 QA-20260930-000086 | DLV-20260930-000147 |        15.20 |        96.57 |       13.21 | Erika Restrepo     | Olor a fermento en la muestra.
 QA-20260930-000113 | DLV-20260930-000223 |         9.57 |        99.70 |       12.94 | Reinaldo BermÃºdez  | CafÃ© sobresecado, grano quebradizo.
 QA-20260930-000022 | DLV-20260930-000070 |        12.95 |       103.55 |        9.75 | Santiago Rojas     | CafÃ© con humedad alta, requiere mÃ¡s secado.
 QA-20260930-000018 | DLV-20260930-000006 |        17.24 |       103.31 |        7.88 | NicolÃ¡s Serrano    | CafÃ© con humedad alta, requiere mÃ¡s secado.
(7 filas)
*/