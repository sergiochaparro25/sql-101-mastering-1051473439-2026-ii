-- Ejercicio 06 - Literal b
-- Consultar los asociados de Pamplona que no tienen
-- correo electronico registrado
coffee_coop_db=> SELECT
coffee_coop_db->     T1.document_number AS document,
coffee_coop_db->     T1.first_name AS first_name,
coffee_coop_db->     T1.last_name AS last_name,
coffee_coop_db->     T1.email AS email
coffee_coop_db-> FROM farm.farmers AS T1
coffee_coop_db-> WHERE T1.municipality_code = '54518'
coffee_coop_db-> AND T1.email IS NULL
coffee_coop_db-> ORDER BY T1.last_name ASC;
  document  |    first_name    |     last_name      | email
------------+------------------+--------------------+-------
 768461420  | Marleny          | Agudelo Sandoval   |
 939635303  | Marleny          | Álvarez Correa     |
 302223305  | Camilo           | Arias Mora         |
 550696749  | Viviana          | Arias Ramírez      |
 797017145  | Isabella         | Barrera Cabrera    |
 483692716  | Ramiro           | Barrera Villamizar |
 718906996  | Nelson           | Bedoya Vélez       |
 21358854   | Manuela Yolanda  | Benavides Delgado  |
 737383707  | Yesenia          | Bermúdez Henao     |
 1015411133 | Santiago         | Bermúdez Ruiz      |
 141613744  | Édgar            | Burbano Arango     |
 549054771  | María            | Burbano Duarte     |
 716388403  | Emilio           | Carrillo Perdomo   |
 1001674689 | Jaime Santiago   | Cuéllar Cáceres    |
 749444168  | Emilio           | Delgado Molina     |
 1117597835 | Cecilia Lorena   | Díaz García        |
 932437698  | Amparo           | Duarte Duque       |
 846209158  | Daniel Héctor    | Duque Ruiz         |
 622024549  | Viviana          | González Molina    |
 35147265   | Carlos           | Gutiérrez Pabón    |
 343256743  | Dora             | Hernández Correa   |
 525766302  | Gustavo          | Ibarra Agudelo     |
 1185523747 | Elsa             | Ibarra Molina      |
 1148351420 | Inés             | Jiménez Jaimes     |
 860920785  | Hugo             | Jiménez Parra      |
 232229735  | Libardo          | Lasso Serrano      |
 712758473  | Wilson           | López Villamizar   |
 754524782  | Diana            | Lozano Rincón      |
 131166207  | Jaime            | Marín Hernández    |
 727945493  | Gloria           | Marín Rivera       |
 102695503  | Sofía            | Marín Rojas        |
 1171130241 | Elsa             | Mejía Vera         |
 554620706  | Nelson Samuel    | Mejía Vera         |
 824422301  | Hernando         | Montoya Agudelo    |
 283636187  | Gustavo          | Moreno López       |
 963176673  | Luis             | Mosquera Perdomo   |
 1053774538 | Isabella         | Mosquera Sandoval  |
 160538872  | Liliana          | Mosquera Uribe     |
 723123018  | Diego            | Niño Hernández     |
 641839251  | Efraín           | Ortega Correa      |
 1177165427 | Juliana          | Ortega Osorio      |
 361839624  | Rocío Alba       | Ortega Serrano     |
 59388780   | Juan             | Ortega Zapata      |
 1189704117 | Mariana          | Ortiz Ruiz         |
 914235490  | Óscar            | Ospina González    |
 966970818  | Gustavo          | Parra Ortiz        |
 1135293825 | Abelardo         | Pérez Castro       |
 549847293  | Wilmer           | Pérez Chamorro     |
 599185252  | Efraín           | Pinzón Cabrera     |
 914044314  | Ancízar Cristian | Polanía Delgado    |
 33787285   | Rubén            | Ramos Chamorro     |
 273193028  | Erika            | Ríos Suárez        |
 1090968710 | Ruth             | Rodríguez Pérez    |
 548464915  | Yuliana          | Rodríguez Vargas   |
 446019320  | Fernando         | Rojas Cárdenas     |
 24999630   | Esperanza        | Romero Betancur    |
 940051048  | David Germán     | Romero Bonilla     |
 922724022  | Esteban          | Salazar Parra      |
 1079700992 | Camila           | Sánchez Pinzón     |
 610678466  | Nicolás          | Sánchez Rodríguez  |
 938685616  | Sandra           | Sandoval Ortega    |
 449792023  | Myriam           | Sandoval Osorio    |
 403413565  | Reinaldo         | Suárez Polanía     |
 712500733  | Esperanza        | Valencia Ortiz     |
 796884051  | Yuliana          | Zapata Parra       |
(65 filas)