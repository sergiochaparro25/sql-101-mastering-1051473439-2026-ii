-- Ejercicio 03 - Literal c
-- Certificaciones: consultar aquellas cuya prima
-- por kilogramo sea mayor o igual a 350 COP
coffee_coop_db=>
coffee_coop_db=> SELECT
coffee_coop_db->     T1.certification_name AS certification,
coffee_coop_db->     T1.issuing_body AS issuer,
coffee_coop_db->     T1.premium_per_kg AS premium_per_kg_cop
coffee_coop_db-> FROM farm.certifications AS T1
coffee_coop_db-> WHERE T1.premium_per_kg >= 350;
/* certification |              issuer               | premium_per_kg_cop
---------------+-----------------------------------+--------------------
 Fairtrade     | Fairtrade International           |             400.00
 Orgánico      | Ente certificador orgánico        |             800.00
 Nespresso AAA | Nespresso / Rainforest Alliance   |             350.00
 Bird Friendly | Smithsonian Migratory Bird Center |             500.00
(4 filas)
*/