-- Ejercicio 01 - b
-- Consultar los 10 asociados más antiguos del municipio 54518,
-- calculando su antigüedad en años, meses y días al 30 de septiembre de 2026.
coffee_coop_db=> SELECT
coffee_coop_db->     T1.document_number AS document,
coffee_coop_db->     T1.first_name AS first_name,
coffee_coop_db->     T1.last_name AS last_name,
coffee_coop_db->     AGE(DATE '2026-09-30', T1.membership_date) AS membership_age,
coffee_coop_db->     DATE_PART('year', AGE(DATE '2026-09-30', T1.membership_date)) AS membership_years
coffee_coop_db-> FROM farm.farmers AS T1
coffee_coop_db-> WHERE T1.municipality_code = '54518'
coffee_coop_db-> ORDER BY T1.membership_date ASC
coffee_coop_db-> LIMIT 10;
/*  document  |    first_name    |     last_name      |     membership_age      | membership_years
------------+------------------+--------------------+-------------------------+------------------
 402745033  | Juli�n Guillermo | Valencia Narv�ez   | 31 years 8 mons 3 days  |               31
 361839624  | Roc�o Alba       | Ortega Serrano     | 31 years 2 mons 20 days |               31
 546579335  | Wilson           | Parra Prada        | 31 years 2 mons 2 days  |               31
 939635303  | Marleny          | �lvarez Correa     | 30 years 6 mons 10 days |               30
 748380481  | Teresa Adriana   | Valencia Moreno    | 30 years 2 mons 7 days  |               30
 1012324420 | Martha Carolina  | P�rez Jaimes       | 29 years 10 mons 8 days |               29
 230971064  | Manuel           | Agudelo Jim�nez    | 29 years 6 mons 1 day   |               29
 483692716  | Ramiro           | Barrera Villamizar | 29 years 5 mons 22 days |               29
 677772599  | Guillermo        | P�rez P�rez        | 29 years 4 mons 13 days |               29
 59388780   | Juan             | Ortega Zapata      | 29 years 2 mons 17 days |               29
(10 filas)*/