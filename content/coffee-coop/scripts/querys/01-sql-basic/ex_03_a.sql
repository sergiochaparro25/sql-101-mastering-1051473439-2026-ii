-- Ejercicio 03 - Literal a
-- Certificaciones: consultar nombre, organismo emisor
-- y prima por kilogramo, ordenadas de mayor a menor
coffee_coop_db=>
coffee_coop_db=> SELECT
coffee_coop_db->     T1.certification_name AS certification,
coffee_coop_db->     T1.issuing_body AS issuer,
coffee_coop_db->     T1.premium_per_kg AS premium_per_kg_cop
coffee_coop_db-> FROM farm.certifications AS T1
coffee_coop_db-> ORDER BY T1.premium_per_kg DESC;
/*    certification    |              issuer               | premium_per_kg_cop
---------------------+-----------------------------------+--------------------
 Orgánico            | Ente certificador orgánico        |             800.00
 Bird Friendly       | Smithsonian Migratory Bird Center |             500.00
 Fairtrade           | Fairtrade International           |             400.00
 Nespresso AAA       | Nespresso / Rainforest Alliance   |             350.00
 Rainforest Alliance | Rainforest Alliance               |             300.00
 C.A.F.E. Practices  | Starbucks / SCS Global Services   |             250.00
 4C                  | 4C Services                       |             150.00
(7 filas)
*/