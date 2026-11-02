
/*
Ejercicio 10.a - Integrador
Consulta la cantidad de liquidaciones y el valor neto total
por asociado durante septiembre de 2026.
*/
coffee_coop_db=> SELECT
coffee_coop_db->     T4.document_number AS document,
coffee_coop_db->     T4.first_name AS first_name,
coffee_coop_db->     T4.last_name AS last_name,
coffee_coop_db->     COUNT(T1.settlement_id) AS settlements_count,
coffee_coop_db->     SUM(T1.net_amount) AS total_net_cop
coffee_coop_db-> FROM pay.settlements AS T1
coffee_coop_db-> INNER JOIN buy.deliveries AS T2
coffee_coop_db->     ON T1.delivery_id = T2.delivery_id
coffee_coop_db-> INNER JOIN farm.farms AS T3
coffee_coop_db->     ON T2.farm_id = T3.farm_id
coffee_coop_db-> INNER JOIN farm.farmers AS T4
coffee_coop_db->     ON T3.farmer_id = T4.farmer_id
coffee_coop_db-> WHERE T1.settled_at >= '2026-09-01 00:00:00'
coffee_coop_db->     AND T1.settled_at < '2026-10-01 00:00:00'
coffee_coop_db-> GROUP BY T4.farmer_id, T4.document_number,
coffee_coop_db->          T4.first_name, T4.last_name
coffee_coop_db-> ORDER BY total_net_cop DESC;
/*  document  |     first_name      |       last_name       | settlements_count | total_net_cop
------------+---------------------+-----------------------+-------------------+---------------
 30933664   | Cristian            | García Contreras      |                 3 |   15493357.77
 331235063  | Samuel Óscar        | Arias Jiménez         |                 3 |   14600417.40
 1071161211 | Alba                | Muñoz Ramírez         |                 2 |   14576631.94
 526195285  | Jairo               | Valencia Zapata       |                 2 |   14528146.87
 337551898  | Alejandro Mateo     | Flórez Uribe          |                 2 |   14460246.30
 854161034  | Luisa Martha        | Caicedo Romero        |                 1 |   13335230.83
 782091682  | Luisa               | Duque Torres          |                 2 |   12843595.73
 549378351  | Dora                | Galvis Ospina         |                 3 |   12821153.68
 182907696  | Jorge               | Duarte Zapata         |                 2 |   12777306.01
 1094861542 | Álvaro              | Serrano Caicedo       |                 2 |   12361790.74
 446732017  | Reinaldo            | Ruiz Cuéllar          |                 2 |   12310076.05
 628772920  | Aura                | Osorio Medina         |                 2 |   12133626.08
 860889225  | Wilmer              | Barrera Vera          |                 2 |   12078718.23
 610231611  | Orlando             | Peña Vera             |                 1 |   12005420.07
 329350370  | Rubén               | Quintero Chamorro     |                 3 |   11967062.39
 894974935  | Alejandro           | Niño Flórez           |                 2 |   11914996.69
 1105751836 | Antonio             | Moreno Rojas          |                 3 |   11712814.76
 967037103  | Natalia             | Correa Jaimes         |                 2 |   11531226.36
 695945885  | Carolina            | Correa Pinzón         |                 2 |   11381891.73
 420092042  | Samuel              | Caicedo Mora          |                 2 |   11204499.77
 481607426  | Julián              | Marín Sandoval        |                 1 |   11140800.03
 1119357624 | Yesenia Nubia       | Montoya Giraldo       |                 1 |   11114680.80
 355341230  | Mauricio            | López Rivera          |                 2 |   11091255.81
 372230229  | Sandra              | Rojas Calderón        |                 2 |   11080803.26
 917466527  | Guillermo Gustavo   | Delgado Acevedo       |                 1 |   11032091.12
 732259866  | Gustavo             | Marín Burbano         |                 1 |   10976260.61
 639041437  | Alberto             | Rincón Herrera        |                 1 |   10959451.38
*/