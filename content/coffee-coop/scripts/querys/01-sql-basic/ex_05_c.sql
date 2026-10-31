-- Ejercicio 05 - Literal c
-- Consultar puntos de compra inactivos o sin telefono
coffee_coop_db=> SELECT
coffee_coop_db->     T1.point_name AS point,
coffee_coop_db->     T1.address_line AS address,
coffee_coop_db->     T1.phone_number AS phone_number,
coffee_coop_db->     T1.is_active AS is_active
coffee_coop_db-> FROM buy.collection_points AS T1
coffee_coop_db-> WHERE T1.is_active = FALSE
coffee_coop_db-> OR T1.phone_number IS NULL
coffee_coop_db-> ORDER BY T1.point_name ASC;
             point              |        address         | phone_number | is_active
--------------------------------+------------------------+--------------+-----------
 Punto de Compra Aipe 1         | Carrera 13 # 17-16     |              | t
 Punto de Compra Anserma 1      | Calle 39 # 7-96        |              | t
 Punto de Compra Apía 2         | Calle 9 # 14-56        |              | f
 Punto de Compra Baraya 1       | Calle 1 # 19-77        |              | t
 Punto de Compra Bochalema 1    | Carrera 25 # 47-89     |              | t
 Punto de Compra Bosconia 1     | Carrera 26 # 26-43     |              | t
 Punto de Compra Cajibío 1      | Carrera 15 # 32-45     |              | t
 Punto de Compra Cisneros 1     | Calle 37 # 10-5        |              | t
 Punto de Compra Coello 1       | Transversal 20 # 49-66 |              | t
 Punto de Compra El Banco 1     | Calle 17 # 34-54       | 6055026534   | f
 Punto de Compra El Carmen 2    | Calle 3 # 34-88        |              | t
 Punto de Compra El Tambo 2     | Calle 16 # 56-53       |              | t
 Punto de Compra Flandes 1      | Carrera 38 # 40-79     |              | t
 Punto de Compra Hatonuevo 1    | Calle 7 # 16-89        |              | t
 Punto de Compra Icononzo 1     | Calle 19 # 35-13       |              | t
 Punto de Compra Isnos 1        | Calle 12 # 33-28       |              | t
 Punto de Compra La Argentina 1 | Calle 37 # 58-65       |              | t
 Punto de Compra La Gloria 1    | Transversal 38 # 7-85  |              | t
 Punto de Compra Marsella 1     | Transversal 19 # 42-92 |              | t
 Punto de Compra Nátaga 1       | Diagonal 30 # 7-59     | 6082388547   | f
 Punto de Compra Paicol 2       | Calle 2 # 30-84        | 6071743803   | f
 Punto de Compra Pelaya 1       | Avenida 19 # 26-92     |              | t
 Punto de Compra Popayán 1      | Carrera 21 # 4-95      | 6057341141   | f
 Punto de Compra Puracé 1       | Calle 16 # 50-5        |              | t
 Punto de Compra Rionegro 1     | Carrera 31 # 59-80     | 6037017611   | f
 Punto de Compra San Lorenzo 1  | Calle 29 # 54-48       |              | t
 Punto de Compra Tello 1        | Calle 8 # 13-23        | 6037843794   | f
 Punto de Compra Tesalia 1      | Transversal 15 # 23-61 |              | t
 Punto de Compra Timbiquí 1     | Transversal 34 # 19-91 |              | t
 Punto de Compra Turbo 1        | Avenida 32 # 34-61     | 6075864511   | f
 Punto de Compra Turbo 2        | Calle 36 # 12-19       |              | t
 Punto de Compra Ulloa 1        | Calle 15 # 3-50        | 6061856687   | f
 Punto de Compra Venecia 1      | Avenida 5 # 9-43       |              | t
 Punto de Compra Villa Rica 1   | Diagonal 6 # 8-43      |              | t
(34 filas)