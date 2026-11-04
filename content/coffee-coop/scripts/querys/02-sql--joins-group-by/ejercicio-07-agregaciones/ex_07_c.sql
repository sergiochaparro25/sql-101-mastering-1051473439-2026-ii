
/*
Ejercicio 7.c - Funciones de agregación
Cuenta el total de asociados del municipio 54518
y cuántos tienen correo electrónico registrado.
*/
coffee_coop_db=> SELECT
coffee_coop_db->     COUNT(*) AS total_farmers,
coffee_coop_db->     COUNT(T1.email) AS farmers_with_email
coffee_coop_db-> FROM farm.farmers AS T1
coffee_coop_db-> WHERE T1.municipality_code = '54518';
/* total_farmers | farmers_with_email
---------------+--------------------
           230 |                165
(1 fila)*/