-- Ejercicio 02 - Literal b
-- Variedades de café: consultar las variedades
-- no resistentes a la roya de la especie arabica
-- ordenadas por nombre descendente
coffee_coop_db=> SELECT
coffee_coop_db->     T1.variety_name AS variety,
coffee_coop_db->     T1.species AS species,
coffee_coop_db->     T1.description AS description
coffee_coop_db-> FROM farm.coffee_varieties AS T1
coffee_coop_db-> WHERE T1.is_rust_resistant = FALSE
coffee_coop_db-> AND T1.species = 'arabica'
coffee_coop_db-> ORDER BY T1.variety_name DESC;
    variety    | species |                      description
---------------+---------+--------------------------------------------------------
 Típica        | arabica | Variedad tradicional de porte alto.
 Pacamara      | arabica | Cruce de Pacas y Maragogipe, grano grande.
 Maragogipe    | arabica | Variedad de grano grande.
 Geisha        | arabica | Variedad de especialidad con perfil floral.
 Caturra       | arabica | Mutación de Borbón de porte bajo y alta productividad.
 Borbón Rosado | arabica | Variedad de especialidad de fruto rosado.
 Borbón        | arabica | Variedad tradicional de buena calidad en taza.
(7 filas)