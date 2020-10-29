SHOW DATABASES;

USE tienda;

SHOW TABLES;

SELECT AVG(salario) FROM puesto;

SELECT COUNT(*) FROM articulo WHERE nombre LIKE '%pasta%';

SELECT MIN(salario) AS Salario_Minimo, MAX(salario) AS Salario_Maximo FROM puesto;

SELECT SUM(T.salario) FROM (SELECT salario FROM puesto ORDER BY id_puesto DESC LIMIT 5) AS T;
