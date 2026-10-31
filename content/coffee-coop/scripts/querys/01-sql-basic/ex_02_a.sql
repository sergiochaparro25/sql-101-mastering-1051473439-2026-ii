-- Ejercicio 02 - Literal a
-- Variedades de café: consultar las variedades
-- resistentes a la roya

coffee_coop_db=> SELECT
coffee_coop_db->     T1.variety_name AS variety,
coffee_coop_db->     T1.species AS species,
coffee_coop_db->     T1.description AS description
coffee_coop_db-> FROM farm.coffee_varieties AS T1
coffee_coop_db-> WHERE T1.is_rust_resistant = TRUE;
/*  variety   | species |                             description
------------+---------+---------------------------------------------------------------------
 Castillo   | arabica | Variedad colombiana resistente a la roya, la más sembrada del país.
 Colombia   | arabica | Variedad compuesta resistente a la roya, antecesora de Castillo.
 Cenicafé 1 | arabica | Variedad de porte bajo con resistencia a la roya.
 Tabi       | arabica | Variedad de porte alto resistente a la roya.
 Robusta    | robusta | Especie Coffea canephora, de mayor contenido de cafeína.
(5 filas)*/